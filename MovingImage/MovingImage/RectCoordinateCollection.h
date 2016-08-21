//
//  RectangleCollection.h
//  MovingImage
//
//  Created by SergeRybchinsky on 20/08/16.
//  Copyright © 2016 SergeRybchinsky. All rights reserved.
//

#ifndef RectangleCollection_h
#define RectangleCollection_h

#import "Rectangle.h"
#import <Foundation/Foundation.h>

@interface RectCoordinateCollection : NSObject
{
    NSMutableArray *_rectCoordinateArray;
}

- (void)setRectCoordinateArray:(NSMutableArray *)rectArray;
- (NSMutableArray *)getRectCoordinateArray;

- (void)addRect:(Rectangle *)rect;
- (void)removeRectByIndex:(int)index;
- (void)addRange:(NSArray *)rectArray;
- (void)removeRange:(int)startIndex end:(int)endIndex;

@end

#endif /* RectangleCollection_h */
