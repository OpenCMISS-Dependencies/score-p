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
 * \file CubeCustomPreDerivedInclusiveMetric.h
 * \brief Defines a metric, which calculates its value using user defined expression in CubePL"
 */
#ifndef CUBE_CUSTOM_DERIVED_INCLUSIVE_METRIC_H
#define CUBE_CUSTOM_DERIVED_INCLUSIVE_METRIC_H

// #include "CubeTypes.h"
// #include "CubeVertex.h"
// #include "CubeCnode.h"
// #include "CubeThread.h"
#include "CubePreDerivedInclusiveMetric.h"

// #include "CubeValues.h"

/*
   *----------------------------------------------------------------------------
 *
 * class Metric
 *
 *******************************----------------------------------------------------------------------------
 */

namespace cube
{
/*  class Cnode;
   class Thread;*/

/**
 * Metric has a treelike structure and is a kind of Vertex.
 */

class CustomPreDerivedInclusiveMetric : public PreDerivedInclusiveMetric
{
public:

    CustomPreDerivedInclusiveMetric( const std::string& disp_name,
                                     const std::string& uniq_name,
                                     const std::string& dtype,
                                     const std::string& uom,
                                     const std::string& val,
                                     const std::string& url,
                                     const std::string& descr,
                                     FileFinder*        ffinder,
                                     Metric*            parent,
                                     uint32_t           id = 0,
                                     const std::string& _expression = "",
                                     const std::string& _expression_init = "",
                                     const std::string& _expression_aggr_plus = "",
                                     const std::string& _expression_aggr_minus = "",
                                     const bool         threadwise = true,
                                     VizTypeOfMetric    is_ghost = CUBE_METRIC_NORMAL
                                     )
        : PreDerivedInclusiveMetric( disp_name, uniq_name, dtype, uom, val, url, descr, ffinder, parent, id, _expression, _expression_init, _expression_aggr_plus, _expression_aggr_minus, threadwise,  is_ghost )
    {
        adv_sev_mat = NULL;
        initialized = false; // with creation initialisation is done
        cache_selection( ncid, ntid, CUBE_METRIC_EXCLUSIVE );
    }
    virtual
    ~CustomPreDerivedInclusiveMetric();



    using cube::PreDerivedInclusiveMetric::get_sev_adv;


    virtual Value*
    get_sev_adv( Cnode*             cnode,
                 CalculationFlavour cnf );

    virtual Value*
    get_sev_adv( Cnode*             cnode,
                 CalculationFlavour cfv,
                 Sysres*            sys,
                 CalculationFlavour sf );

    virtual double*
    get_sevs( Cnode*             cnode,
              CalculationFlavour cfv
              );
    virtual Value**
    get_sevs_adv( Cnode*             cnode,
                  CalculationFlavour cfv
                  );

    virtual char*
    get_sevs_raw( Cnode*             cnode,
                  CalculationFlavour cfv
                  );

    virtual double
    get_sev( Cnode*             cnode,
             CalculationFlavour cnf );

    virtual double
    get_sev( Cnode*             cnode,
             CalculationFlavour cfv,
             Sysres*            sys,
             CalculationFlavour sf );


    // /< Empty hook
};
}
#endif
