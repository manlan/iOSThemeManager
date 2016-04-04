//
//  AppThemeManager.m
//  Singlton Theme Magagement
//
//  Created by Sagar Shirbhate on 31/03/16.
//  Copyright © 2016 Sagar Shirbhate. All rights reserved.
//

#import "AppThemeManager.h"

@implementation AppThemeManager

static AppThemeManager *singletonObject = nil;

/// To call shared instance
+ (id) sharedSampleSingletonClass
{
    if (! singletonObject) {
        
        singletonObject = [[AppThemeManager alloc] init];
    }
    return singletonObject;
}

// Initialize class object
- (id)init
{
    if (! singletonObject) {
        singletonObject = [super init];
    }
    return singletonObject;
}

 //Encode properties, other class variables, etc
- (void)encodeWithCoder:(NSCoder *)encoder {
   
    [encoder encodeObject:_NavigationBar forKey:@"NavigationBar"];
    [encoder encodeObject:_titleFont forKey:@"titleFont"];
    [encoder encodeObject:_subTitleFont forKey:@"subTitleFont"];
    [encoder encodeObject:_navigationBarColor forKey:@"navigationBarColor"];
    [encoder encodeObject:_navigationFontColor forKey:@"navigationFontColor"];
    [encoder encodeObject:_bacgroundViewColor forKey:@"bacgroundViewColor"];

}

 //Encode properties, other class variables, etc
- (id)initWithCoder:(NSCoder *)decoder {
    if((self = [super init])) {
        
         _NavigationBar =  [decoder decodeObjectForKey:@"NavigationBar"];
         _titleFont =  [decoder decodeObjectForKey:@"titleFont"];
         _subTitleFont =  [decoder decodeObjectForKey:@"subTitleFont"];
         _navigationBarColor =  [decoder decodeObjectForKey:@"navigationBarColor"];
         _navigationFontColor =  [decoder decodeObjectForKey:@"navigationFontColor"];
         _bacgroundViewColor =  [decoder decodeObjectForKey:@"bacgroundViewColor"];
        
    }
    return self;
}

@end
