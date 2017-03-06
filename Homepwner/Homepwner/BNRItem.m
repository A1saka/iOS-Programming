//
//  BNRItem.m
//  demo
//
//  Created by LustXcc on 01/03/2017.
//  Copyright © 2017 LustXcc. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem


+ (instancetype)randomItem
{
    NSArray *randomAdjectiveList = @[@"slack", @"Gay", @"ruby"];
    NSArray *randomNounList = @[@"bear", @"dog", @"cat"];
    
    NSInteger adjectiveIndex = arc4random() % randomAdjectiveList.count;
    NSInteger noumIndex = arc4random() % randomNounList.count;
    
    NSString *randomName = [NSString stringWithFormat:@"%@%@", randomAdjectiveList[adjectiveIndex], randomNounList[noumIndex]];
    
    int randomValue = arc4random() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c", 'A' + arc4random() % 10, 'C' + arc4random() % 98, 'H' + arc4random() % 56];
    
    BNRItem *newItem = [[self alloc] initWithItemName:randomName valueInDollars:randomValue serialNumber:randomSerialNumber];
    return newItem;
}

- (instancetype)initWithItemName: (NSString *)name
                  valueInDollars: (int)value
                    serialNumber: (NSString *)sNumber
{
    self = [super init];
    if (self) {
        self.itemName = name;
        _valueInDollars = &value;
        _serialNumber = sNumber;
        _dateCreated = [[NSDate alloc] init];
    }
    return self;
}
- (instancetype)initWithItemName: (NSString *)name
{
    return [self initWithItemName:name valueInDollars:0 serialNumber:@""];
}
-(instancetype)init
{
    return [self initWithItemName:@"item"];

}



- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ (%@): Worth $%d, recorded on %@", self.itemName, self.serialNumber, self.valueInDollars, self.dateCreated];
}
@end
