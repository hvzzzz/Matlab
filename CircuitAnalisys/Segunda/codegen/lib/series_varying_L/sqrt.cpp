//
// File: sqrt.cpp
//
// MATLAB Coder version            : 4.0
// C/C++ source code generated on  : 26-Jan-2019 23:50:28
//

// Include Files
#include <cmath>
#include <string.h>
#include "rt_nonfinite.h"
#include "series_varying_L.h"
#include "sqrt.h"

// Function Declarations
static void c_sqrt(double x[1001]);

// Function Definitions

//
// Arguments    : double x[1001]
// Return Type  : void
//
static void c_sqrt(double x[1001])
{
  int k;
  for (k = 0; k < 1001; k++) {
    x[k] = std::sqrt(x[k]);
  }
}

//
// Arguments    : const double x[1001]
//                double b_x[1001]
// Return Type  : void
//
void b_sqrt(const double x[1001], double b_x[1001])
{
  memcpy(&b_x[0], &x[0], 1001U * sizeof(double));
  c_sqrt(b_x);
}

//
// File trailer for sqrt.cpp
//
// [EOF]
//
