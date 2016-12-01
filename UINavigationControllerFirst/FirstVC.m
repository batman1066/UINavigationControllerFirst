//
//  FirstVC.m
//  UINavigationControllerFirst
//
//  Created by yang ming on 2016/11/26.
//  Copyright © 2016年 yang ming. All rights reserved.
//

#import "FirstVC.h"


@interface FirstVC ()

@end

@implementation FirstVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //NSLog(@"%@",self.navigationController.viewControllers);
    
    self.navigationItem.title=@"FirstVC";
    self.navigationItem.prompt=@"欢迎来到FirstVC";
    
    //self.navigationController.delegate=self;
    //sself.view.backgroundColor=[UIColor redColor];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)toSecond:(id)sender {
    UIStoryboard *storyBoard= [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    SecondVC *secondVC=[storyBoard instantiateViewControllerWithIdentifier:@"secondVC"];
    //传值
    secondVC.text=self.rootTextField.text;
    //设置代理
    secondVC.delegate=self;
    [self.navigationController pushViewController:secondVC animated:YES];
}
- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    NSLog(@"%s",__func__);
}
- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    NSLog(@"%s",__func__);
}
//
-(void)secondVC:(SecondVC *)secondVC returnRootVcWithNewString:(NSString *)string{
    //NSLog(@"%s",__func__);
    NSLog(@"%@",string);
    //self.rootTextField.text = string;
    [self.rootTextField setText:string];
    
}
@end
