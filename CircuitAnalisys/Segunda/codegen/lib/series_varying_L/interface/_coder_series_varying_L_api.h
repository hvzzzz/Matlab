/*
 * File: _coder_series_varying_L_api.h
 *
 * MATLAB Coder version            : 4.0
 * C/C++ source code generated on  : 26-Jan-2019 23:50:28
 */

#ifndef _CODER_SERIES_VARYING_L_API_H
#define _CODER_SERIES_VARYING_L_API_H

/* Include Files */
#include "tmwtypes.h"
#include "mex.h"
#include "emlrt.h"
#include <stddef.h>
#include <stdlib.h>
#include "_coder_series_varying_L_api.h"

/* Variable Declarations */
extern emlrtCTX emlrtRootTLSGlobal;
extern emlrtContext emlrtContextGlobal;

/* Function Declarations */
extern void series_varying_L(real_T F, real_T v, real_T XC, real_T r);
extern void series_varying_L_api(const mxArray * const prhs[4], int32_T nlhs);
extern void series_varying_L_atexit(void);
extern void series_varying_L_initialize(void);
extern void series_varying_L_terminate(void);
extern void series_varying_L_xil_terminate(void);

#endif

/*
 * File trailer for _coder_series_varying_L_api.h
 *
 * [EOF]
 */
