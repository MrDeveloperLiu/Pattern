//
//  Proxy.h
//  Pattern
//
//  Created by zuer on 2021/2/2.
//

#import <Foundation/Foundation.h>
#import "TestCase.h"
NS_ASSUME_NONNULL_BEGIN

@protocol ProxyObject <NSObject>
- (void)request;
@end

@interface RealProxyObject : NSObject <ProxyObject>
@end

@interface Proxy : NSObject <ProxyObject>
@property (nonatomic, strong) RealProxyObject *real;
@end

@interface ProxyTestCase : NSObject <TestCase>
@end

NS_ASSUME_NONNULL_END
