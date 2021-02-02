//
//  Observer.h
//  Pattern
//
//  Created by zuer on 2021/2/2.
//

#import <Foundation/Foundation.h>
#import "TestCase.h"

NS_ASSUME_NONNULL_BEGIN

@protocol Observer <NSObject>
- (void)notify;
@end

@interface ObserverObject : NSObject
@property (nonatomic, strong) NSMutableArray *observers;
- (void)addObserver:(id<Observer>)observer;
- (void)removeObserver:(id<Observer>)observer;
- (void)send;
@end

@interface ObserverA : NSObject <Observer>
@end
@interface ObserverB : NSObject <Observer>
@end

@interface ObserverTestCase : NSObject <TestCase>

@end


NS_ASSUME_NONNULL_END
