//
//  ViewController.m
//  UIActionSheet动作表
//
//  Created by 陈家庆 on 15-2-11.
//  Copyright (c) 2015年 shikee_Chan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn1.frame = CGRectMake(10, 80, self.view.frame.size.width-20, 30);
    btn1.backgroundColor = [UIColor purpleColor];
    [btn1 setTitle:@"按钮1" forState:UIControlStateNormal];
    [btn1 setTag:1];
    [btn1 addTarget:self action:@selector(btnClilk:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn2.frame = CGRectMake(10, 120, self.view.frame.size.width-20, 30);
    btn2.backgroundColor = [UIColor purpleColor];
    [btn2 setTitle:@"按钮2" forState:UIControlStateNormal];
    [btn2 setTag:2];
    [btn2 addTarget:self action:@selector(btnClilk:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    
}

- (void)btnClilk:(UIButton *)sender{
    if (sender.tag==1) {
        UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                      initWithTitle:@"UIActionSheet动作表"
                                      delegate:self
                                      cancelButtonTitle:@"取消 图片选择"
                                      destructiveButtonTitle:@"destructiveButtonTitle"
                                      otherButtonTitles:@"拍 照", @"相 册",nil];
        actionSheet.actionSheetStyle = UIActionSheetStyleDefault;
        [actionSheet showInView:self.view];
        actionSheet.tag = 1;
        
    }else if (sender.tag==2) {
        UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                      initWithTitle:@"UIActionSheet动作表"
                                      delegate:self
                                      cancelButtonTitle:@"取消 性别选择"
                                      destructiveButtonTitle:@"destructiveButtonTitle"
                                      otherButtonTitles:@"男", @"女", @"不 祥",nil];
        actionSheet.actionSheetStyle = UIActionSheetStyleDefault;
        [actionSheet showInView:self.view];
        actionSheet.tag = 2;
    }
}

#pragma mark- 多个UIActionSheet公用一个方法
-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{

    if (actionSheet.tag == 1) {
        
        if (buttonIndex == 1) {
            NSLog(@"图片选择：拍照");
            
        }else if (buttonIndex == 2) {
            NSLog(@"图片选择：相册");
            
        }
        
    }else if (actionSheet.tag == 2) {
        
        if (buttonIndex == 1) {
            NSLog(@"性别选择：男");
        }else if (buttonIndex == 2) {
            NSLog(@"性别选择：女");
        }else if (buttonIndex == 3) {
            NSLog(@"性别选择：不祥");
        }
        
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
