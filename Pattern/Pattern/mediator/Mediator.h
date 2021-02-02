//
//  Mediator.h
//  Pattern
//
//  Created by zuer on 2021/2/2.
//

#import <Foundation/Foundation.h>
#import "TestCase.h"

NS_ASSUME_NONNULL_BEGIN
@class Mediator;

@interface Colleague : NSObject
@property (nonatomic, weak) Mediator *mediator;
- (void)receive;
- (void)send;
@end


@interface Mediator : NSObject
@property (nonatomic, strong) NSMutableArray *colleagues;
- (void)subscribleMsg:(id)msg fromAColleague:(Colleague *)colleague;
- (void)receiveMsg:(id)msg fromAColleague:(Colleague *)colleague;
@end

@interface ColleagueA : Colleague
@end
@interface ColleagueB : Colleague
@end
@interface ColleagueC : Colleague
@end

@interface MediatorTestCase : NSObject <TestCase>

@end

NS_ASSUME_NONNULL_END
