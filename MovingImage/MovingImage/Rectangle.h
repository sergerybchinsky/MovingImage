//
//  Rectangle.h
//  MovingImage
//
//  Created by SergeRybchinsky on 20/08/16.
//  Copyright © 2016 SergeRybchinsky. All rights reserved.
//

#ifndef Rectangle_h
#define Rectangle_h

#import <Foundation/Foundation.h>
#import "RectStrucs.h"

@interface Rectangle : NSObject
{
    RectSize _size;
    RectPoint _location;
}

- (void)setLocation:(RectPoint)point;
- (void)setSize:(RectSize)size;
- (RectPoint)getLocation;
- (RectSize)getSize;

- (void)setX:(float)x;
- (void)setY:(float)y;
- (void)setWidth:(float)width;
- (void)setHeight:(float)height;

- (float)getX;
- (float)getY;
- (float)getWidth;
- (float)getHeight;

@end

#endif /* Rectangle_h */
