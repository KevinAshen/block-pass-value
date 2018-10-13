//
//  TwoViewController.h
//  使用block的回调传值
//
//  Created by mac on 2018/10/13.
//  Copyright © 2018 姜凯文. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^ReturnTextBlock)(NSString *showText);
//定义了一种块类型，没有返回值，参数是NSString型

NS_ASSUME_NONNULL_BEGIN

@interface TwoViewController : UIViewController

@property (nonatomic, strong) UITextField *twoTextField;
@property (nonatomic, strong) UIButton *twoButton;
@property (nonatomic, copy) ReturnTextBlock returnTextBlock;
//将其实例化

- (void)returnText:(ReturnTextBlock)block;


@end

NS_ASSUME_NONNULL_END
