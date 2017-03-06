//
//  BNRItem.h
//  demo
//
//  Created by LustXcc on 01/03/2017.
//  Copyright © 2017 LustXcc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject


@property (nonatomic, copy) NSString *itemName;
@property (nonatomic, copy) NSString *serialNumber;
@property int *valueInDollars;
@property NSData *dateCreated;

+ (instancetype)randomItem;
// BNRItem的指定初始化方法
- (instancetype)initWithItemName: (NSString *)name
                  valueInDollars: (int)value
                    serialNumber: (NSString *)sNumber;

- (instancetype)initWithItemName: (NSString *)name;

@end
