//
//  ImageMap.h
//  MovingImage
//
//  Created by SergeRybchinsky on 20/08/16.
//  Copyright © 2016 SergeRybchinsky. All rights reserved.
//

#ifndef ImageMap_h
#define ImageMap_h

#import "RectCoordinateCollection.h"
#import "MockData.h"

@interface ImageMap : NSObject
{
    char* _imageUrl;
    float _imageWidth;
    float _imageHeight;
    RectCoordinateCollection *_rectCoordinateCollection;
}

- (void)setImageUrl:(char*)imageUrl;
- (void)setImageWidth:(float)imageWidth;
- (void)setImageHeight:(float)imageHeight;
- (void)setRectCoordinateCollection:(RectCoordinateCollection *)rectCoordCollection;

- (char*)getImageUrl;
- (float)getImageWidth;
- (float)getImageHeight;
- (RectCoordinateCollection *)getRectCoordCollection;

- (instancetype)initWithMockData;

@end

#endif /* ImageMap_h */
