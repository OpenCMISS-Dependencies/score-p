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


#ifndef __VARIABLE_EVALUATION_H
#define __VARIABLE_EVALUATION_H 0

#include "CubePLMemoryManager.h"
#include "CubeStringEvaluation.h"

namespace cube
{
class VariableEvaluation : public StringEvaluation
{
protected:
    CubePLMemoryManager* memory;
    MemoryAdress         variable;
    std::string          variable_name;
    KindOfVariable       kind;
    GeneralEvaluation*   index;
public:
    VariableEvaluation( std::string          _variable,
                        GeneralEvaluation*   _index,
                        CubePLMemoryManager* _manager ) : StringEvaluation(), memory( _manager ),  variable( memory->register_variable( _variable ) ), variable_name( _variable ), index( _index )
    {
        kind = memory->kind_of_variable( variable_name );
    };
    ~VariableEvaluation();

    inline
    virtual
    void
    setRowSize( size_t size )
    {
        index->setRowSize( size );
        GeneralEvaluation::setRowSize( size );
    }
    
        inline
    virtual
    void
    set_verbose_execution( bool _v )
    {
	GeneralEvaluation::set_verbose_execution( _v );
	index->set_verbose_execution( _v );
    }
    
    virtual
    double
    eval();

    virtual
    double
    eval( Cnode *, CalculationFlavour, Sysres *, CalculationFlavour   );

    virtual
    double
    eval( Cnode *, CalculationFlavour );

    virtual
    double*
    eval_row( Cnode*             _cnode,
              CalculationFlavour _cf );


    virtual
    std::string
    strEval();


    virtual
    bool
    isString();

    virtual
    double
    eval( double arg1,
          double arg2 );

    virtual
    void
    print()
    {
        std::cout << "${" << variable_name << "}[";
        index->print();
        std::cout << "]";
    };
};
};

#endif
