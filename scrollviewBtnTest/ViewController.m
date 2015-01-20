//
//  ViewController.m
//  scrollviewBtnTest
//
//  Created by James on 2015/1/20.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _sclVW.delegate = self;
    
    _sclVW.delaysContentTouches = NO;
    [_sclVW setCanCancelContentTouches:NO];
    _sclVW.userInteractionEnabled = YES;
    
    
    int btnWidth = 80,btnHigh=50;
    for( int i = 0 ; i < 50 ; i++ )
    {
        
        UIButton *button  =[UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button addTarget:self action:@selector(btnSendTag:) forControlEvents:UIControlEventTouchUpInside];
        [button setTitle:[NSString stringWithFormat:@"%d",i] forState:UIControlStateNormal];
        button.tag = i;
        button.titleLabel.numberOfLines = 0;
        button.titleLabel.lineBreakMode = NSLineBreakByCharWrapping;
        button.titleLabel.textAlignment = NSTextAlignmentCenter;
        button.userInteractionEnabled = YES;
        [button setEnabled:YES];
        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [button setBackgroundColor:[UIColor darkGrayColor]];
        
        if( i < 3)
        {
            button.frame = CGRectMake( i *(btnWidth +  20),  0 , 80,50 );
        }
        else
        {
            button.frame = CGRectMake( (i%3) *(btnWidth +  20), (i/3) *(btnHigh + 20)  , 80,50 );
            
        }
        [_contentVW addSubview:button];
        
    }
}

-(void) btnSendTag:(UIButton *)sender
{
    NSLog(@"btn click:%li",(long)sender.tag);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
