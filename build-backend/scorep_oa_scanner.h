/* A Bison parser, made by GNU Bison 2.5.  */

/* Bison interface for Yacc-like parsers in C
   
      Copyright (C) 1984, 1989-1990, 2000-2011 Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     T_CALL = 258,
     T_CONFIG = 259,
     T_EXECUTION_TIME = 260,
     T_GLOBAL = 261,
     T_INCLUDE = 262,
     T_L1_CACHE_MISS = 263,
     T_OFF = 264,
     T_ON = 265,
     T_ONLY = 266,
     T_REGION_SUMMARY = 267,
     T_REQUEST = 268,
     T_STRING = 269,
     T_USER = 270,
     T_ZAHL = 271,
     T_TERMINATE = 272,
     T_RUNTOSTART = 273,
     T_RUNTOEND = 274,
     T_GETSUMMARYDATA = 275,
     T_BEGINREQUESTS = 276,
     T_ENDREQUESTS = 277,
     T_SDDF_BUFFER_FLUSH_RATE = 278,
     T_MPI = 279,
     T_LOCAL = 280,
     T_METRIC = 281,
     T_PERISCOPE = 282,
     T_PAPI = 283,
     T_RUSAGE = 284,
     T_OTHER = 285
   };
#endif
/* Tokens.  */
#define T_CALL 258
#define T_CONFIG 259
#define T_EXECUTION_TIME 260
#define T_GLOBAL 261
#define T_INCLUDE 262
#define T_L1_CACHE_MISS 263
#define T_OFF 264
#define T_ON 265
#define T_ONLY 266
#define T_REGION_SUMMARY 267
#define T_REQUEST 268
#define T_STRING 269
#define T_USER 270
#define T_ZAHL 271
#define T_TERMINATE 272
#define T_RUNTOSTART 273
#define T_RUNTOEND 274
#define T_GETSUMMARYDATA 275
#define T_BEGINREQUESTS 276
#define T_ENDREQUESTS 277
#define T_SDDF_BUFFER_FLUSH_RATE 278
#define T_MPI 279
#define T_LOCAL 280
#define T_METRIC 281
#define T_PERISCOPE 282
#define T_PAPI 283
#define T_RUSAGE 284
#define T_OTHER 285




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{

/* Line 2068 of yacc.c  */
#line 89 "../src/measurement/online_access/scorep_oa_scanner.y"

  int   Zahl;
  char *String;



/* Line 2068 of yacc.c  */
#line 117 "scorep_oa_scanner.h"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


