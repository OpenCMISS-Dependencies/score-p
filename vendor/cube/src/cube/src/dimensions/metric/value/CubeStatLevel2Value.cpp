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
 *
 * \file CubeStatLevel2Value.cpp
 * \brief Defines the methods of the "StatLevel2Value".
 ************************************************/
#ifndef __STAT_LEVEL2_VALUE_CPP
#define __STAT_LEVEL2_VALUE_CPP

#include <sstream>
#include <cstring>
#include <string>
#include <cmath>
#include <iostream>
#include "CubeValues.h"
#include "CubeError.h"

using namespace std;
using namespace cube;

std::vector<cube::StatLevel2ValueConfig> cube::StatLevel2Value::parameters;

StatLevel2Value::StatLevel2Value() : N( 1 ), Sum( 0. ), Sum2( 0. )
{
    isSingleValue = false;
}

StatLevel2Value::StatLevel2Value( uint32_t n,
                                  double   sum,
                                  double   sum2 ) : N( n ), Sum( sum ), Sum2( sum2 )
{
    isSingleValue = false;
}


unsigned
StatLevel2Value::getSize()
{
    return
        N.getSize() +
        Sum.getSize() +
        Sum2.getSize()
    ;
}

/**
 * Single value of StatLevel2Value is impossible. Therefore an exception is thrown.
 */
double
StatLevel2Value::getDouble()
{
    return 0.;
}

/**
 * Single value of StatLevel2Value is impossible. Therefore an exception is thrown.
 */
uint16_t
StatLevel2Value::getUnsignedShort()
{
    return ( uint16_t )getDouble();
}
/**
 * Single value of StatLevel2Value is impossible. Therefore an exception is thrown.
 */
int16_t
StatLevel2Value::getSignedShort()
{
    return ( int16_t )getDouble();
}


/**
 * Single value of StatLevel2Value is impossible. Therefore an exception is thrown.
 */
uint32_t
StatLevel2Value::getUnsignedInt()
{
    return ( uint32_t )getDouble();
}
/**
 * Single value of StatLevel2Value is impossible. Therefore an exception is thrown.
 */
int32_t
StatLevel2Value::getSignedInt()
{
    return ( int32_t )getDouble();
}


/**
 * Single value of StatLevel2Value is impossible. Therefore an exception is thrown.
 */
uint64_t
StatLevel2Value::getUnsignedLong()
{
    return ( uint64_t )getDouble();
}
/**
 * Single value of StatLevel2Value is impossible. Therefore an exception is thrown.
 */
int64_t
StatLevel2Value::getSignedLong()
{
    return ( uint64_t )getDouble();
}




/**
 * Char is meaningless representation of StatLevel2Value. Therefore an exception is thrown.
 */
char
StatLevel2Value::getChar()
{
    return ' ';
}



/**
 * Creates the string representation of the value.
 */
string
StatLevel2Value::getString()
{
// #warning " STRING representation of TAV Value should be developed"
    calcAvgVar();
    stringstream sstr;
    string       str;
    sstr << "(" << Average << "," << Variance << ")"  << endl;
    sstr >> str;
    return str;
}




/**
 * Creates the copy and sets the value to 0.
 */
Value*
StatLevel2Value::clone()
{
    return new StatLevel2Value( 1, 0., 0. );
}


/**
 * Creates the copy.
 */
Value*
StatLevel2Value::copy()
{
// #warning "Missing interface for unsigned long long"
    return new StatLevel2Value( N.getUnsignedInt(), Sum.getDouble(), Sum2.getDouble() );
}


/**
 * Sets the value from stream and returns the position in stream right after the value.
 */
char*
StatLevel2Value::fromStream( char* cv )
{
    return Sum2.fromStream( Sum.fromStream( N.fromStream( cv ) ) );
}

double*
StatLevel2Value::fromStreamOfDoubles( double* cv )
{
    return Sum2.fromStreamOfDoubles( Sum.fromStreamOfDoubles( N.fromStreamOfDoubles( cv ) ) );
}



/**
 * Saves the value in the stream and returns the position in stream right after the value.
 */
char*
StatLevel2Value::toStream( char* cv )
{
    return Sum2.toStream( Sum.toStream( N.toStream( cv ) ) );
}

/**
 * Transforms the endianness in the stream according its layout
 */
char*
StatLevel2Value::transformStream( char* cv, SingleValueTrafo* trafo )
{
    return Sum2.transformStream( Sum.transformStream( N.transformStream( cv, trafo ), trafo ), trafo );
}



void
StatLevel2Value::operator+=( Value* chval )
{
    if ( chval == NULL )
    {
        return;
    }
    N    += ( ( Value* )( &( ( ( StatLevel2Value* )chval )->N ) ) );
    Sum  += ( ( Value* )( &( ( ( StatLevel2Value* )chval )->Sum ) ) );
    Sum2 += ( ( Value* )( &( ( ( StatLevel2Value* )chval )->Sum2 ) ) );
}

void
StatLevel2Value::operator-=( Value* chval )
{
    if ( chval == NULL )
    {
        return;
    }
    N    -= ( ( Value* )( &( ( ( StatLevel2Value* )chval )->N ) ) );
    Sum  -= ( ( Value* )( &( ( ( StatLevel2Value* )chval )->Sum ) ) );
    Sum2 -= ( ( Value* )( &( ( ( StatLevel2Value* )chval )->Sum2 ) ) );
}


void
StatLevel2Value::operator*=( double dval )
{
// multiplication with an scale destroys the relation between variance and average.
//     N *= dval;   // only average gets scaled.
    Sum  *= dval;        // average gets scaled...
    Sum2 *= dval * dval; // varaince scales quadratically.
}

void
StatLevel2Value::operator/=( double dval )
{
    if ( dval == 0. )
    {
        cerr << "ERROR: DEVISION BY ZERO!" << endl;
    }
    else
    {
        Sum  /= dval;
        Sum2 /= ( dval * dval );
    }
}


void
StatLevel2Value::operator=( double d )
{
    throw RuntimeError( "Impossible to assign a  single double to StatLevel2Value" );
}



// overloaded new operator
void*
StatLevel2Value::operator new( size_t size )
{
    return ( void* )stat2_preallocator.Get();
}
// delete operator overloaded
void
StatLevel2Value::operator delete( void* p )
{
    stat2_preallocator.Put( ( StatLevel2Value* )p );
}


void
StatLevel2Value::operator=( Value* v )
{
// #warning "Error handling has to be done"
    throw RuntimeError( "Impossible to assign a singlegeneral Value to StatLevel2Value" );
}

// -------------------- PRIVATE METHODS- ------------------------

void
StatLevel2Value::calcAvgVar()
{
    uint32_t n  = N.getUnsignedInt();
    double   dn = N.getDouble();
    double   s  = Sum.getDouble();
    double   s2 = Sum2.getDouble();

    Average  =  ( n == 0 ) ? s / ( dn + 1e-256 )  : s / dn;
    Variance = ( n == 1 ) ? 0.             : 1. / ( dn - 1. ) * sqrt( s2 - 1. / dn * s * s );
}


void
StatLevel2Value::normalizeWithClusterCount( uint64_t _N )
{
    N.normalizeWithClusterCount( _N );
    Sum.normalizeWithClusterCount( _N );
    Sum2.normalizeWithClusterCount( _N );
}

void
StatLevel2Value::init_new()
{
    StatLevel2ValueConfig a;
    ( cube::StatLevel2Value::parameters ).push_back( a );
    index = ( cube::StatLevel2Value::parameters ).size() - 1;
};

void
StatLevel2Value::clone_new( Value* v )
{
    index = ( static_cast<StatLevel2Value*>( v ) )->index;
}


#endif
