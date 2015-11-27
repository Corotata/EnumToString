//
//  main.m
//  EnumToString
//
//  Created by Corotata on 15/11/27.
//  Copyright © 2015年 www.corotata.com All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CREnumHelper.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSString *string = XMPPMessageTypeEnumToString(XMPPMessageTypeText);
        NSLog(@"%@",string);
        
        
        
        NSString *string2 = XMPPMessageTypes[XMPPMessageTypeLocal];
        NSLog(@"%@",string2);
        
        
        NSLog(@"文本的枚举值是%lu",(unsigned long)[CREnumHelper coro_getMessageTypeByMessageTypeString:@"文本"]);
        NSLog(@"XMPPMessageTypeLocal的相应值是%@",[CREnumHelper coro_getMessageTypeStringByMessageType:XMPPMessageTypeLocal]);
        
        
    }
    return 0;
}
