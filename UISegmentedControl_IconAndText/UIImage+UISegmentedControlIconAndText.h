//
//  UIImage+UISegmentedControlIconAndText.h
//  UISegmentedControl_IconAndText
//
//  Created by Maxim Bilan on 6/8/15.
//  Copyright (c) 2015 Maxim Bilan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (UISegmentedControlIconAndText)

+ (id)imageFromImage:(UIImage *)image string:(NSString *)string font:(UIFont *)font color:(UIColor *)color;

@end
