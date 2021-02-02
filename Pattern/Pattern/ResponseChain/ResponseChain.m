//
//  ResponseChain.m
//  Pattern
//
//  Created by zuer on 2021/2/2.
//

#import "ResponseChain.h"

@implementation ResponseChainHandler
- (void)handleRequest:(id)request{
    if ([self handleable:request]) {
        return;
    }
    if (!self.next) {
        NSLog(@"没有人能处理请求");
        return;
    }
    [self.next handleRequest:request];
}
- (BOOL)handleable:(id)req{ return NO; }
@end


@implementation ResponseChainHandlerA
- (BOOL)handleable:(id)req{
    NSLog(@"A不能处理");
    return NO;
}
@end
@implementation ResponseChainHandlerB
- (BOOL)handleable:(id)req{
    NSLog(@"B能处理");
    return YES;
}
@end

@implementation ResponseChainTestCase
+ (void)test{
    
    ResponseChainHandler *ha = [ResponseChainHandlerA new];
    ResponseChainHandler *hb = [ResponseChainHandlerB new];
    ha.next = hb;
    
    [ha handleRequest:nil];
}
@end
