//
//  CREnumHelper.h
//  EnumToString
//
//  Created by Corotata on 15/11/27.
//  Copyright © 2015年 http://www.corotata.com All rights reserved.
//

#import <Foundation/Foundation.h>

//定义枚举类型
/**
 *  消息类型
 */
typedef NS_ENUM(NSUInteger, XMPPMessageType){
    XMPPMessageTypeText = 0,                    //文本
    XMPPMessageTypeImage,                       //图片
    XMPPMessageTypeVoice,                       //语音
    XMPPMessageTypeSystemTip,                   //系统消息
    XMPPMessageTypeFace,                        //表情
    XMPPMessageTypeVideo,                       //视频
    XMPPMessageTypeLocal                       //定位
};

extern NSString * const XMPPMessageTypeEnumToString(XMPPMessageType Key);

static NSString *XMPPMessageTypes[] = {
    [XMPPMessageTypeText] = @"文本",                   //文本
    [XMPPMessageTypeImage] = @"图片",                       //图片
    [XMPPMessageTypeVoice] = @"语音",                      //语音
    [XMPPMessageTypeSystemTip] = @"系统消息",                   //系统消息
    [XMPPMessageTypeFace] = @"表情",                        //表情
    [XMPPMessageTypeVideo] = @"视频",                       //视频
    [XMPPMessageTypeLocal] = @"定位"                        //定位
};



@interface CREnumHelper : NSObject

+ (XMPPMessageType)coro_getMessageTypeByMessageTypeString:(NSString *)messageTypeStr;

+ (NSString *)coro_getMessageTypeStringByMessageType:(XMPPMessageType)messageType;


@end
