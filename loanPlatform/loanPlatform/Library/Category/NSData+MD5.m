//
//  NSData+MD5.m
//  trover
//
//  Created by skye on 8/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NSData+MD5.h"
// Need to import for CC_MD5 access
#import <CommonCrypto/CommonDigest.h> 

@implementation NSData (MD5Extensions)

- (NSString *)md5
{
    unsigned char result[16];
    CC_MD5( self.bytes, (CC_LONG)self.length, result ); // This is the md5 call
    return [NSString stringWithFormat:
            @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            result[0], result[1], result[2], result[3], 
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];  
}

- (NSString *)md5_32
{
    unsigned char result[32];
    CC_MD5( self.bytes, (CC_LONG)self.length, result ); // This is the md5 call
    return [[NSString stringWithFormat:
             @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
             result[0], result[1], result[2], result[3], 
             result[4], result[5], result[6], result[7],
             result[8], result[9], result[10], result[11],
             result[12], result[13], result[14], result[15],
             result[16], result[17], result[18], result[19],
             result[20], result[21], result[22], result[23],
             result[24], result[25], result[26], result[27],
             result[28], result[29], result[30], result[31]
             ] lowercaseString]; 
}

@end