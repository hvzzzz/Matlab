//
// File: power.cpp
//
// MATLAB Coder version            : 4.0
// C/C++ source code generated on  : 26-Jan-2019 23:50:28
//

// Include Files
#include "rt_nonfinite.h"
#include "series_varying_L.h"
#include "power.h"

// Function Definitions

//
// Arguments    : const double a[1001]
//                double y[1001]
// Return Type  : void
//
void power(const double a[1001], double y[1001])
{
  int k;
  for (k = 0; k < 1001; k++) {
    y[k] = a[k] * a[k];
  }
}

//
// File trailer for power.cpp
//
// [EOF]
//
