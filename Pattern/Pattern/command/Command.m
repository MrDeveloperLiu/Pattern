//
//  Command.m
//  Pattern
//
//  Created by zuer on 2021/2/2.
//

#import "Command.h"

@implementation Receiver
- (void)action{
    NSAssert(0, @"请用子类实现");
}
@end
@implementation Command
- (void)execute{
    NSAssert(self.receiver, @"receiver 不能为空");
    [self.receiver action];
}
@end

@implementation Invoker
- (instancetype)initWithCommand:(Command *)command{
    self = [super init];
    _command = command;
    return self;
}
- (void)invoke{
    NSLog(@"调用者执行");
    [_command execute];
}
@end

@implementation ReceiverA
- (void)action{
    NSLog(@"ReceiverA 收到了命令");
}
@end

@implementation CommandA
- (instancetype)init{
    self = [super init];
    self.receiver = [ReceiverA new];
    return self;
}
@end


@implementation CommandTestCase
+ (void)test{
    Invoker *invoker = [[Invoker alloc] initWithCommand:[CommandA new]];
    [invoker invoke];
}
@end
