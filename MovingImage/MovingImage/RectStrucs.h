//
//  RectStrucs.h
//  MovingImage
//
//  Created by SergeRybchinsky on 20/08/16.
//  Copyright © 2016 SergeRybchinsky. All rights reserved.
//

#ifndef RectStrucs_h
#define RectStrucs_h

#include <stdint.h>

struct RectSize {
    float width;
    float height;
};
typedef struct RectSize RectSize;
typedef struct RectSize * RectSizePtr;

struct RectPoint {
    float x;
    float y;
};
typedef struct RectPoint RectPoint;
typedef struct RectPoint * RectPointPtr;

struct RectCoordinate {
    float left;
    float top;
    float bottom;
    float right;
};
typedef struct RectCoordinate RectCoordinate;
typedef struct RectCoordinate * RectCoordinatePtr;

#endif /* RectStrucs_h */
