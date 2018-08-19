//
//  AppDelegate.h
//  SOCKS
//
//  Created by Robert Xiao on 8/19/18.
//  Copyright © 2018 Robert Xiao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

+(NSString *)deviceIPAddress;

@end

