//
//  Adapter.m
//  Pattern
//
//  Created by zuer on 2021/2/2.
//

#import "Adapter.h"


@implementation Adaptee

- (void)doSth{
    NSLog(@"做了什么");
}

@end

@implementation Adapter
- (instancetype)initWithAdaptee:(Adaptee *)adaptee{
    self = [super init];
    _adaptee = adaptee;
    return self;
}
- (void)request{
    [_adaptee doSth];
}
@end


@implementation AdapterTestCase

+ (void)test{    
    Adapter *a = [[Adapter alloc] initWithAdaptee:[Adaptee new]];
    [a request];
}

@end
