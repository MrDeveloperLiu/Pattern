//
//  Builder.m
//  Pattern
//
//  Created by zuer on 2021/2/2.
//

#import "Builder.h"

@implementation Car
- (void)show{
    NSLog(@"汽车| 标志：%@ 车身：%@ 引擎：%@ 轮胎：%@", _flag, _body, _engine, _wheel);
}
@end

@implementation Builder
- (void)useBody:(NSString *)body{
    _car.body = body;
}
- (void)useFlag:(NSString *)flag{
    _car.flag = flag;
}
- (void)useWheel:(NSString *)wheel{
    _car.wheel = wheel;
}
- (void)useEngine:(NSString *)engine{
    _car.engine = engine;
}
- (instancetype)initWithCar:(Car *)car{
    self = [super init];
    _car = car;
    return self;
}
@end

@implementation Director
- (instancetype)initWithBuilder:(id<Builder>)builder{
    self = [super init];
    _builder = builder;
    return self;
}
- (Car *)build{
    [_builder useFlag:@"宝马"];
    [_builder useBody:@"钛合金"];
    [_builder useWheel:@"米其林"];
    [_builder useEngine:@"5.0L V8"];
    return _builder.car;
}
@end

@implementation BuilderTestCase
+ (void)test{
    
    Builder *builder = [[Builder alloc] initWithCar:[Car new]];
    Director *director = [[Director alloc] initWithBuilder:builder];
    Car *car = [director build];
    [car show];
}
@end
