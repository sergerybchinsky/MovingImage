//
//  ViewController.h
//  MovingImage
//
//  Created by SergeRybchinsky on 18/08/16.
//  Copyright © 2016 SergeRybchinsky. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ImageContanierView.h"
#import "MockData.h"

@interface MainViewController : UIViewController

@property (nonatomic, retain) ImageContanierView *contanier;
@property (nonatomic, retain) ImageMap *imageMap;

@end

