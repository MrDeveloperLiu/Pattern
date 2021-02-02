//
//  Adapter.h
//  Pattern
//
//  Created by zuer on 2021/2/2.
//

#import <Foundation/Foundation.h>
#import "TestCase.h"
NS_ASSUME_NONNULL_BEGIN

@protocol AdapterTarget <NSObject>
- (void)request;
@end

@interface Adaptee : NSObject
- (void)doSth;
@end

@interface Adapter : NSObject <AdapterTarget>
@property (nonatomic, strong) Adaptee *adaptee;
@end


@interface AdapterTestCase : NSObject <TestCase>
@end

NS_ASSUME_NONNULL_END
