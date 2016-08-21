//
//  MockData.m
//  MovingImage
//
//  Created by SergeRybchinsky on 20/08/16.
//  Copyright © 2016 SergeRybchinsky. All rights reserved.
//

#import "MockData.h"

@interface MockData()
@end

@implementation MockData

- (RectCoordinateCollection *)getRectangleCollection
{
    float mockImageWidth = 1669;
    float mockImageHeight = 827;
    _rectCoordinateCollection = [[RectCoordinateCollection alloc] init];
    for(int i = 0; i < 50; i++)
    {
        RectPoint location;
        RectSize size;
        location.x = [self getRandomNumberBetween:0 to:mockImageWidth];
        location.y = [self getRandomNumberBetween:0 to:mockImageHeight];
        size.width = 20;
        size.height = 20;
        
        Rectangle *but = [[Rectangle alloc] init];
        [but setLocation: location];
        [but setSize:size];
        [_rectCoordinateCollection addRect:but];
    }
    return _rectCoordinateCollection;
}

-(int)getRandomNumberBetween:(int)from to:(int)to {
    return (int)from + arc4random() % (to-from+1);
}

- (char *)getImageUrl{
    return "testImages.png";
}
@end