//
//  BNRReminderViewController.m
//  HypnoNerd
//
//  Created by LustXcc on 05/03/2017.
//  Copyright © 2017 LustXcc. All rights reserved.
//

#import "BNRReminderViewController.h"

@interface BNRReminderViewController ()

@property (nonatomic, weak) IBOutlet UIDatePicker *datePicker;

@end

@implementation BNRReminderViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"Reminder";
        UIImage *i = [UIImage imageNamed:@"Time.png"];
        
        self.tabBarItem.image = i;
        
    }
    return self;
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    
    self.datePicker.minimumDate = [NSDate dateWithTimeIntervalSinceNow:60];

}


- (void)viewDidLoad {
    [super viewDidLoad];

 
}

- (IBAction)addReminder:(id)sender
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:2.0];
    NSLog(@"Setting a reminder for %@", date);
    
    UILocalNotification *note = [[UILocalNotification alloc] init];
    note.alertBody = @"Notify ME!!";
    note.fireDate = date;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:note];
}

@end
 

