//
//  ImageMap.m
//  MovingImage
//
//  Created by SergeRybchinsky on 20/08/16.
//  Copyright © 2016 SergeRybchinsky. All rights reserved.
//

#import "ImageMap.h"

@interface ImageMap()
@end

@implementation ImageMap

- (instancetype)initWithMockData
{
    self = [super init];
    if (self) {
        MockData *mockData = [[MockData alloc] init];
        [self setImageUrl:[mockData getImageUrl]];
        [self setRectCoordinateCollection:[mockData getRectangleCollection]];
    }
    return self;
}

- (void)setImageUrl:(char*)imageUrl {
    _imageUrl = imageUrl;
}
- (void)setImageWidth:(float)imageWidth{
    if(imageWidth >= 0)
        _imageWidth = imageWidth;
}
- (void)setImageHeight:(float)imageHeight{
    if(imageHeight >= 0)
        _imageWidth = imageHeight;
}
- (void)setRectCoordinateCollection:(RectCoordinateCollection *)rectCoordCollection{
    if(rectCoordCollection != nil)
        _rectCoordinateCollection = rectCoordCollection;
}

- (char*)getImageUrl{
    return _imageUrl;
}
- (float)getImageWidth{
    return _imageWidth;
}
- (float)getImageHeight {
    return _imageHeight;
}
- (RectCoordinateCollection *)getRectCoordCollection{
    return _rectCoordinateCollection;
}

@end
