//
//  UserIntent.m
//  JDRouter
//
//  Created by 王金东 on 2017/7/28.
//  Copyright © 2017年 王金东. All rights reserved.
//

#import "UserIntent.h"
#import "JDNextViewController.h"

@implementation UserIntent


- (id)message:(JDIntentData *)data {
    NSLog(@"%@",data.userInfo);
    return nil;
}

- (id)gotoNext:(JDIntentData *)data {
    JDNextViewController *v = [[JDNextViewController alloc] init];
    UIViewController *vc = data.from;
    [vc.navigationController pushViewController:v animated:YES];
    return v;
}

- (id)gotoNext:(JDIntentData *)data  completion:(JDIntentCompletion)completion {
    JDNextViewController *v = [[JDNextViewController alloc] init];
    v.name = @"JD";
    UIViewController *vc = data.from;
    [vc.navigationController pushViewController:v animated:YES];
    if(completion)completion(@"这里自己传值回去！");
    return v;
}

- (id)notFound:(JDIntentData *)data {
    return nil;
}


@end
