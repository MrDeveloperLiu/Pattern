//
//  Singleton.h
//  Pattern
//
//  Created by zuer on 2021/2/2.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Singleton : NSObject

+ (Singleton *)sharedInstance;

@end

NS_ASSUME_NONNULL_END
