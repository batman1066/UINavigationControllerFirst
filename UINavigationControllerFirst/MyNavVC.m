//
//  MyNavVC.m
//  UINavigationControllerFirst
//
//  Created by yang ming on 2016/11/26.
//  Copyright © 2016年 yang ming. All rights reserved.
//

#import "MyNavVC.h"

@interface MyNavVC ()

@end

@implementation MyNavVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationBar.barTintColor=[UIColor yellowColor];
    self.navigationBar.tintColor=[UIColor redColor];
    //self.navigationBar.barStyle=UIBarStyleBlackTranslucent;
    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"1"] forBarMetrics:UIBarMetricsDefault];
    
    //self.delegate=self.topViewController;
    
    
//    @property(nonatomic) UIBarStyle barStyle ; // default is UIBarStyleDefault (blue)
//    @property(nullable,nonatomic,copy) NSArray *items; //toolbar上的按钮
//    @property(null_resettable, nonatomic,strong) UIColor *tintColor;
//    @property(nullable, nonatomic,strong) UIColor *barTintColor ;//背景颜色
//    - (void)setBackgroundImage:(nullable UIImage *)backgroundImage forToolbarPosition:(UIBarPosition)topOrBottom barMetrics:(UIBarMetrics)barMetrics; //设置背景图片
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)navigationBar:(UINavigationBar *)navigationBar shouldPushItem:(UINavigationItem *)item{
    NSLog(@"%s",__func__);
    return  YES;
}// called to push. return NO not to.
- (void)navigationBar:(UINavigationBar *)navigationBar didPushItem:(UINavigationItem *)item{
    NSLog(@"%s",__func__);
    
}// called at end of animation of push or

@end
