//
//  Decorator.h
//  Pattern
//
//  Created by zuer on 2021/2/2.
//

#import <Foundation/Foundation.h>
#import "TestCase.h"
NS_ASSUME_NONNULL_BEGIN

@protocol DecoratorComponent <NSObject>
- (void)execute;
@end

@interface DecoratorComponentA : NSObject <DecoratorComponent>
@end

@interface Decorator : NSObject
@property (nonatomic, strong) id<DecoratorComponent> component;
- (instancetype)initWithComponent:(id<DecoratorComponent>)component;
- (void)request;
@end

@interface DecoratorA : Decorator
@end

@interface DecoratorTestCase : NSObject <TestCase>
@end


NS_ASSUME_NONNULL_END
