//
//  ViewController.m
//  ZGNSCharacterSetDemo
//
//  Created by offcn_zcz32036 on 2017/10/16.
//  Copyright © 2017年 cn. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>
@property(nonatomic,strong)NSString*textField;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    ///去除字符串中所有的@"今"、@"我"、@"s"
    NSString *str=@"今天阿拉丁减肥了我们sdfkjaldfkla";
    NSCharacterSet *charSet=[NSCharacterSet characterSetWithCharactersInString:@"今我s"];
    NSArray *setArr=[str componentsSeparatedByCharactersInSet:charSet];
    NSString *resultStr1=[setArr componentsJoinedByString:@""];
     NSLog(@"拆分后的字符串数组------%@\n最终字符串------%@",setArr,resultStr1);
}
//**textFielf只能输入数字**
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSCharacterSet *charSet = [[NSCharacterSet characterSetWithCharactersInString:@"0123456789"] invertedSet];
    NSString *filteredStr = [[string componentsSeparatedByCharactersInSet:charSet] componentsJoinedByString:@""];
    if ([string isEqualToString:filteredStr]) {
        return YES;
    }
    return NO;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
