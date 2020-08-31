//
//  DTBaseViewController.h
//  dark
//
//  Created by 大头科技 on 2020/4/26.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DTBaseViewController : UIViewController
@property (nonatomic, strong) UIView *navibarView;
@property (nonatomic, strong) UIButton *leftBtn;
@property (nonatomic, strong) UILabel *titleLab;
@property (nonatomic, strong) UIButton *rightBtn;
// 标题
- (void)setUpViewsWithTittle1:(NSString *)tittle;
// 标题 返回按钮
- (void)setUpViewsWithTittle:(NSString *)tittle;
// 文字右边按钮
- (void)customTitleRightBtnWith:(NSString *)title Target:(id)target Action:(SEL)action;
// 图片右边按钮
- (void)customImgRightBtnWith:(NSString *)imgName Target:(id)target Action:(SEL)action;

// 标题 改变返回按钮事件
- (void)setUpleftViewsWithTittle:(NSString *)tittle Target:(id)target Action:(SEL)action;
@end

NS_ASSUME_NONNULL_END
