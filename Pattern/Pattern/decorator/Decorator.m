//
//  Decorator.m
//  Pattern
//
//  Created by zuer on 2021/2/2.
//

#import "Decorator.h"


@implementation DecoratorComponentA
- (void)execute{
    NSLog(@"组件执行");
}
@end

@implementation Decorator
- (instancetype)initWithComponent:(id<DecoratorComponent>)component{
    self = [super init];
    _component = component;
    return self;
}
- (void)request{
    [_component execute];
}
@end


@implementation DecoratorA
- (void)request{
    [super request];
    [self doSth];
}
- (void)doSth{
    NSLog(@"做了什么");
}
@end

@implementation DecoratorTestCase

+ (void)test{
    
    DecoratorA *a = [[DecoratorA alloc] initWithComponent:[DecoratorComponentA new]];
    [a request];
    
}

@end
