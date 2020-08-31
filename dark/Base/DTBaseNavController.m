//
//  DTBaseNavController.m
//  dark
//
//  Created by 大头科技 on 2020/4/26.
//

#import "DTBaseNavController.h"

@interface DTBaseNavController ()

@end

@implementation DTBaseNavController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    //  是否第一个push进来的子控制器
    if (self.childViewControllers.count >= 1) {
        viewController.hidesBottomBarWhenPushed = YES; // 隐藏底部的工具条
    }
    
    [super pushViewController:viewController animated:animated];
}

- (void)back
{
    [self.navigationController popViewControllerAnimated:YES];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
