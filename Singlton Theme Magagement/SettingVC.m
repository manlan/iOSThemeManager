//
//  SettingVC.m
//  Singlton Theme Magagement
//
//  Created by Sagar Shirbhate on 31/03/16.
//  Copyright © 2016 Sagar Shirbhate. All rights reserved.
//

#import "SettingVC.h"

@interface SettingVC ()

@end

@implementation SettingVC

- (void)viewDidLoad {
    [super viewDidLoad];

    AppThemeManager * themeObj =[[AppThemeManager alloc]init];
    self.navigationController.navigationBar.barTintColor =  themeObj.navigationBarColor;
    self.navigationController.navigationBar.translucent = NO;
    
    self.view.backgroundColor = themeObj.bacgroundViewColor;
    
}

// SetWhite Theme
-(IBAction)setWhite:(id)sender{
    AppThemeManager * themeObj =[[AppThemeManager alloc]init];
    themeObj.NavigationBar =[UIFont systemFontOfSize:10];
    themeObj.titleFont =[UIFont systemFontOfSize:10];
    themeObj.subTitleFont =[UIFont systemFontOfSize:10];
    themeObj.normalFont =[UIFont systemFontOfSize:10];
    themeObj.navigationBarColor =[UIColor blackColor];
    themeObj.navigationFontColor =[UIColor whiteColor];
    themeObj.bacgroundViewColor =[UIColor whiteColor];
    

    NSData *encodedObject = [NSKeyedArchiver archivedDataWithRootObject:themeObj];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:encodedObject forKey:@"theme"];
    [defaults synchronize];
    
}
// Set Black Theme
-(IBAction)setBlack:(id)sender{
    AppThemeManager * themeObj =[[AppThemeManager alloc]init];
    themeObj.NavigationBar =[UIFont systemFontOfSize:20];
    themeObj.titleFont =[UIFont systemFontOfSize:20];
    themeObj.subTitleFont =[UIFont systemFontOfSize:20];
    themeObj.normalFont =[UIFont systemFontOfSize:20];
    themeObj.navigationBarColor =[UIColor whiteColor];
    themeObj.navigationFontColor =[UIColor blackColor];
    themeObj.bacgroundViewColor =[UIColor blackColor];
    
    NSData *encodedObject = [NSKeyedArchiver archivedDataWithRootObject:themeObj];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:encodedObject forKey:@"theme"];
    [defaults synchronize];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
