//
//  TwoViewController.m
//  使用block的回调传值
//
//  Created by mac on 2018/10/13.
//  Copyright © 2018 姜凯文. All rights reserved.
//

#import "TwoViewController.h"

@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    _twoTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 300, 200, 50)];
    _twoTextField.backgroundColor = [UIColor whiteColor];

    [self.view addSubview:_twoTextField];
    
    _twoButton = [[UIButton alloc] initWithFrame:CGRectMake(50, 400, 200, 50)];
    [_twoButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_twoButton setTitle:@"GO" forState:UIControlStateNormal];
    [_twoButton addTarget:self action:@selector(touch) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_twoButton];
}

- (void) touch {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)returnText:(ReturnTextBlock)block {
    self.returnTextBlock = block;
}

- (void)viewWillDisappear:(BOOL)animated {
    if (self.returnTextBlock != nil) {
        self.returnTextBlock(self.twoTextField.text);
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
