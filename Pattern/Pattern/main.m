//
//  main.m
//  Pattern
//
//  Created by zuer on 2021/2/2.
//

#import <Foundation/Foundation.h>

#import "factory/Factory.h"
#import "abstractfactory/AbstractFactory.h"
#import "singleton/Singleton.h"
#import "builder/Builder.h"
#import "proxy/Proxy.h"
#import "adapter/Adapter.h"
#import "decorator/Decorator.h"
#import "template/Template.h"
#import "strategy/Strategy.h"
#import "command/Command.h"
#import "ResponseChain/ResponseChain.h"
#import "state/State.h"
#import "observer/Observer.h"
#import "mediator/Mediator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
//        [FactoryTestCase test];
//        [AbstractFactoryTestCase test];
//        [BuilderTestCase test];
//        [ProxyTestCase test];
//        [AdapterTestCase test];
//        [DecoratorTestCase test];
//        [TemplateTestCase test];
//        [StrategyTestCase test];
//        [CommandTestCase test];
//        [ResponseChainTestCase test];
//        [StateTestCase test];
//        [ObserverTestCase test];
        [MediatorTestCase test];
    }
    return 0;
}
