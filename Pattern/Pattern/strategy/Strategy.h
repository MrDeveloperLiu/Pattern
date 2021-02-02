//
//  Strategy.h
//  Pattern
//
//  Created by zuer on 2021/2/2.
//

#import <Foundation/Foundation.h>
#import "TestCase.h"

NS_ASSUME_NONNULL_BEGIN

@protocol Strategy <NSObject>

- (void)request;

@end

@interface StrategyA : NSObject <Strategy>

@end
@interface StrategyB : NSObject <Strategy>

@end

@interface StrategyContext : NSObject
@property (nonatomic, strong) id<Strategy> strategy;
- (instancetype)initWithStrategy:(id<Strategy>)strategy;
- (void)execute;
@end

@interface StrategyTestCase : NSObject <TestCase>
@end

NS_ASSUME_NONNULL_END
