//
//  SecondVC.h
//  UINavigationControllerFirst
//
//  Created by yang ming on 2016/11/26.
//  Copyright © 2016年 yang ming. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SecondVC;
@protocol SecondVCDelegate <NSObject>
-(void) secondVC:(SecondVC *) secondVC returnRootVcWithNewString:(NSString *) string;
@end

@interface SecondVC : UIViewController
@property (nonatomic,copy) NSString *text;
@property (nonatomic,strong) id <SecondVCDelegate> delegate;
@end

