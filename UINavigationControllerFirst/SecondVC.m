//
//  SecondVC.m
//  UINavigationControllerFirst
//
//  Created by yang ming on 2016/11/26.
//  Copyright © 2016年 yang ming. All rights reserved.
//

#import "SecondVC.h"
#import "FirstVC.h"

@interface SecondVC ()

@end

@implementation SecondVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.barTintColor=[UIColor greenColor];
    //NSLog(@"%@",self.navigationController.viewControllers);
    //self.navigationItem.title=@"SecondVC";
    self.navigationItem.prompt=@"欢迎来到SecondVC";
    
    
    UIBarButtonItem *leftBarButtonItem=[[UIBarButtonItem alloc] initWithTitle:@"点左" style:UIBarButtonItemStylePlain target:self action:@selector(clickLeft:)];
//    UIBarButtonItem *rightBarButtonItem=[[UIBarButtonItem alloc] initWithTitle:@"点右" style:UIBarButtonItemStylePlain target:self action:@selector(clickRight)];
    UIBarButtonItem *rightBarButtonItem=[[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"3"] style:UIBarButtonItemStylePlain target:self action:@selector(clickRight)];

                                         
    self.navigationItem.leftBarButtonItem=leftBarButtonItem;
    self.navigationItem.rightBarButtonItem=rightBarButtonItem;
    UIView *titleView= [[UIView alloc] initWithFrame:CGRectMake(50
                                                                , 50, 50, 50)];
    UILabel *a=[[UILabel alloc] initWithFrame:CGRectMake(0
                                                                 , 0, 50, 50)];
    [a setText:@"haha"];
    titleView.backgroundColor=[UIColor greenColor];
    [titleView addSubview:a];
    self.navigationItem.titleView=titleView;
    
    NSLog(@"%@",self.text);
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)toFirstVC:(id)sender {

   
}
- (void)clickLeft:(id)sender{
    //NSLog(@"%s",__func__);
    //    UIStoryboard *storyBoard= [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    //    FirstVC *firstVC=[storyBoard instantiateViewControllerWithIdentifier:@"firstVC"];
    //if([self.delegate respondsToSelector:@selector(secondVC:returnRootVcWithNewString:)]){
        [self.delegate secondVC:self returnRootVcWithNewString:@"back"];
    //}
    
    self.navigationController.navigationBar.barTintColor=[UIColor yellowColor];
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)clickRight{
    //NSLog(@"%s",__func__);
}

@end
