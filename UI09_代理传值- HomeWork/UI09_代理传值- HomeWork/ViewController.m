//
//  ViewController.m
//  UI09_代理传值- HomeWork
//
//  Created by dllo on 15/12/23.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import "ViewController.h"

#import "SecondController.h"

@interface ViewController ()<secondViewDelegate> /*第三步 签协议*/

@property (nonatomic, retain) UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor grayColor];
    
    [self creatLabel];
    
    [self creatButton];
    
    
}

- (void)creatLabel{

    self.label = [[UILabel alloc]initWithFrame:CGRectMake(100, 150, self.view.frame.size.width - 200, 40)];
    
    self.label.textAlignment = NSTextAlignmentCenter;
    
    self.label.text = @"我是 VC1 ";
    
    self.label.backgroundColor = [UIColor cyanColor];
    
    [self.view addSubview:self.label];
    
    [_label release];
}


- (void)creatButton{
    
    self.button = [UIButton buttonWithType:UIButtonTypeSystem];
    
    self.button.frame = CGRectMake(100, 300, self.view.frame.size.width - 200, 40);
    
    self.button.backgroundColor = [UIColor cyanColor];
    
    [self.button setTitle:@"下一页" forState:UIControlStateNormal];
    
    [self.view addSubview:self.button];
    
    [self.button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    
}


- (void)buttonAction:(UIButton *)button{
    
    SecondController *second = [[SecondController alloc] init];
    
    second.strReciveField = self.label.text;
    
    [self.navigationController pushViewController:second animated:YES];

    [second release];
    
    /** 第四步 指定代理人 让第一页成为指定代理人*/
    
    second.delegate = self;
    
}

    /* 第五步 代理方法 */

- (void)changeWord:(UITextField *)field{

    self.label.text = field.text; //

}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
