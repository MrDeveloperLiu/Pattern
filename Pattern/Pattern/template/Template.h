//
//  Template.h
//  Pattern
//
//  Created by zuer on 2021/2/2.
//

#import <Foundation/Foundation.h>
#import "TestCase.h"
NS_ASSUME_NONNULL_BEGIN

@interface Template : NSObject
- (void)abstractFuntion;
@end

@interface TemplateA : Template

@end

@interface TemplateTestCase : NSObject <TestCase>
@end

NS_ASSUME_NONNULL_END
