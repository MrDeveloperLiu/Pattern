//
//  ResponseChain.h
//  Pattern
//
//  Created by zuer on 2021/2/2.
//

#import <Foundation/Foundation.h>
#import "TestCase.h"

NS_ASSUME_NONNULL_BEGIN

@interface ResponseChainHandler : NSObject
@property (nonatomic, strong) ResponseChainHandler *next;
- (void)handleRequest:(id)request;
- (BOOL)handleable:(id)req;
@end

@interface ResponseChainHandlerA : ResponseChainHandler

@end

@interface ResponseChainHandlerB : ResponseChainHandler

@end

@interface ResponseChainTestCase : NSObject <TestCase>

@end


NS_ASSUME_NONNULL_END
