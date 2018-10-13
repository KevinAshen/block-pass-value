//
//  OneViewController.m
//  使用block的回调传值
//
//  Created by mac on 2018/10/13.
//  Copyright © 2018 姜凯文. All rights reserved.
//

#import "OneViewController.h"
#import "TwoViewController.h"

@interface OneViewController ()

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor purpleColor];
    
    _oneTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 300, 200, 50)];
    _oneTextField.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_oneTextField];
    
    _oneButton = [[UIButton alloc] initWithFrame:CGRectMake(50, 400, 200, 50)];
    [_oneButton setTitle:@"GO" forState:UIControlStateNormal];
    [_oneButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_oneButton addTarget:self action:@selector(touch) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_oneButton];
}

- (void) touch {
    TwoViewController *twoViewController = [[TwoViewController alloc] init];
    //调用returnText方法，读取参数中的字符串，放到textField上
    [twoViewController returnText:^(NSString *showText) {
        self.oneTextField.text = showText;
    }];
    [self presentViewController:twoViewController animated:YES completion:nil];
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
