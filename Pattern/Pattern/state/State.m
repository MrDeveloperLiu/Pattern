//
//  State.m
//  Pattern
//
//  Created by zuer on 2021/2/2.
//

#import "State.h"

@implementation StateA
- (void)onStateEnter{
    NSLog(@"进入状态A");
}
- (void)onStateLeave{
    NSLog(@"离开状态A");
}
- (void)onStateEvent:(id)event{
    NSLog(@"状态A接收事件");
}

@end
@implementation StateB
- (void)onStateEnter{
    NSLog(@"进入状态B");
}
- (void)onStateLeave{
    NSLog(@"离开状态B");
}
- (void)onStateEvent:(id)event{
    NSLog(@"状态B接收事件");
}
@end
@implementation StateContext
- (void)setState:(id<State>)state{
    [_state onStateLeave];
    _state = state;
    [_state onStateEnter];
}
- (void)publishEvent:(id)event{
    [_state onStateEvent:event];
}
@end



@implementation StateTestCase
+ (void)test{
    
    StateContext *ctx = [StateContext new];    
    ctx.state = [StateA new];
    [ctx publishEvent:nil];
    ctx.state = [StateB new];
    [ctx publishEvent:nil];
}
@end
