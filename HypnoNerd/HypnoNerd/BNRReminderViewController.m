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



- (void)viewDidLoad {
    [super viewDidLoad];
 
}

- (IBAction)addReminder:(id)sender
{
    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a reminder for %@", date);

}

@end
