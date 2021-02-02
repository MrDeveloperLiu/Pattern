//
//  Observer.m
//  Pattern
//
//  Created by zuer on 2021/2/2.
//

#import "Observer.h"

@implementation ObserverObject
- (instancetype)init{
    self = [super init];
    _observers = [NSMutableArray array];
    return self;
}
- (void)addObserver:(id<Observer>)observer{
    [_observers addObject:observer];
}
- (void)removeObserver:(id<Observer>)observer{
    [_observers removeObject:observer];
}
- (void)send{
    for (id<Observer> obv in _observers) [obv notify];
}
@end

@implementation ObserverA
- (void)notify{
    NSLog(@"观察者A收到了通知");
}
@end
@implementation ObserverB
- (void)notify{
    NSLog(@"观察者B收到了通知");
}
@end

@implementation ObserverTestCase
+ (void)test{
    ObserverObject *o = [ObserverObject new];
    [o addObserver:[ObserverA new]];
    [o addObserver:[ObserverB new]];
    [o send];
}
@end
