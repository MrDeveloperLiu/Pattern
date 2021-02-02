//
//  State.h
//  Pattern
//
//  Created by zuer on 2021/2/2.
//

#import <Foundation/Foundation.h>
#import "TestCase.h"

NS_ASSUME_NONNULL_BEGIN

@protocol State <NSObject>
- (void)onStateEnter;
- (void)onStateLeave;
- (void)onStateEvent:(id)event;
@end

@interface StateContext : NSObject
@property (nonatomic, strong) id<State> state;
- (void)publishEvent:(id)event;
@end

@interface StateA : NSObject <State>

@end

@interface StateB : NSObject <State>

@end


@interface StateTestCase : NSObject <TestCase>

@end
NS_ASSUME_NONNULL_END
