//
//  Rectangle.m
//  MovingImage
//
//  Created by SergeRybchinsky on 20/08/16.
//  Copyright © 2016 SergeRybchinsky. All rights reserved.
//

#import "Rectangle.h"


@interface Rectangle()
@end

@implementation Rectangle

- (instancetype)init
{
    self = [super init];
    if (self) {
        _location.x = 0;
        _location.y = 0;
        _size.height = 0;
        _size.width = 0;
    }
    return self;
}


- (void)setLocation:(RectPoint)point {
    _location = point;
}
- (void)setSize:(RectSize)size {
    _size = size;
}
- (RectPoint)getLocation {
    return _location;
}
- (RectSize)getSize {
    return  _size;
}

- (void)setX:(float)x {
    _location.x = x;
}
- (void)setY:(float)y {
    _location.y = y;
}
- (void)setWidth:(float)width {
    _size.width = width;
}
- (void)setHeight:(float)heigh {
    _size.height = heigh;
}

- (float)getX {
    return _location.x;
}
- (float)getY {
    return _location.y;
}
- (float)getWidth {
    return _size.width;
}
- (float)getHeight {
    return _size.height;
}

@end