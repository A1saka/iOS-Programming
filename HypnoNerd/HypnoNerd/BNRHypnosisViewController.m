//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by LustXcc on 05/03/2017.
//  Copyright © 2017 LustXcc. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisView.h"

@implementation BNRHypnosisViewController

- (void)loadView
{
    BNRHypnosisView *backgroundView = [[BNRHypnosisView alloc] init];
    self.view = backgroundView;
}
@end
