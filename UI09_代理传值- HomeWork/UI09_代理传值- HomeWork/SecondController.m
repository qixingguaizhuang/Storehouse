//
//  SecondController.m
//  UI09_代理传值- HomeWork
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
    
    /** 将 label 的值传给了 textfield */
    
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
    
//    ViewController *vc = [self.navigationController.viewControllers firstObject];
//    
//    vc.label.text = self.textField.text;
    
    /* 第六步 调用代理方法 当前的代理使用自身的 delegate 方法,相当于妈妈和保姆签订协议后,妈妈告知保姆要执行什么按照协议中写得,例如洗衣服*/
    
    [self.delegate changeWord:self.textField];
    
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
