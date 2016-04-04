//
//  ViewController.m
//  Singlton Theme Magagement
//
//  Created by Sagar Shirbhate on 31/03/16.
//  Copyright © 2016 Sagar Shirbhate. All rights reserved.
//

#import "ViewController.h"
#import "AppThemeManager.h"
@interface ViewController ()

@end

@implementation ViewController


-(void)viewWillAppear:(BOOL)animated{
    
    // Set Values as you want
    AppThemeManager * themeObj =[[AppThemeManager alloc]init];
    self.navigationController.navigationBar.barTintColor =  themeObj.navigationBarColor;
    self.navigationController.navigationBar.translucent = NO;
    self.view.backgroundColor=themeObj.bacgroundViewColor;
}

- (void)viewDidLoad {
    [super viewDidLoad];


    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
