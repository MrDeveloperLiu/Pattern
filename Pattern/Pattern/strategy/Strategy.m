//
//  Strategy.m
//  Pattern
//
//  Created by zuer on 2021/2/2.
//

#import "Strategy.h"

@implementation StrategyA
- (void)request{
    NSLog(@"策略A");
}
@end
@implementation StrategyB
- (void)request{
    NSLog(@"策略B");
}
@end
@implementation StrategyContext
- (instancetype)initWithStrategy:(id<Strategy>)strategy{
    self = [super init];
    _strategy = strategy;
    return self;
}
- (void)execute{
    [_strategy request];
}
@end

@implementation StrategyTestCase
+ (void)test{
    
    StrategyContext *ctxA = [[StrategyContext alloc] initWithStrategy:[StrategyA new]];
    [ctxA execute];
    StrategyContext *ctxB = [[StrategyContext alloc] initWithStrategy:[StrategyB new]];
    [ctxB execute];
}
@end
