//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by LustXcc on 05/03/2017.
//  Copyright © 2017 LustXcc. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisView.h"


@interface BNRHypnosisViewController () <UITextFieldDelegate>

@end
@implementation BNRHypnosisViewController 

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"Hypnotize";
        UIImage *i = [UIImage imageNamed:@"Hypno.png"];
        
        self.tabBarItem.image = i;
        
    }
    return self;
}



- (void)loadView
{
    BNRHypnosisView *backgroundView = [[BNRHypnosisView alloc] init];
    
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(40, 70, 240, 30)];
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.placeholder = @"Click ME!";
    textField.returnKeyType = UIReturnKeyDone;
    textField.delegate = self;
    [backgroundView addSubview:textField];

    self.view = backgroundView;
    
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    
}

- (void)drawHypnoticMessage: (NSString *)message
{
    for (int i = 0; i < 20; i++) {
        UILabel *messagelabel = [[UILabel alloc] init];
        
        messagelabel.backgroundColor = [UIColor clearColor];
        messagelabel.textColor = [UIColor blackColor];
        messagelabel.text = message;
        
        [messagelabel sizeToFit];
        
        int width = (int)(self.view.bounds.size.width - messagelabel.bounds.size.width);
        int x = arc4random() % width;
        
        int height = (int)(self.view.bounds.size.height - messagelabel.bounds.size.height);
        int y = arc4random() % height;
        
        CGRect frame = messagelabel.frame;
        frame.origin = CGPointMake(x, y);
        messagelabel.frame = frame;
        
        [self.view addSubview:messagelabel];
    }
}


#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self drawHypnoticMessage:textField.text];
    textField.text = @"";
    [textField resignFirstResponder];
    return YES;
}
@end
