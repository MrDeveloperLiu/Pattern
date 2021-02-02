//
//  AbstractFactory.m
//  Pattern
//
//  Created by zuer on 2021/2/2.
//

#import "AbstractFactory.h"

@implementation AbstractProductA
- (void)use{
    NSLog(@"使用A产品");
}
@end

@implementation AbstractProductB
- (void)use{
    NSLog(@"使用B产品");
}
@end

@implementation AbstractBuierA
- (void)buy{
    NSLog(@"购买者A");
}
@end

@implementation AbstractBuierB
- (void)buy{
    NSLog(@"购买者B");
}
@end


@implementation AbstractFactoryA
- (id<AbstractProduct>)product{
    return [AbstractProductA new];
}
- (id<AbstractBuier>)buier{
    return [AbstractBuierA new];
}
@end

@implementation AbstractFactoryB
- (id<AbstractProduct>)product{
    return [AbstractProductB new];
}
- (id<AbstractBuier>)buier{
    return [AbstractBuierB new];
}
@end

@implementation AbstractFactoryTestCase
+ (void)test{
    
    AbstractFactoryA *a = [AbstractFactoryA new];
    [[a product] use];
    [[a buier] buy];
    
    AbstractFactoryB *b = [AbstractFactoryB new];
    [[b product] use];
    [[b buier] buy];
}
@end
