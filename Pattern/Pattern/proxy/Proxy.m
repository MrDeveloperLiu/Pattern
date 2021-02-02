//
//  Proxy.m
//  Pattern
//
//  Created by zuer on 2021/2/2.
//

#import "Proxy.h"

@implementation RealProxyObject
- (void)request{
    NSLog(@"请求");
}
@end


@implementation Proxy
- (void)request{
    _real = [RealProxyObject new];
    NSLog(@"before proxy");
    [_real request];
    NSLog(@"end proxy");
}
@end

@implementation ProxyTestCase

+ (void)test{
    [[Proxy new] request];
}

@end
