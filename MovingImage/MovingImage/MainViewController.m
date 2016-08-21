//
//  ViewController.m
//  MovingImage
//
//  Created by SergeRybchinsky on 18/08/16.
//  Copyright © 2016 SergeRybchinsky. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _imageMap = [[ImageMap alloc] initWithMockData];
    
    CGRect contanierFrame = CGRectMake(0, 0, self.view.frame.size.width * 0.8, self.view.frame.size.height * 0.5);
    _contanier = [[ImageContanierView alloc] initWithFrame:contanierFrame];
    [_contanier setCenter:self.view.center];
    
    [self setImageForContanierViaMockData];
    [self setButtonsViaMockData];
    
    [self.view addSubview:_contanier];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)setButtonsViaMockData {
    [_contanier setButtonsWithCoordinate:[_imageMap getRectCoordCollection]];
}


- (void)setImageForContanierViaMockData
{
    NSString *imageUrl = [[NSString alloc]initWithUTF8String:[_imageMap getImageUrl]];
    UIImage *bgImage = [UIImage imageNamed: imageUrl];
    [_contanier setImage:bgImage];
}
@end
