//
//  DemoViewController.m
//  YBLabelDemo
//
//  Created by 陈煜彬 on 2018/7/11.
//  Copyright © 2018年 陈煜彬. All rights reserved.
//

#import "DemoViewController.h"

#import "UILabel+Copy.h"

#import <Masonry.h>



@interface DemoViewController ()

@property (nonatomic, strong) UITextView *textView;
@property (nonatomic, strong) UILabel *testLabel;
//  富文本label
@property (nonatomic, strong) UILabel *attrStrLabel;

@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self initSubview];
    [self addMasonry];
}

- (void)initSubview {
    
    //必须设置的属性
    self.testLabel.copyingEnabled = YES;
    self.attrStrLabel.copyingEnabled = YES;
    
    
    
    [self.view addSubview:self.testLabel];
    [self.view addSubview:self.attrStrLabel];
    [self.view addSubview:self.textView];
    
}

- (void)addMasonry {
    
    [self.testLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(64);
        make.trailing.equalTo(self.view).offset(-20);
        make.leading.equalTo(self.view).offset(20);
        make.height.equalTo(@20);
    }];
    
    [self.attrStrLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.testLabel.mas_bottom).offset(20);
        make.trailing.leading.equalTo(self.testLabel);
    }];
    
    [self.textView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.attrStrLabel.mas_bottom).offset(30);
        make.trailing.leading.equalTo(self.testLabel);
        make.bottom.equalTo(self.view).offset(-100);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark    *******  懒加载  *****

- (UITextView *)textView {
    
    if (!_textView) {
        _textView = [[UITextView alloc] init];
        _textView.font = [UIFont systemFontOfSize:17];
        _textView.backgroundColor = [UIColor colorWithRed:230.0/255.0 green:230.0/255.0 blue:230.0/255.0 alpha:1];
    }
    
    return _textView;
}

- (UILabel *)testLabel {
    
    if (!_testLabel) {
        _testLabel = [[UILabel alloc] init];
        //设置Label可以复制
//        _testLabel.copyingEnabled = YES;
        _testLabel.font = [UIFont systemFontOfSize:20];
        _testLabel.text = @"我是一个可以复制的label";
        _testLabel.textAlignment = NSTextAlignmentCenter;
    }
    
    return _testLabel;
}

- (UILabel *)attrStrLabel
{
    if (!_attrStrLabel) {
        
        // 富文本
        NSString *str = @"人生若只如初见，何事秋风悲画扇。\n等闲变却故人心，却道故人心易变。\n";
        NSMutableAttributedString *attrStr = [[NSMutableAttributedString alloc] initWithString:str];
        
        [attrStr addAttribute:NSFontAttributeName
                        value:[UIFont systemFontOfSize:30.0f]
                        range:NSMakeRange(0, 3)];
        
        [attrStr addAttribute:NSForegroundColorAttributeName
                        value:[UIColor redColor]
                        range:NSMakeRange(17, 7)];
        
        [attrStr addAttribute:NSUnderlineStyleAttributeName
                        value:[NSNumber numberWithInteger:NSUnderlineStyleSingle]
                        range:NSMakeRange(8, 7)];
        
        
        _attrStrLabel = [[UILabel alloc] init];
        _attrStrLabel.numberOfLines = 0;
        _attrStrLabel.attributedText = attrStr;
        //设置Label可以复制
//        _attrStrLabel.copyingEnabled = YES;
        
    }
    
    return _attrStrLabel;
}




@end
