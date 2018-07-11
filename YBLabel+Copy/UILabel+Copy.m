//
//  UILabel+Copy.m
//  YBLabelDemo
//
//  Created by 陈煜彬 on 2018/7/11.
//  Copyright © 2018年 陈煜彬. All rights reserved.
//

#import "UILabel+Copy.h"
#import <objc/runtime.h>

@implementation UILabel (Copy)

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender {
    return (action == @selector(copyText:));
}

- (void)attachTapHandler {
    self.userInteractionEnabled = YES;
    UILongPressGestureRecognizer *g = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    [self addGestureRecognizer:g];
}


- (void)handleTap:(UIGestureRecognizer *)g {
    [self becomeFirstResponder];
    
    UIMenuItem *item = [[UIMenuItem alloc] initWithTitle:@"copy" action:@selector(copyText:)];
    [[UIMenuController sharedMenuController] setMenuItems:[NSArray arrayWithObject:item]];
    [[UIMenuController sharedMenuController] setTargetRect:self.frame inView:self.superview];
    [[UIMenuController sharedMenuController] setMenuVisible:YES animated:YES];
    
}


- (void)copyText:(id)sender {

    UIPasteboard *pBoard = [UIPasteboard generalPasteboard];
    pBoard.string = self.text;
    NSLog(@"Copy text: %@", self.text);
}

- (BOOL)canBecomeFirstResponder {
    return [objc_getAssociatedObject(self, @selector(isCopyingEnabled)) boolValue];
}

- (void)setCopyingEnabled:(BOOL)copyingEnabled {
    objc_setAssociatedObject(self, @selector(isCopyingEnabled), [NSNumber numberWithBool:copyingEnabled], OBJC_ASSOCIATION_ASSIGN);
    [self attachTapHandler];
}


- (BOOL)isCopyingEnabled {
    return [objc_getAssociatedObject(self, @selector(isCopyingEnabled)) boolValue];
}

@end
