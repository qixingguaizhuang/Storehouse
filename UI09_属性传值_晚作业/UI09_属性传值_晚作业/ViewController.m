//
//  ViewController.m
//  UI09_属性传值_晚作业
//
//  Created by dllo on 15/12/23.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import "ViewController.h"

#import "SecondController.h"

@interface ViewController ()

@property (nonatomic, retain)UIButton *button;

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

    [self.navigationController pushViewController:second animated:YES];
    
    second.strReciveField = self.label.text;/*label 的值赋值给了 第二页的 textField 的值*/
    
    [second release];

}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
