//
//  Mediator.m
//  Pattern
//
//  Created by zuer on 2021/2/2.
//

#import "Mediator.h"

@implementation Colleague
- (void)receive{
    NSAssert(0, @"不要直接使用抽象类");
}
- (void)send{
    NSAssert(0, @"不要直接使用抽象类");
}
@end

@implementation Mediator
- (instancetype)init{
    self = [super init];
    _colleagues = [NSMutableArray array];
    return self;
}
- (void)subscribleMsg:(id)msg fromAColleague:(Colleague *)colleague{
    colleague.mediator = self;
    [_colleagues addObject:colleague];
}
- (void)receiveMsg:(id)msg fromAColleague:(Colleague *)colleague{
    for (Colleague *c in _colleagues) {
        if ([c isEqualTo:colleague]) {
            continue;
        }
        [c receive];
    }
}
@end

@implementation ColleagueA
- (void)receive{
    NSLog(@"A 收到消息");
}
- (void)send{
    NSLog(@"A 发送了消息");
    [self.mediator receiveMsg:@"AA" fromAColleague:self];
}
@end
@implementation ColleagueB
- (void)receive{
    NSLog(@"B 收到消息");
}
- (void)send{
    NSLog(@"B 发送了消息");
    [self.mediator receiveMsg:@"BB" fromAColleague:self];
}
@end
@implementation ColleagueC
- (void)receive{
    NSLog(@"C 收到消息");
}
- (void)send{
    NSLog(@"C 发送了消息");
    [self.mediator receiveMsg:@"CC" fromAColleague:self];
}
@end


@implementation MediatorTestCase
+ (void)test{
    Mediator *m = [Mediator new];
    Colleague *a = [ColleagueA new];
    Colleague *b = [ColleagueB new];
    Colleague *c = [ColleagueC new];
    [m subscribleMsg:nil fromAColleague:a];
    [m subscribleMsg:nil fromAColleague:b];
    [m subscribleMsg:nil fromAColleague:c];    
    [a send];
}
@end
