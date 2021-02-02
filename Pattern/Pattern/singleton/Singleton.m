//
//  Singleton.m
//  Pattern
//
//  Created by zuer on 2021/2/2.
//

#import "Singleton.h"

@implementation Singleton

+ (Singleton *)sharedInstance{
    static Singleton *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [Singleton new];
    });
    return instance;
}

@end
