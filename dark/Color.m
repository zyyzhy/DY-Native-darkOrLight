//
//  Color.m
//  dark
//
//  Created by ejiang on 2020/3/23.
//

#import "Color.h"

@implementation Color

+ (instancetype)darkColor {
    static Color * ColorModel = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        ColorModel = [[Color alloc] init];
    });
    return ColorModel;
}

-(void)setDarkColorArray
{
    self.isDark=YES;
    self.backColor=[UIColor blackColor];
    self.imageColor=[UIColor blackColor];
    self.navTitleColor = [UIColor whiteColor];
}

-(void)setBrightColorArray
{
    self.isDark=NO;
    self.backColor=[UIColor whiteColor];
    self.imageColor=[UIColor whiteColor];
    self.navTitleColor = [UIColor blackColor];
}
@end
