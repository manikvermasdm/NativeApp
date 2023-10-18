//
//  Counter.m
//  NativeApp
//
//  Created by ManikVerma on 16/10/23.
//

#import <Foundation/Foundation.h>

#import "React/RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(Counter, NSObject)

RCT_EXTERN_METHOD(increment:(RCTResponseSenderBlock)callback)

@end


