//
//  Counter.swift
//  NativeApp
//
//  Created by ManikVerma on 16/10/23.
//

import Foundation

@objc(Counter)
class Counter:NSObject{
  private var count = 0;
  
  @objc
  func increment(_ callback: RCTResponseSenderBlock){
    count += 1;
//    print(count);
    callback([count])
  }
  
 
  
  @objc
     static func requiresMainQueueSetup() ->Bool{
      return true;
    }
  
  @objc
  func constantsToExport()->[String:Any]!{
    return ["initialCount":0];
  }
  
}
