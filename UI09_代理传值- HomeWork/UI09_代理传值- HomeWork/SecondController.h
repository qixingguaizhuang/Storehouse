//
//  SecondController.h
//  UI09_代理传值- HomeWork
//
//  Created by dllo on 15/12/23.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <UIKit/UIKit.h>

/* 第一步 创建代理 */

@protocol secondViewDelegate <NSObject>

- (void)changeWord:(UITextField *) field;

@end

@interface SecondController : UIViewController

@property (nonatomic ,retain)NSString *strReciveField;

/* 第二步 声明代理协议属性 */

@property (nonatomic , retain) id<secondViewDelegate>delegate;

@end
