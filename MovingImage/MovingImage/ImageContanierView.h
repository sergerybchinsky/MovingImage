//
//  ImageContanier.h
//  MovingImage
//
//  Created by SergeRybchinsky on 20/08/16.
//  Copyright © 2016 SergeRybchinsky. All rights reserved.
//

#ifndef ImageContanier_h
#define ImageContanier_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ImageMap.h"
#import "RectCoordinateCollection.h"

@interface ImageContanierView : UIScrollView

@property (nonatomic, retain) UIImageView* imageView;
@property (nonatomic, retain) NSMutableArray* buttons;

- (void)setImage:(UIImage *)image;
- (void) setButtonsWithCoordinate:(RectCoordinateCollection *)buttons;

@end

#endif /* ImageContanier_h */
