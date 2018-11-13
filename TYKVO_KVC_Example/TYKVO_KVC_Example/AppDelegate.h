//
//  AppDelegate.h
//  TYKVO_KVC_Example
//
//  Created by 汤义 on 2018/11/13.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

