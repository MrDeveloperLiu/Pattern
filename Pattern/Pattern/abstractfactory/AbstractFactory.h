//
//  AbstractFactory.h
//  Pattern
//
//  Created by zuer on 2021/2/2.
//

#import <Foundation/Foundation.h>
#import "TestCase.h"
NS_ASSUME_NONNULL_BEGIN

@protocol AbstractProduct <NSObject>
- (void)use;
@end

@protocol AbstractBuier <NSObject>
- (void)buy;
@end

@protocol AbstractFactory <NSObject>
- (id<AbstractProduct>)product;
- (id<AbstractBuier>)buier;
@end

@interface AbstractProductA : NSObject <AbstractProduct>
@end

@interface AbstractProductB : NSObject <AbstractProduct>
@end

@interface AbstractBuierA : NSObject <AbstractBuier>
@end

@interface AbstractBuierB : NSObject <AbstractBuier>
@end

@interface AbstractFactoryA : NSObject <AbstractFactory>;
@end

@interface AbstractFactoryB : NSObject <AbstractFactory>;
@end

@interface AbstractFactoryTestCase : NSObject <TestCase>
@end

NS_ASSUME_NONNULL_END
