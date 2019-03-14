/*
 * File: _coder_series_varying_L_mex.cpp
 *
 * MATLAB Coder version            : 4.0
 * C/C++ source code generated on  : 26-Jan-2019 23:50:28
 */

/* Include Files */
#include "_coder_series_varying_L_api.h"
#include "_coder_series_varying_L_mex.h"

/* Function Declarations */
static void series_varying_L_mexFunction(int32_T nlhs, int32_T nrhs, const
  mxArray *prhs[4]);

/* Function Definitions */

/*
 * Arguments    : int32_T nlhs
 *                int32_T nrhs
 *                const mxArray *prhs[4]
 * Return Type  : void
 */
static void series_varying_L_mexFunction(int32_T nlhs, int32_T nrhs, const
  mxArray *prhs[4])
{
  emlrtStack st = { NULL,              /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  st.tls = emlrtRootTLSGlobal;

  /* Check for proper number of arguments. */
  if (nrhs != 4) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:WrongNumberOfInputs", 5, 12, 4, 4,
                        16, "series_varying_L");
  }

  if (nlhs > 0) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:TooManyOutputArguments", 3, 4, 16,
                        "series_varying_L");
  }

  /* Call the function. */
  series_varying_L_api(prhs, nlhs);

  /* Module termination. */
  series_varying_L_terminate();
}

/*
 * Arguments    : int32_T nlhs
 *                mxArray * const plhs[]
 *                int32_T nrhs
 *                const mxArray * const prhs[]
 * Return Type  : void
 */
void mexFunction(int32_T nlhs, mxArray *plhs[], int32_T nrhs, const mxArray
                 *prhs[])
{
  (void)plhs;
  mexAtExit(series_varying_L_atexit);

  /* Initialize the memory manager. */
  /* Module initialization. */
  series_varying_L_initialize();

  /* Dispatch the entry-point. */
  series_varying_L_mexFunction(nlhs, nrhs, prhs);
}

/*
 * Arguments    : void
 * Return Type  : emlrtCTX
 */
emlrtCTX mexFunctionCreateRootTLS(void)
{
  emlrtCreateRootTLS(&emlrtRootTLSGlobal, &emlrtContextGlobal, NULL, 1);
  return emlrtRootTLSGlobal;
}

/*
 * File trailer for _coder_series_varying_L_mex.cpp
 *
 * [EOF]
 */
