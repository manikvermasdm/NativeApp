//
//  Counter.m
//  NativeApp
//
//  Created by ManikVerma on 16/10/23.
//

#import <Foundation/Foundation.h>
#import <React/RCTLog.h>
#import "React/RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(Counter, NSObject)

RCT_EXTERN_METHOD(increment:(RCTResponseSenderBlock)callback)

RCT_EXPORT_METHOD(callDeviceScanActivity:(RCTPromiseResolveBlock)resolveFunction

                  rejectFunction:(RCTPromiseRejectBlock)rejectFunction){

  dispatch_async(dispatch_get_main_queue(), ^{


    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];

    RCTLogInfo(@"StoryBoard to create an event %@ ", storyboard);

    UINavigationController *navigationController = [storyboard instantiateViewControllerWithIdentifier:@"ViewController"];

    navigationController.modalPresentationStyle = UIModalPresentationFullScreen;

    RCTLogInfo(@"myViewController to create an event %@ ", navigationController);



    //[UIApplication sharedApplication].delegate.window.rootViewController = [storyboard instantiateInitialViewController];

    UIViewController *rootViewController = [UIApplication sharedApplication].delegate.window.rootViewController;

    RCTLogInfo(@"RootViewController to create an event %@ ", rootViewController);

    [rootViewController presentViewController:navigationController animated:YES completion:nil];

    

    

   

 

  });

 

}
@end


