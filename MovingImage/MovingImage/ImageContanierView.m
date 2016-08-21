//
//  ImageContanier.m
//  MovingImage
//
//  Created by SergeRybchinsky on 20/08/16.
//  Copyright © 2016 SergeRybchinsky. All rights reserved.
//

#import "ImageContanierView.h"

@interface ImageContanierView()
@end

@implementation ImageContanierView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.frame = frame;
        
        _imageView = [[UIImageView alloc] init];
        _imageView.backgroundColor = [UIColor greenColor];
        _buttons = [[NSMutableArray alloc] init];
        
        [self addSubview:_imageView];
        [self setUI];
    }
    return self;
}

- (void) setUI
{
    [self setScrollEnabled:YES];
    [self setBackgroundColor:[UIColor grayColor]];
    [self.layer setBorderColor:[UIColor blackColor].CGColor];
    [self.layer setBorderWidth:2];
    
    [_imageView setBackgroundColor:[UIColor greenColor]];
}

- (void)setImage:(UIImage *)image
{
    [self setContentSize:image.size];
    _imageView.image = image;
    _imageView.frame = CGRectMake(0, 0, image.size.width, image.size.height);
}

- (void)setButtonsWithCoordinate:(RectCoordinateCollection *)buttons
{
    if(_buttons != nil && _buttons.count > 0)
        for (UIButton *but in _buttons)
            [but removeFromSuperview];
    
    for (Rectangle *rect in [buttons getRectCoordinateArray])
    {
        CGRect butFrame = CGRectMake([rect getX], [rect getY], [rect getWidth], [rect getHeight]);
        UIButton *but = [[UIButton alloc] initWithFrame:butFrame];
        [but setTitleColor: [[UIColor alloc]initWithRed:1 green:(float)153/(float)255 blue:0 alpha:1]
             forState:UIControlStateNormal];
        [but.titleLabel setNumberOfLines: 1];
        [but.titleLabel setAdjustsFontSizeToFitWidth:YES];
        [but setContentHorizontalAlignment:UIControlContentHorizontalAlignmentCenter];
        [but setBackgroundColor:[UIColor whiteColor]];
        [but.layer setBorderColor:[[UIColor alloc]initWithRed:1 green:(float)153/(float)255 blue:0 alpha:1].CGColor];
        [but.layer setBorderWidth:2];
        [but.layer setCornerRadius:5];
        [but setClipsToBounds:YES];
        
        NSInteger butIndex = [[buttons getRectCoordinateArray] indexOfObject:rect];
        [but setTitle:[[NSString alloc] initWithFormat:@"%ld", (long)butIndex] forState:UIControlStateNormal];
        [but addTarget:self action:@selector(alert) forControlEvents:UIControlEventTouchUpInside];
        
        [_buttons addObject:but];
        [self addSubview:but];
    }
}

- (void) alert
{
    UIAlertView *alert = [[UIAlertView alloc]
        initWithTitle:@"Any message"
        message:@"More info ..."
        delegate:self
        cancelButtonTitle:@"Cancel"
        otherButtonTitles:@"Ok?",nil];
    [alert show];
}

@end