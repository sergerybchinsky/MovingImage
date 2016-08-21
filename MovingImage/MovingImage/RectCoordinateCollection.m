//
//  RectangleCollection.m
//  MovingImage
//
//  Created by SergeRybchinsky on 20/08/16.
//  Copyright © 2016 SergeRybchinsky. All rights reserved.
//

#import "RectCoordinateCollection.h"

@interface RectCoordinateCollection()
@end

@implementation RectCoordinateCollection

- (instancetype)init
{
    self = [super init];
    if (self) {
        _rectCoordinateArray = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSMutableArray *)getRectCoordinateArray {
    return _rectCoordinateArray;
}
- (void)setRectCoordinateArray:(NSMutableArray *)rectArray {
    _rectCoordinateArray = rectArray;
}

- (void)addRect:(Rectangle *)rect{
    [_rectCoordinateArray addObject:rect];
}
- (void)addRange:(NSArray *)rectArray {
    [_rectCoordinateArray addObjectsFromArray:rectArray];
}
-(void)removeRectByIndex:(int)index {
    if(0 < index && index < _rectCoordinateArray.count)
        [_rectCoordinateArray removeObjectAtIndex:index];
}
- (void)removeRange:(int)startIndex end:(int)endIndex {
    if(startIndex < endIndex)
        if(0 < startIndex && startIndex < _rectCoordinateArray.count)
            if(0 < endIndex && endIndex < _rectCoordinateArray.count)
            {
                NSRange range = NSMakeRange(startIndex, endIndex - startIndex);
                [_rectCoordinateArray removeObjectsInRange:range];
            }
}

@end