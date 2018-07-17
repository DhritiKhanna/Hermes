/*   -*- buffer-read-only: t -*- vi: set ro:
 *  
 *  DO NOT EDIT THIS FILE   (sched-opt.h)
 *  
 *  It has been AutoGen-ed  November 10, 2014 at 01:34:48 PM by AutoGen 5.11.1
 *  From the definitions    sched-opt.def
 *  and the template file   options
 *
 * Generated from AutoOpts 33:2:8 templates.
 *
 *  AutoOpts is a copyrighted work.  This header file is not encumbered
 *  by AutoOpts licensing, but is provided under the licensing terms chosen
 *  by the isp author or copyright holder.  AutoOpts is
 *  licensed under the terms of the LGPL.  The redistributable library
 *  (``libopts'') is licensed under the terms of either the LGPL or, at the
 *  users discretion, the BSD license.  See the AutoOpts and/or libopts sources
 *  for details.
 *
 * This source file is copyrighted and licensed under the following terms:
 *
 * isp copyright (c) 1-27-2009 University of Utah - all rights reserved
 *
 * Copyright (C) 2009 -- please see LICENSE for details.
 */
/*
 *  This file contains the programmatic interface to the Automated
 *  Options generated for the isp program.
 *  These macros are documented in the AutoGen info file in the
 *  "AutoOpts" chapter.  Please refer to that doc for usage help.
 */
#ifndef AUTOOPTS_SCHED_OPT_H_GUARD
#define AUTOOPTS_SCHED_OPT_H_GUARD 1
#include <autoopts/options.h>

/*
 *  Ensure that the library used for compiling this generated header is at
 *  least as new as the version current when the header template was released
 *  (not counting patch version increments).  Also ensure that the oldest
 *  tolerable version is at least as old as what was current when the header
 *  template was released.
 */
#define AO_TEMPLATE_VERSION 135170
#if (AO_TEMPLATE_VERSION < OPTIONS_MINIMUM_VERSION) \
 || (AO_TEMPLATE_VERSION > OPTIONS_STRUCT_VERSION)
# error option template version mismatches autoopts/options.h header
  Choke Me.
#endif

/*
 *  Enumeration of each option:
 */
typedef enum {
    INDEX_OPT_NUMPROCS            =  0,
    INDEX_OPT_ENCODING            =  1,
    INDEX_OPT_DIMACS              =  2,
    INDEX_OPT_SHOW_FORMULA        =  3,
    INDEX_OPT_MINISAT             =  4,
    INDEX_OPT_LINGELING           =  5,
    INDEX_OPT_PORT                =  6,
    INDEX_OPT_HOST                =  7,
    INDEX_OPT_US                  =  8,
    INDEX_OPT_BLOCK               =  9,
    INDEX_OPT_NOBLOCK             = 10,
    INDEX_OPT_LOGFILE             = 11,
    INDEX_OPT_MPICALLS            = 12,
    INDEX_OPT_VERBOSE             = 13,
    INDEX_OPT_QUIET               = 14,
    INDEX_OPT_RPT_PROGRESS        = 15,
    INDEX_OPT_DISTRIBUTED         = 16,
    INDEX_OPT_FIBOPT              = 17,
    INDEX_OPT_VIEW_PROG_OUT_ONLY  = 18,
    INDEX_OPT_DISABLE_OMP         = 19,
    INDEX_OPT_EXP_MODE            = 20,
    INDEX_OPT_ENV                 = 21,
    INDEX_OPT_EXP_SOME            = 22,
    INDEX_OPT_STOP_AT_DEADLOCK    = 23,
    INDEX_OPT_DEBUG_SCHED         = 24,
    INDEX_OPT_NO_AMPLE_SET_FIX    = 25,
    INDEX_OPT_BOUND               = 26,
    INDEX_OPT_FPRS                = 27,
    INDEX_OPT_VERSION             = 28,
    INDEX_OPT_HELP                = 29,
    INDEX_OPT_MORE_HELP           = 30,
    INDEX_OPT_KBUFFER             = 31
} teOptIndex;

#define OPTION_CT    32
#define ISP_VERSION       "0.2.0"
#define ISP_FULL_VERSION  "isp - isp: In-Situ Partial Order - Ver. 0.2.0"

/*
 *  Interface defines for all options.  Replace "n" with the UPPER_CASED
 *  option name (as in the teOptIndex enumeration above).
 *  e.g. HAVE_OPT(NUMPROCS)
 */
#define         DESC(n) (ispOptions.pOptDesc[INDEX_OPT_## n])
#define     HAVE_OPT(n) (! UNUSED_OPT(& DESC(n)))
#define      OPT_ARG(n) (DESC(n).optArg.argString)
#define    STATE_OPT(n) (DESC(n).fOptState & OPTST_SET_MASK)
#define    COUNT_OPT(n) (DESC(n).optOccCt)
#define    ISSEL_OPT(n) (SELECTED_OPT(&DESC(n)))
#define ISUNUSED_OPT(n) (UNUSED_OPT(& DESC(n)))
#define  ENABLED_OPT(n) (! DISABLED_OPT(& DESC(n)))
#define  STACKCT_OPT(n) (((tArgList*)(DESC(n).optCookie))->useCt)
#define STACKLST_OPT(n) (((tArgList*)(DESC(n).optCookie))->apzArgs)
#define    CLEAR_OPT(n) STMTS( \
                DESC(n).fOptState &= OPTST_PERSISTENT_MASK;   \
                if ((DESC(n).fOptState & OPTST_INITENABLED) == 0) \
                    DESC(n).fOptState |= OPTST_DISABLED; \
                DESC(n).optCookie = NULL )

/* * * * * *
 *
 *  Interface defines for specific options.
 */
#define VALUE_OPT_NUMPROCS       'n'

#define OPT_VALUE_NUMPROCS       (DESC(NUMPROCS).optArg.argInt)
#define VALUE_OPT_ENCODING       'E'

#define OPT_VALUE_ENCODING       (DESC(ENCODING).optArg.argInt)
#define VALUE_OPT_DIMACS         'D'

#define OPT_VALUE_DIMACS         (DESC(DIMACS).optArg.argBool)
#define VALUE_OPT_SHOW_FORMULA   'C'
#define VALUE_OPT_MINISAT        4
#define VALUE_OPT_LINGELING      5
#define VALUE_OPT_PORT           'p'

#define OPT_VALUE_PORT           (DESC(PORT).optArg.argInt)
#define VALUE_OPT_HOST           'h'
#define VALUE_OPT_US             'x'
#define VALUE_OPT_BLOCK          'b'
#define VALUE_OPT_NOBLOCK        'g'
#define VALUE_OPT_LOGFILE        'l'
#define VALUE_OPT_MPICALLS       'm'
#define VALUE_OPT_VERBOSE        'O'
#define VALUE_OPT_QUIET          'q'
#define VALUE_OPT_RPT_PROGRESS   'r'

#define OPT_VALUE_RPT_PROGRESS   (DESC(RPT_PROGRESS).optArg.argInt)
#define VALUE_OPT_DISTRIBUTED    'd'
#define VALUE_OPT_FIBOPT         'f'
#define VALUE_OPT_VIEW_PROG_OUT_ONLY 'P'
#define VALUE_OPT_DISABLE_OMP    'o'
#define VALUE_OPT_EXP_MODE       'e'

#define VALUE_OPT_KBUFFER        'k'
#define OPT_VALUE_KBUFFER        (DESC(KBUFFER).optArg.argInt)

typedef enum {
    EXP_MODE_ALL,         EXP_MODE_RANDOM,      EXP_MODE_LEFT_MOST
} te_Exp_Mode;
#define OPT_EXP_MODE_VAL2STR(_v) optionKeywordName(&DESC(EXP_MODE), (_v))
#define OPT_VALUE_EXP_MODE       (DESC(EXP_MODE).optArg.argEnum)
#define VALUE_OPT_ENV            's'
#define VALUE_OPT_EXP_SOME       'y'

#define OPT_VALUE_EXP_SOME       (DESC(EXP_SOME).optArg.argInt)
#define VALUE_OPT_STOP_AT_DEADLOCK 'z'

#define OPT_VALUE_STOP_AT_DEADLOCK (DESC(STOP_AT_DEADLOCK).optArg.argBool)
#define VALUE_OPT_DEBUG_SCHED    24
#define VALUE_OPT_NO_AMPLE_SET_FIX 'a'
#define VALUE_OPT_BOUND          'B'

#define OPT_VALUE_BOUND          (DESC(BOUND).optArg.argInt)
#define VALUE_OPT_FPRS           'F'
#define VALUE_OPT_HELP          '?'
#define VALUE_OPT_MORE_HELP     '!'
#define VALUE_OPT_VERSION       'v'
/*
 *  Interface defines not associated with particular options
 */
#define ERRSKIP_OPTERR  STMTS(ispOptions.fOptSet &= ~OPTPROC_ERRSTOP)
#define ERRSTOP_OPTERR  STMTS(ispOptions.fOptSet |= OPTPROC_ERRSTOP)
#define RESTART_OPT(n)  STMTS( \
                ispOptions.curOptIdx = (n); \
                ispOptions.pzCurOpt  = NULL)
#define START_OPT       RESTART_OPT(1)
#define USAGE(c)        (*ispOptions.pUsageProc)(&ispOptions, c)
/* extracted from /home/ssharma/Downloads/autogen-5.11.1/autogen-install/share/autogen/opthead.tpl near line 408 */

/* * * * * *
 *
 *  Declare the isp option descriptor.
 */
#ifdef  __cplusplus
extern "C" {
#endif

extern tOptions   ispOptions;

#if defined(ENABLE_NLS)
# ifndef _
#   include <stdio.h>
    static inline char* aoGetsText(char const* pz) {
        if (pz == NULL) return NULL;
        return (char*)gettext(pz);
    }
#   define _(s)  aoGetsText(s)
# endif /* _() */

# define OPT_NO_XLAT_CFG_NAMES  STMTS(ispOptions.fOptSet |= \
                                    OPTPROC_NXLAT_OPT_CFG;)
# define OPT_NO_XLAT_OPT_NAMES  STMTS(ispOptions.fOptSet |= \
                                    OPTPROC_NXLAT_OPT|OPTPROC_NXLAT_OPT_CFG;)

# define OPT_XLAT_CFG_NAMES     STMTS(ispOptions.fOptSet &= \
                                  ~(OPTPROC_NXLAT_OPT|OPTPROC_NXLAT_OPT_CFG);)
# define OPT_XLAT_OPT_NAMES     STMTS(ispOptions.fOptSet &= \
                                  ~OPTPROC_NXLAT_OPT;)

#else   /* ENABLE_NLS */
# define OPT_NO_XLAT_CFG_NAMES
# define OPT_NO_XLAT_OPT_NAMES

# define OPT_XLAT_CFG_NAMES
# define OPT_XLAT_OPT_NAMES

# ifndef _
#   define _(_s)  _s
# endif
#endif  /* ENABLE_NLS */

#ifdef  __cplusplus
}
#endif
#endif /* AUTOOPTS_SCHED_OPT_H_GUARD */
/* sched-opt.h ends here */
