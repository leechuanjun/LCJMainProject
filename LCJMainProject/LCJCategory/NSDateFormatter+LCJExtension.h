//
//  NSDateFormatter+LCJExtension.h
//  LCJMainProject
//
//  Created by lichuanjun on 2017/10/30.
//  Copyright © 2017年 lichuanjun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDateFormatter (LCJExtension)

+ (id)dateFormatter;

+ (id)dateFormatterWithFormat:(NSString *)dateFormat;

+ (id)defaultDateFormatter;/*yyyy-MM-dd HH:mm:ss*/

@end
