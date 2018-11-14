//
//  TYKVOViewController.m
//  TYKVO_KVC_Example
//
//  Created by 汤义 on 2018/11/14.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import "TYKVOViewController.h"
#import "TYTemplate1.h"
@interface TYKVOViewController ()

@end

@implementation TYKVOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self simpleKVO];
}

- (void)simpleKVO{
    TYTemplate1 *e1 = [[TYTemplate1 alloc] init];
    TYTemplate1 *e2 = [[TYTemplate1 alloc] init];
    e1.age = 1;
    e1.age = 2;
    e2.age = 3;
    //监听age属性
    NSKeyValueObservingOptions options = NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld;
    
    [e1 addObserver:self forKeyPath:@"age" options:options context:nil];
    e1.age = 9;
    [e1 removeObserver:self forKeyPath:@"age"];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
     NSLog(@"监听到%@的%@改变了%@", object, keyPath,change);
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
