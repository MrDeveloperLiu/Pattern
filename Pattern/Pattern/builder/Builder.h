//
//  Builder.h
//  Pattern
//
//  Created by zuer on 2021/2/2.
//

#import <Foundation/Foundation.h>
#import "TestCase.h"
NS_ASSUME_NONNULL_BEGIN

@interface Car : NSObject
@property (nonatomic, copy) NSString *body;
@property (nonatomic, copy) NSString *wheel;
@property (nonatomic, copy) NSString *engine;
@property (nonatomic, copy) NSString *flag;
- (void)show;
@end

@protocol Builder <NSObject>
@property (nonatomic, strong) Car *car;
- (void)useBody:(NSString *)body;
- (void)useEngine:(NSString *)engine;
- (void)useFlag:(NSString *)flag;
- (void)useWheel:(NSString *)wheel;
@end

@interface Builder : NSObject <Builder>
@property (nonatomic, strong) Car *car;
- (instancetype)initWithCar:(Car *)car;
@end

@interface Director : NSObject
@property (nonatomic, strong) id<Builder> builder;
- (instancetype)initWithBuilder:(id<Builder>)builder;
- (Car *)build;
@end

@interface BuilderTestCase : NSObject <TestCase>
@end

NS_ASSUME_NONNULL_END
