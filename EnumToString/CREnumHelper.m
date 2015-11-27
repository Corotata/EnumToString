//
//  CREnumHelper.m
//  EnumToString
//
//  Created by Corotata on 15/11/27.
//  Copyright © 2015年  http://www.corotata.com. All rights reserved.
//

#import "CREnumHelper.h"



//定义字符串函数
NSString * const XMPPMessageTypeEnumToString(XMPPMessageType type){
    switch (type) {
        case XMPPMessageTypeText:
            return @"文本";
        case XMPPMessageTypeImage:
            return @"图片";
        case XMPPMessageTypeVoice:
            return @"语音";
        case XMPPMessageTypeSystemTip:
            return @"系统消息";
        case XMPPMessageTypeFace:
            return @"表情";
        case XMPPMessageTypeVideo:
            return @"视频";
        case XMPPMessageTypeLocal:
            return @"定位";
        default:
            return @"未知格式";;
    }
}


static NSDictionary *dict ;

@implementation CREnumHelper

+ (void)load {
    dict = @{@(XMPPMessageTypeText): @"文本",
             @(XMPPMessageTypeImage): @"图片",
             @(XMPPMessageTypeVoice): @"语音",
             @(XMPPMessageTypeSystemTip): @"系统消息",
             @(XMPPMessageTypeFace): @"表情",
             @(XMPPMessageTypeVideo): @"视频",
             @(XMPPMessageTypeLocal): @"定位"
             };
}

+ (XMPPMessageType)coro_getMessageTypeByMessageTypeString:(NSString *)messageTypeStr {
    __block XMPPMessageType messageType;
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        if ([obj isEqualToString:obj]) {
            messageType = [key integerValue];
            *stop = YES;
        }
    }];
    return messageType;
}

+ (NSString *)coro_getMessageTypeStringByMessageType:(XMPPMessageType)messageType {
    __block NSString *messageTypeStr = nil;
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        if ([key integerValue] == messageType) {
            messageTypeStr = obj;
            *stop = YES;
        }
    }];
    return messageTypeStr;

}
@end
