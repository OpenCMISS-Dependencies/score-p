/****************************************************************************
**  CUBE        http://www.scalasca.org/                                   **
*****************************************************************************
**  Copyright (c) 1998-2016                                                **
**  Forschungszentrum Juelich GmbH, Juelich Supercomputing Centre          **
**                                                                         **
**  Copyright (c) 2009-2015                                                **
**  German Research School for Simulation Sciences GmbH,                   **
**  Laboratory for Parallel Programming                                    **
**                                                                         **
**  This software may be modified and distributed under the terms of       **
**  a BSD-style license.  See the COPYING file in the package base         **
**  directory for details.                                                 **
****************************************************************************/



/**
 * \file CubePreDerivedExclusiveMetric.cpp
 * \brief Defines methods to calculate incl/exclusve values if the metric is defined as an expression. Expression gets calculated first, then the value gets aggregated.

 ********************************************/


#include <iostream>
#include "CubeTypes.h"
#include "CubeSysres.h"
#include "CubeLocation.h"
#include "CubeLocationGroup.h"
#include "CubeSystemTreeNode.h"
#include "CubePreDerivedExclusiveMetric.h"
#include "CubeServices.h"

using namespace std;
using namespace cube;


PreDerivedExclusiveMetric::~PreDerivedExclusiveMetric()
{
}


void
PreDerivedExclusiveMetric::initialize( void )
{
    if ( evaluation != NULL )
    {
        evaluation->setRowSize( ntid );
    }
    if ( init_evaluation != NULL )
    {
        init_evaluation->setRowSize( ntid );
        init_evaluation->eval();
        delete init_evaluation;
        init_evaluation = NULL;
    }
}


double
PreDerivedExclusiveMetric::get_sev( Cnode* cnode, CalculationFlavour cnf, Sysres* sys, CalculationFlavour sf )
{
    if ( !active )   //  if value == VOID
    {
        return 0.;
    }

    Value* cached_value = cache->getCachedValue( cnode, cnf, sys, sf );
    if ( cached_value != NULL )
    {
        double _d = cached_value->getDouble();
        delete cached_value;
        return _d;
    }

    pre_calculation_preparation( cnode, sys );


    double v =  0.;

    if ( evaluation != NULL )
    {
        if ( ( sys->isSystemTreeNode() || sys->isLocationGroup() ) && sf == cube::CUBE_CALCULATE_EXCLUSIVE )
        {
            post_calculation_cleanup();
            return v;
        }
        if ( sys->isSystemTreeNode() )
        {
            SystemTreeNode* _sys = ( SystemTreeNode* )sys;
            // first add values of all sub system nodes
            for ( unsigned i = 0; i < _sys->num_children(); ++i )
            {
                double _v = get_sev( cnode, cnf, _sys->get_child( i ), cube::CUBE_CALCULATE_INCLUSIVE );
                ( v ) += _v;
            }
            // then add all values of all sub local groups
            for ( unsigned i = 0; i < _sys->num_groups(); ++i )
            {
                double _v = get_sev( cnode, cnf, _sys->get_location_group( i ), cube::CUBE_CALCULATE_INCLUSIVE );
                ( v ) += _v;
            }
        }
        if ( sys->isLocationGroup() )
        {
            LocationGroup* _lg = ( LocationGroup* )sys;
            // first add values of all locations
            for ( unsigned i = 0; i < _lg->num_children(); ++i )
            {
                double _v = get_sev( cnode, cnf, _lg->get_child( i ), cube::CUBE_CALCULATE_INCLUSIVE );
                ( v ) += _v;
            }
        }
        if ( sys->isLocation() )
        {
            Location* _loc   = ( Location* )sys;
            double    _value = evaluation->eval( cnode, CUBE_CALCULATE_EXCLUSIVE, _loc, sf );
            v = _value;
            for ( cnode_id_t cid = 0; cid < cnode->num_children(); ++cid )
            {
                if ( cnode->get_child( cid )->isHidden() ) // ad as well inclusive value of hidden cnodes
                {
                    double _v = get_sev(  cnode->get_child( cid ), CUBE_CALCULATE_INCLUSIVE, _loc, cube::CUBE_CALCULATE_INCLUSIVE   );
                    ( v ) += _v;
                }
            }
            if ( cnf == CUBE_CALCULATE_INCLUSIVE )
            {
                for ( cnode_id_t cid = 0; cid < cnode->num_children(); ++cid )
                {
                    if ( cnode->get_child( cid )->isVisible() ) // add only visible children, coz the hidden have been added in excl value
                    {
                        double _v = get_sev( cnode->get_child( cid ), CUBE_CALCULATE_INCLUSIVE, _loc, cube::CUBE_CALCULATE_INCLUSIVE   );
                        ( v ) += _v;
                    }
                }
            }
        }
    }
    Value* _v =  metric_value->clone();
    ( *_v ) = v;
    cache->setCachedValue( _v, cnode, cnf, sys, sf );
    delete _v;
    post_calculation_cleanup();
    return v;
}



// inclusive value and exclusive value in this metric are same
Value*
PreDerivedExclusiveMetric::get_sev_adv( Cnode* cnode, CalculationFlavour cnf, Sysres* sys, CalculationFlavour sf )
{
    Value* _v =  metric_value->clone();
    ( *_v ) = get_sev( cnode, cnf, sys, sf );
    return _v;
}



double
PreDerivedExclusiveMetric::get_sev( Cnode* cnode, CalculationFlavour cnf )
{
    if ( !active )   //  if value == VOID
    {
        return 0.;
    }
    pre_calculation_preparation( cnode );

    Value* cached_value = cache->getCachedValue( cnode, cnf );
    if ( cached_value != NULL )
    {
        double _d = cached_value->getDouble();
        delete cached_value;
        post_calculation_cleanup();
        return _d;
    }

    double v = 0.;
    for ( std::vector<Location*>::iterator iter = sysv.begin(); iter != sysv.end(); ++iter )
    {
        Location* _loc = *iter;
        pre_calculation_preparation( cnode, _loc );
        double _value = evaluation->eval( cnode, CUBE_CALCULATE_EXCLUSIVE, _loc, CUBE_CALCULATE_EXCLUSIVE );
        ( v ) += _value;
        post_calculation_cleanup();
    }

    for ( cnode_id_t cid = 0; cid < cnode->num_children(); ++cid )
    {
        if ( cnode->get_child( cid )->isHidden() ) // ad as well inclusive value of hidden cnodes
        {
            double _v = get_sev(  cnode->get_child( cid ), CUBE_CALCULATE_INCLUSIVE );
            ( v ) += _v;
        }
    }
    if ( cnf == CUBE_CALCULATE_INCLUSIVE )
    {
        for ( cnode_id_t cid = 0; cid < cnode->num_children(); ++cid )
        {
            if ( cnode->get_child( cid )->isVisible() ) // add only visible children, coz the hidden have been added in excl value
            {
                double _v = get_sev(  cnode->get_child( cid ), CUBE_CALCULATE_INCLUSIVE );
                ( v ) += _v;
            }
        }
    }


    Value* _v =  metric_value->clone();
    ( *_v ) = v;
    cache->setCachedValue( _v, cnode, cnf );
    delete _v;
    post_calculation_cleanup();
    return v;
}




Value*
PreDerivedExclusiveMetric::get_sev_adv( Cnode* cnode, CalculationFlavour cnf )
{
    Value* _v =  metric_value->clone();
    ( *_v ) = get_sev( cnode, cnf );
    return _v;
}





double*
PreDerivedExclusiveMetric::get_sevs( Cnode*             cnode,
                                     CalculationFlavour cfv
                                     )
{
    if ( !active )   //  if value == VOID
    {
        return NULL;
    }

    if ( evaluation == NULL )
    {
        return NULL;
    }
    pre_calculation_preparation( cnode );

//     Value* cached_value = cache->getCachedValue( cnode, cnf );
//     if ( cached_value != NULL )
//     {
//         double _d = cached_value->getDouble();
//         delete cached_value;
//         return _d;
//     }



    double* to_return = evaluation->eval_row( cnode, CUBE_CALCULATE_EXCLUSIVE );

    for ( cnode_id_t cid = 0; cid < cnode->num_children(); ++cid )
    {
        if ( cnode->get_child( cid )->isHidden() ) // ad as well inclusive value of hidden cnodes
        {
            double* _v = get_sevs(  cnode->get_child( cid ), CUBE_CALCULATE_INCLUSIVE );
            if ( _v == NULL )
            {
                continue;
            }
            if ( to_return == NULL )
            {
                to_return = services::create_row_of_doubles( ntid );
            }

            for ( unsigned i = 0; i < ntid; ++i )
            {
                ( to_return[ i ] ) += _v[ i ];
            }
            services::delete_raw_row( _v );
        }
    }
    if ( cfv == CUBE_CALCULATE_INCLUSIVE )
    {
        for ( cnode_id_t cid = 0; cid < cnode->num_children(); ++cid )
        {
            if ( cnode->get_child( cid )->isVisible() ) // add only visible children, coz the hidden have been added in excl value
            {
                double* _v = get_sevs(  cnode->get_child( cid ), CUBE_CALCULATE_INCLUSIVE );
                if ( _v == NULL )
                {
                    continue;
                }
                if ( to_return == NULL )
                {
                    to_return = services::create_row_of_doubles( ntid );
                }
                for ( unsigned i = 0; i < ntid; ++i )
                {
                    ( to_return[ i ] ) += _v[ i ];
                }
                services::delete_raw_row( _v );
            }
        }
    }


    post_calculation_cleanup();
    return to_return;
}



Value**
PreDerivedExclusiveMetric::get_sevs_adv( Cnode*             cnode,
                                         CalculationFlavour cfv
                                         )
{
    double* _v         = ( double* )get_sevs( cnode, cfv );
    Value** _to_return = NULL;
    if ( _v != NULL )
    {
        _to_return = services::transform_doubles_to_values( _v, metric_value, ntid );
    }
    services::delete_raw_row( _v );
    return _to_return;
}

char*
PreDerivedExclusiveMetric::get_sevs_raw( Cnode*             cnode,
                                         CalculationFlavour cfv
                                         )
{
    double* _d_row = get_sevs( cnode, cfv );
    char*   _row   = NULL;
    switch ( get_data_type() )
    {
        case CUBE_DATA_TYPE_UINT8:
            _row = ( char* )( services::transform_doubles_to_t<uint8_t>( _d_row, ntid ) );
            break;
        case CUBE_DATA_TYPE_INT8:
            _row = ( char* )( services::transform_doubles_to_t<int8_t>( _d_row, ntid ) );
            break;
        case CUBE_DATA_TYPE_UINT16:
            _row = ( char* )( services::transform_doubles_to_t<uint16_t>( _d_row, ntid ) );
            break;
        case CUBE_DATA_TYPE_INT16:
            _row = ( char* )( services::transform_doubles_to_t<int16_t>( _d_row, ntid ) );
            break;
        case CUBE_DATA_TYPE_UINT32:
            _row = ( char* )( services::transform_doubles_to_t<uint32_t>( _d_row, ntid ) );
            break;
        case CUBE_DATA_TYPE_INT32:
            _row = ( char* )( services::transform_doubles_to_t<int32_t>( _d_row, ntid ) );
            break;
        case CUBE_DATA_TYPE_UINT64:
            _row = ( char* )( services::transform_doubles_to_t<uint64_t>( _d_row, ntid ) );
            break;
        case CUBE_DATA_TYPE_INT64:
            _row = ( char* )( services::transform_doubles_to_t<int64_t>( _d_row, ntid ) );
            break;
        case CUBE_DATA_TYPE_DOUBLE:
        default:
            _row = ( char* )( services::transform_doubles_to_t<double>( _d_row, ntid ) );
            break;
    }
    services::delete_raw_row( _d_row );
    return _row;
}
