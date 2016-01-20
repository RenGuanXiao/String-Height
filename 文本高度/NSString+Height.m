//
//  NSString+Height.m
//  文本高度
//
//  Created by apple on 16/1/20.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "NSString+Height.h"

@implementation NSString (Height)

- (CGFloat)StringWidthBySize:(CGSize)size andfont:(UIFont *)font {
    
    NSDictionary *attribute = @{NSFontAttributeName:font};
    
    CGSize retSize = [self boundingRectWithSize:size
                                             options:\
                        NSStringDrawingUsesLineFragmentOrigin |
                      NSStringDrawingUsesFontLeading
                                          attributes:attribute
                                             context:nil].size;
    return retSize.height;
}
@end
