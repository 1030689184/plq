//
//  CYPartnerViewController.h
//  TravelHeNan
//
//  Created by mac on 16/2/25.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CYPartnerViewController : UIViewController<UIWebViewDelegate>
{
    UIWebView *_webView;
    NSArray *_array0;
    NSArray *_array1;
    
    UITextField *_userName;
    UITextField *_password;
    UITextField *_phone;
    UITextField *_uname;
    UITextField *_address;
    UITextField *_type;
}
@end
