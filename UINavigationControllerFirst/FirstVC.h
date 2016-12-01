//
//  FirstVC.h
//  UINavigationControllerFirst
//
//  Created by yang ming on 2016/11/26.
//  Copyright © 2016年 yang ming. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondVC.h"

@interface FirstVC : UIViewController<UINavigationControllerDelegate,SecondVCDelegate> //
@property (strong, nonatomic) IBOutlet UITextField *rootTextField;

@end
