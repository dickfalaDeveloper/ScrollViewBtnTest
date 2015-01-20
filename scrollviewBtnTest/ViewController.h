//
//  ViewController.h
//  scrollviewBtnTest
//
//  Created by James on 2015/1/20.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIView *contentVW;
@property (weak, nonatomic) IBOutlet UIScrollView *sclVW;


@end

