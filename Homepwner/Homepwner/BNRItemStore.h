//
//  BNRItemStore.h
//  Homepwner
//
//  Created by LustXcc on 06/03/2017.
//  Copyright © 2017 LustXcc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BNRItem;
@interface BNRItemStore : NSObject

@property (nonatomic, readonly) NSArray *allItems;

+ (instancetype)sharedStore;
- (BNRItem *)createItem;

@end
