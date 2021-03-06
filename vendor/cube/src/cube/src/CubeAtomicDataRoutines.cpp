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
 * \file Cube.cpp
 * \brief Defines methods of the class cube and IO-interface.
 *
 */

// PGI compiler replaces all ofstream.open() calls by open64 and then cannot find a propper one. Result -> compilation error
#if !defined( __PGI ) && !defined( __CRAYXT )  && !defined( __CRAYXE )
#define _FILE_OFFSET_BITS 64
#endif

#include "CubeTypes.h"
#include "CubeSysres.h"
#include "CubeValue.h"
#include "CubeMetric.h"
#include "CubeError.h"
#include "Cube.h"


using namespace std;
using namespace cube;






void
Cube::set_sev( Metric* met, Cnode* cnode, Thread* thrd,
               Value* val )
{
    if ( ( val == NULL ) || ( enforce_saving == CUBE_IGNORE_ZERO  && val->isZero() ) )
    {
        return;
    }

    if ( met != NULL )
    {
        met->set_adv_sev_adv( cnode, thrd, val );
    }

    met->invalidateCachedValue( cnode, CUBE_CALCULATE_INCLUSIVE );
    met->invalidateCachedValue( cnode, CUBE_CALCULATE_EXCLUSIVE );
}



void
Cube::set_sev( Metric* met, Cnode* cnode, Thread* thrd,
               double value )
{
    if ( enforce_saving == CUBE_IGNORE_ZERO && value == 0. )
    {
        return;
    }

    if ( met != NULL )
    {
        met->set_adv_sev( cnode, thrd, value );
    }
}

void
Cube::set_sev( Metric* met, Region* region, Thread* thrd,
               double value )

{
    if ( enforce_saving == CUBE_IGNORE_ZERO && value == 0. )
    {
        return;
    }

    Cnode* v_cnode = NULL;

    for ( unsigned int i = 0; i < cnodev.size(); i++ )
    {
        const Region* tmp = cnodev[ i ]->get_callee();
        if ( tmp == region )
        {
            v_cnode = cnodev[ i ];
            set_sev( met, v_cnode, thrd, value );
        }
    }
    if ( v_cnode == NULL )
    {
        cerr << " REGION MUST BE DEFINED BEFORE ONE SAVES ANY VALUES" << endl;
        return;                                                                                            // NO ACTION; IF REGION IS NOT DECLARES
    }


}


void
Cube::set_sev( Metric* met, Region* region, Thread* thrd,
               Value* value )
{
    if (  ( value == NULL ) || ( enforce_saving == CUBE_IGNORE_ZERO  && value->isZero() ) )
    {
        return;
    }

    Cnode* v_cnode = NULL;

    for ( unsigned int i = 0; i < cnodev.size(); i++ )
    {
        const Region* tmp = cnodev[ i ]->get_callee();
        if ( tmp == region )
        {
            v_cnode = cnodev[ i ];
            set_sev( met, v_cnode, thrd, value );
        }
    }
    if ( v_cnode == NULL )
    {
        cerr << " REGION MUST BE DEFINED BEFORE ONE SAVES ANY VALUES" << endl;
        return;                                                                                            // NO ACTION; IF REGION IS NOT DECLARES
    }
}


void
Cube::add_sev( Metric* met, Cnode*  cnode, Thread* thrd, double incr )
{
    Cnode* _parent = NULL;
    if ( met->get_type_of_metric() == CUBE_METRIC_INCLUSIVE )
    {
        _parent = cnode->get_parent();
    }
    cube::CalculationFlavour calc_flavor = ( met->get_type_of_metric() == CUBE_METRIC_INCLUSIVE )
                                           ? cube::CUBE_CALCULATE_INCLUSIVE : cube::CUBE_CALCULATE_EXCLUSIVE;
    double val = get_sev( met, cube::CUBE_CALCULATE_INCLUSIVE,
                          cnode, calc_flavor,
                          thrd, cube::CUBE_CALCULATE_EXCLUSIVE );
    set_sev(  met, cnode, thrd, incr + val );
    if ( _parent != NULL )
    {
        add_sev( met, _parent, thrd, incr );
    }
}

void
Cube::add_sev( Metric* met, Cnode*  cnode, Thread* thrd, Value* incr )
{
    Cnode* _parent = NULL;
    if ( met->get_type_of_metric() == CUBE_METRIC_INCLUSIVE )
    {
        _parent = cnode->get_parent();
    }
    cube::CalculationFlavour calc_flavor = ( met->get_type_of_metric() == CUBE_METRIC_INCLUSIVE )
                                           ? cube::CUBE_CALCULATE_INCLUSIVE : cube::CUBE_CALCULATE_EXCLUSIVE;
    Value* val = get_sev_adv(  met, cube::CUBE_CALCULATE_INCLUSIVE,
                               cnode, calc_flavor,
                               thrd, cube::CUBE_CALCULATE_EXCLUSIVE );
    *val += ( incr );
    set_sev( met, cnode, thrd, val );
    delete val;
    if ( _parent != NULL )
    {
        add_sev( met, _parent, thrd, incr );
    }
}




//


void
Cube::add_sev( Metric* met, Region* region, Thread* thrd, double incr )
{
    Cnode* v_cnode = NULL;

    for ( unsigned int i = 0; i < cnodev.size(); i++ )
    {
        const Region* tmp = cnodev[ i ]->get_callee();
        if ( tmp == region )
        {
            v_cnode = cnodev[ i ];
            double val = get_sev( met, v_cnode, thrd );
            set_sev( met, v_cnode, thrd, incr + val );
        }
    }
    if ( v_cnode == NULL )
    {
        cerr << " REGION MUST BE DEFINED BEFORE ONE SAVES ANY VALUES" << endl;
        return;                                                                                            // NO ACTION; IF REGION IS NOT
    }

}


void
Cube::add_sev( Metric* met, Region* region, Thread* thrd, Value* incr )
{
    Cnode* v_cnode = NULL;

    for ( unsigned int i = 0; i < cnodev.size(); i++ )
    {
        const Region* tmp = cnodev[ i ]->get_callee();
        if ( tmp == region )
        {
            v_cnode = cnodev[ i ];
            Value* val = get_sev_adv( met, v_cnode, thrd );
            *val += ( incr );
            set_sev( met, v_cnode, thrd, val );
            delete val;
        }
    }
    if ( v_cnode == NULL )
    {
        cerr << " REGION MUST BE DEFINED BEFORE ONE SAVES ANY VALUES" << endl;
        return;                                                                                            // NO ACTION; IF REGION IS NOT DECLARES
    }

}







double
Cube::get_saved_sev( Metric* met, Cnode*  cnode, Thread* thrd )
{
    double ret = 0.;
    Value* v = get_saved_sev_adv( met, cnode, thrd );
    if ( v == NULL )
    {
        return 0.;
    }
    ret = v->getDouble();
    delete v;
    return ret;
}

Value*
Cube::get_saved_sev_adv( Metric* met, Cnode*  cnode, Thread* thrd )
{
    if ( met != NULL )
    {
        return met->get_sev_adv( cnode, thrd );
    }
    throw RuntimeError( "Metric in the call \"get_saved_sev_adv\" is NULL" );
//    return met->get_sev(cnode, thrd);
}





double
Cube::get_sev( Metric* met, Cnode*  cnode, Thread* thrd )
{
    if ( met != NULL )
    {
        return met->get_sev( cnode, cube::CUBE_CALCULATE_EXCLUSIVE, thrd, cube::CUBE_CALCULATE_INCLUSIVE );
        ;
    }
    throw RuntimeError( "Metric in the call \"get_sev\" is NULL" );
}

Value*
Cube::get_sev_adv( Metric* met, Cnode*  cnode, Thread* thrd )
{
    if ( met != NULL )
    {
        Value* _v =  met->get_sev_adv( cnode, cube::CUBE_CALCULATE_EXCLUSIVE, thrd, cube::CUBE_CALCULATE_INCLUSIVE );
        return _v;
    }
    throw RuntimeError( "Metric in the call \"get_sev_adv\" is NULL" );
//    return met->get_sev(cnode, thrd);
}


// ------------------ SEVERITIES PART END --------------------------------
