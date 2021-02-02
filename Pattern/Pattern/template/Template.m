//
//  Template.m
//  Pattern
//
//  Created by zuer on 2021/2/2.
//

#import "Template.h"

@implementation Template
- (void)abstractFuntion{
    @throw [NSException exceptionWithName:@"错误" reason:@"不要直接使用" userInfo:nil];
}
@end

@implementation TemplateA

- (void)abstractFuntion{
    NSLog(@"抽象方法被A调用");
}

@end

@implementation TemplateTestCase
+ (void)test{
    [[TemplateA new] abstractFuntion];
}
@end
