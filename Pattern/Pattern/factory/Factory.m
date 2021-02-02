//
//  Factory.m
//  Pattern
//
//  Created by zuer on 2021/2/2.
//

#import "Factory.h"

@implementation Product
- (void)use{
    @throw [NSException exceptionWithName:@"Factory-Exception" reason:@"不要直接使用Factory类" userInfo:nil];
}
@end

@implementation ProductA
- (void)use{
    NSLog(@"FactoryA消费");
}
@end

@implementation ProductB
- (void)use{
    NSLog(@"FactoryB消费");
}
@end

@implementation Factory
- (Product *)product{
    return [Product new];
}
@end

@implementation FactoryA
- (Product *)product{
    return [ProductA new];
}
@end

@implementation FactoryB
- (Product *)product{
    return [ProductB new];
}
@end


@implementation FactoryTestCase

+ (void)test{
    [[[FactoryA new] product] use];

    [[[FactoryB new] product] use];
}
@end
