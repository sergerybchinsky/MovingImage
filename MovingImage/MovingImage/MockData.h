//
//  MockData.h
//  MovingImage
//
//  Created by SergeRybchinsky on 20/08/16.
//  Copyright © 2016 SergeRybchinsky. All rights reserved.
//

#ifndef MockData_h
#define MockData_h

#import <Foundation/Foundation.h>
#import "RectCoordinateCollection.h"

@interface MockData : NSObject

@property (nonatomic, retain) RectCoordinateCollection *rectCoordinateCollection;
@property (nonatomic) char* imageUrl;

- (RectCoordinateCollection*)getRectangleCollection;
- (char*)getImageUrl;
- (int)getRandomNumberBetween:(int)from to:(int)to;

@end

#endif /* MockData_h */
