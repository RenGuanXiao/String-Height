//
//  UILabel+StringHeight.m
//  文本高度
//
//  Created by apple on 16/1/20.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "UILabel+StringHeight.h"

@implementation UILabel (StringHeight)

- (CGFloat)StringHeight:(CGSize)size {
    
    NSDictionary *attribute = @{NSFontAttributeName: self.font};

    CGSize retSize = [self.text boundingRectWithSize:size
                                             options:\
                      NSStringDrawingTruncatesLastVisibleLine |
                      NSStringDrawingUsesLineFragmentOrigin |
                      NSStringDrawingUsesFontLeading
                                          attributes:attribute
                                             context:nil].size;
    return retSize.height;
    

}

@end
