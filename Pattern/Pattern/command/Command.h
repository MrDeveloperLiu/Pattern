//
//  Command.h
//  Pattern
//
//  Created by zuer on 2021/2/2.
//

#import <Foundation/Foundation.h>
#import "TestCase.h"

NS_ASSUME_NONNULL_BEGIN

@interface Receiver : NSObject
- (void)action;
@end

@interface Command : NSObject
@property (nonatomic, strong) Receiver *receiver;
- (void)execute;
@end

@interface Invoker : NSObject
@property (nonatomic, strong) Command *command;
- (instancetype)initWithCommand:(Command *)command;
- (void)invoke;
@end

@interface ReceiverA : Receiver
@end

@interface CommandA : Command
@end

@interface CommandTestCase : NSObject <TestCase>

@end

NS_ASSUME_NONNULL_END
