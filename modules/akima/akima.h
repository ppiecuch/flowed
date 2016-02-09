#ifndef _akima_h_
#define _akima_h_

#include <stdbool.h>


extern "C"
	void sdsf3p_(int *MD, int *NDP, double *XD, double *YD, double *ZD, int *NXI,
	     double *XI, int *NYI, double *YI, double *ZI, int *IER, double *WK,
	     int *IWK, bool *EXTRPI, int *NEAR, int *NEXT, double *DIST);

#endif // _akima_h_
