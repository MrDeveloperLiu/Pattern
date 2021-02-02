//
//  Factory.h
//  Pattern
//
//  Created by zuer on 2021/2/2.
//

#import <Foundation/Foundation.h>
#import "TestCase.h"
NS_ASSUME_NONNULL_BEGIN


@interface Product : NSObject
- (void)use;
@end

@interface ProductA : Product
@end

@interface ProductB : Product
@end

@interface Factory : NSObject
- (Product *)product;
@end

@interface FactoryA : Factory
@end

@interface FactoryB : Factory
@end



@interface FactoryTestCase : NSObject <TestCase>
@end

NS_ASSUME_NONNULL_END
