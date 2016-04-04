//
//  AppThemeManager.h
//  Singlton Theme Magagement
//
//  Created by Sagar Shirbhate on 31/03/16.
//  Copyright © 2016 Sagar Shirbhate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface AppThemeManager : NSObject
// Add Properties you wanna add

@property(nonatomic,strong)UIFont * NavigationBar;
@property(nonatomic,strong)UIFont * titleFont;
@property(nonatomic,strong)UIFont * subTitleFont;
@property(nonatomic,strong)UIFont * normalFont;

@property(nonatomic,strong)UIColor * navigationBarColor;
@property(nonatomic,strong)UIColor * navigationFontColor;

@property(nonatomic,strong)UIColor * bacgroundViewColor;


@end
