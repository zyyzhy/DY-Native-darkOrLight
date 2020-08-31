//
//  DTBaseViewController.m
//  dark
//
//  Created by 大头科技 on 2020/4/26.
//

#import "DTBaseViewController.h"

@interface DTBaseViewController ()

@end

@implementation DTBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor systemGray5Color];
    self.navigationController.navigationBar.hidden = YES;
}

- (void)setUpViewsWithTittle:(NSString *)tittle {
    _navibarView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, TSScreenW, IPHONE_NAVIGATIONBAR_HEIGHT)];
    _navibarView.backgroundColor = [UIColor systemGray6Color];
    [self.view addSubview:_navibarView];
    _leftBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _leftBtn.frame = CGRectMake(0, IPHONE_STATUSBAR_HEIGHT, 60, 44);
    [_leftBtn setImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
    [_leftBtn setImage:[UIImage imageNamed:@"back"] forState:UIControlStateHighlighted];
    [_leftBtn addTarget:self action:@selector(goBack:) forControlEvents:UIControlEventTouchUpInside];
    [_navibarView addSubview:_leftBtn];
    
    UIColor *dyColor = [UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull trainCollection) {
         if ([trainCollection userInterfaceStyle] == UIUserInterfaceStyleLight) {
             return [UIColor blackColor];
         }
         else {
             return [UIColor whiteColor];
         }
     }];
    
    _titleLab = [[UILabel alloc] initWithFrame:CGRectMake(60, IPHONE_STATUSBAR_HEIGHT, TSScreenW - 120, 44)];
    _titleLab.text = tittle;
    _titleLab.textAlignment = NSTextAlignmentCenter;
    _titleLab.textColor = [UIColor labelColor];
    [_navibarView addSubview:_titleLab];
    
    
}
- (void)setUpViewsWithTittle1:(NSString *)tittle {
    _navibarView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, TSScreenW, IPHONE_NAVIGATIONBAR_HEIGHT)];
    _navibarView.backgroundColor = [Color darkColor].backColor;
    [self.view addSubview:_navibarView];
    _titleLab = [[UILabel alloc] initWithFrame:CGRectMake(60, IPHONE_STATUSBAR_HEIGHT, TSScreenW - 120, 44)];
    _titleLab.text = tittle;
    _titleLab.textAlignment = NSTextAlignmentCenter;
    _titleLab.textColor = [Color darkColor].navTitleColor;
    [_navibarView addSubview:_titleLab];
}

- (void)customTitleRightBtnWith:(NSString *)title Target:(id)target Action:(SEL)action {
    
    UIButton *rightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    rightBtn.frame = CGRectMake(TSScreenW - 75, IPHONE_STATUSBAR_HEIGHT, 75, 44);
    rightBtn.titleLabel.font = [UIFont systemFontOfSize:15];
    [rightBtn setTitle:title forState:UIControlStateNormal];
    [rightBtn setTitleColor:[Color darkColor].backColor forState:UIControlStateNormal];
    [rightBtn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    _rightBtn = rightBtn;
    [_navibarView addSubview:_rightBtn];
}

- (void)customImgRightBtnWith:(NSString *)imgName Target:(id)target Action:(SEL)action {
    
    UIButton *rightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    rightBtn.frame = CGRectMake(TSScreenW - 60, IPHONE_STATUSBAR_HEIGHT, 60, 44);
    [rightBtn setImage:[UIImage imageNamed:imgName] forState:UIControlStateNormal];
    [rightBtn setImage:[UIImage imageNamed:imgName] forState:UIControlStateHighlighted];
    [rightBtn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    _rightBtn = rightBtn;
    [_navibarView addSubview:_rightBtn];
}

- (void)setUpleftViewsWithTittle:(NSString *)tittle Target:(id)target Action:(SEL)action
{
    
    _navibarView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, TSScreenW, IPHONE_NAVIGATIONBAR_HEIGHT)];
    _navibarView.backgroundColor = [Color darkColor].backColor;
    [self.view addSubview:_navibarView];
    
    _leftBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _leftBtn.frame = CGRectMake(0, IPHONE_STATUSBAR_HEIGHT, 60, 44);
    [_leftBtn setImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
    [_leftBtn setImage:[UIImage imageNamed:@"back"] forState:UIControlStateHighlighted];
    [_leftBtn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [_navibarView addSubview:_leftBtn];
    
    _titleLab = [[UILabel alloc] initWithFrame:CGRectMake(60, IPHONE_STATUSBAR_HEIGHT, TSScreenW - 120, 44)];
    _titleLab.text = tittle;
    _titleLab.textAlignment = NSTextAlignmentCenter;
    _titleLab.textColor = [Color darkColor].navTitleColor;
    [_navibarView addSubview:_titleLab];
    
}

-(void)traitCollectionDidChange:(UITraitCollection *)previousTraitCollection
{
    [super traitCollectionDidChange: previousTraitCollection];
    if (@available(iOS 13.0, *))
    {
        if(UITraitCollection.currentTraitCollection.userInterfaceStyle == UIUserInterfaceStyleDark)
        {
            [[Color darkColor] setDarkColorArray];
        }
        else
        {
            [[Color darkColor] setBrightColorArray];
        }
//        self.view.backgroundColor=[Color darkColor].backColor;
//        _navibarView.backgroundColor = [Color darkColor].backColor;
//        _titleLab.textColor = [Color darkColor].navTitleColor;
    }
}

- (void)goBack:(UIButton *)sender{
    
    if (self.navigationController) {
        if ([self.navigationController.viewControllers indexOfObject:self] == 0)
        [self.navigationController dismissViewControllerAnimated:YES completion:NULL];
        else
        [self.navigationController popViewControllerAnimated:YES];
    }
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
