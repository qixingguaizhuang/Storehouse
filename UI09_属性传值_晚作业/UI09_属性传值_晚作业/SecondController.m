//
//  SecondController.m
//  UI09_属性传值_晚作业
//
//  Created by dllo on 15/12/23.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import "SecondController.h"

#import "ViewController.h"

@interface SecondController ()

@property (nonatomic, retain)UITextField *textField;

@property (nonatomic, retain)UIButton *button;

@end

@implementation SecondController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor brownColor];
    
    [self creatTextField];
    
    [self creatButton];

}


- (void)creatTextField{

    self.textField = [[UITextField alloc]initWithFrame:CGRectMake(100, 150, self.view.frame.size.width - 200, 40)];
    
    self.textField.backgroundColor = [UIColor lightGrayColor];
    
    self.textField.textAlignment = NSTextAlignmentCenter;
    
    [self.view addSubview:self.textField];
    
    [_textField release];
    
    /* 接收,reciveField 接收的 label 的值,赋值给了textField 值 */
    
    self.textField.text = self.strReciveField;

}


- (void)creatButton{
    
    self.button = [UIButton buttonWithType:UIButtonTypeSystem];
    
    self.button.frame = CGRectMake(100, 350, self.view.frame.size.width - 200, 40) ;
    
    self.button.backgroundColor = [UIColor lightGrayColor];
    
    [self.button setTitle:@"返回" forState:UIControlStateNormal];
    
    [self.view addSubview:self.button];
    
    [self.button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];

}


- (void)buttonAction:(UIButton *) button{
    
    // 数组中的第一个 vc 对象
    
     ViewController *vc = [self.navigationController.viewControllers firstObject];
    
    /* textfield 的值赋值给了上一页的 label 中 */
    
     vc.label.text = self.textField.text;
    
    [self.navigationController popViewControllerAnimated:YES];

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
