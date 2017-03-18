//
//  NSString+EYAddition.h
//  CategoryDemo
//
//  Created by lieryang on 2017/3/13.
//  Copyright © 2017年 lieryang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (EYAddition)

#pragma mark - BASE 64
/**
 对当前字符串进行 BASE 64 编码

 @return 编码后的结果
 */
- (NSString *)ey_base64Encode;
/**
 对当前字符串进行 BASE 64 解码

 @return 解码后的结果
 */
- (NSString *)ey_base64Decode;

#pragma mark - 散列函数
/**
 *  计算MD5散列结果
 *
 *  终端测试命令：
 *  md5 -s "string"
 *
 *  提示：随着 MD5 碰撞生成器的出现，MD5 算法不应被用于任何软件完整性检查或代码签名的用途。
 *
 *  @return 32个字符的MD5散列字符串
 */
- (NSString *)ey_md5String;

/**
 *  计算SHA1散列结果
 *
 *  终端测试命令：
 *  echo -n "string" | openssl sha -sha1
 *
 *  @return 40个字符的SHA1散列字符串
 */
- (NSString *)ey_sha1String;

/**
 *  计算SHA224散列结果
 *
 *  终端测试命令：
 *  echo -n "string" | openssl sha -sha224
 *
 *  @return 56个字符的SHA224散列字符串
 */
- (NSString *)ey_sha224String;

/**
 *  计算SHA256散列结果
 *
 *  终端测试命令：
 *  echo -n "string" | openssl sha -sha256
 *
 *  @return 64个字符的SHA256散列字符串
 */
- (NSString *)ey_sha256String;

/**
 *  计算SHA 384散列结果
 *
 *  终端测试命令：
 *  echo -n "string" | openssl sha -sha384
 *
 *  @return 96个字符的SHA 384散列字符串
 */
- (NSString *)ey_sha384String;

/**
 *  计算SHA 512散列结果
 *
 *  终端测试命令：
 *  echo -n "string" | openssl sha -sha512
 *
 *  @return 128个字符的SHA 512散列字符串
 */
- (NSString *)ey_sha512String;

#pragma mark - HMAC 散列函数
/**
 *  计算HMAC MD5散列结果
 *
 *  终端测试命令：
 *  echo -n "string" | openssl dgst -md5 -hmac "key"
 *
 *  @return 32个字符的HMAC MD5散列字符串
 */
- (NSString *)ey_hmacMD5StringWithKey:(NSString *)key;

/**
 *  计算HMAC SHA1散列结果
 *
 *  终端测试命令：
 *  echo -n "string" | openssl sha -sha1 -hmac "key"
 *
 *  @return 40个字符的HMAC SHA1散列字符串
 */
- (NSString *)ey_hmacSHA1StringWithKey:(NSString *)key;

/**
 *  计算HMAC SHA256散列结果
 *
 *  终端测试命令：
 *  echo -n "string" | openssl sha -sha256 -hmac "key"
 *
 *  @return 64个字符的HMAC SHA256散列字符串
 */
- (NSString *)ey_hmacSHA256StringWithKey:(NSString *)key;

/**
 *  计算HMAC SHA512散列结果
 *
 *  终端测试命令：
 *  echo -n "string" | openssl sha -sha512 -hmac "key"
 *
 *  @return 128个字符的HMAC SHA512散列字符串
 */
- (NSString *)ey_hmacSHA512StringWithKey:(NSString *)key;

#pragma mark - 文件散列函数
/**
 *  计算文件的MD5散列结果
 *
 *  终端测试命令：
 *  md5 file.dat
 *
 *  @return 32个字符的MD5散列字符串
 */
- (NSString *)ey_fileMD5Hash;

/**
 *  计算文件的SHA1散列结果
 *
 *  终端测试命令：
 *  openssl sha -sha1 file.dat
 *
 *  @return 40个字符的SHA1散列字符串
 */
- (NSString *)ey_fileSHA1Hash;

/**
 *  计算文件的SHA256散列结果
 *
 *  终端测试命令：
 *  openssl sha -sha256 file.dat
 *
 *  @return 64个字符的SHA256散列字符串
 */
- (NSString *)ey_fileSHA256Hash;

/**
 *  计算文件的SHA512散列结果
 *
 *  终端测试命令：
 *  openssl sha -sha512 file.dat
 *
 *  @return 128个字符的SHA512散列字符串
 */

- (NSString *)ey_fileSHA512Hash;

#pragma mark - 追加路径
/**
 给当前文件追加文档路径

 @return 全路径
 */
- (NSString *)ey_appendDocumentDirectory;

/**
 给当前文件追加缓存路径

 @return 全路径
 */
- (NSString *)ey_appendCacheDirectory;

/**
 给当前文件追加临时路径

 @return 全路径
 */
- (NSString *)ey_appendTempDirectory;

/**
 *  返回二进制 Bytes 流的字符串表示形式
 *
 *  @param bytes  二进制 Bytes 数组
 *  @param length 数组长度
 *  @return 字符串表示形式
 */
- (NSString *)stringFromBytes:(uint8_t *)bytes length:(int)length;
@end
