//
//  NSArray+FilterDuplicates.h
//  ISYallaGoom
//
//  Created by Khaled Khaldi on 25/09/2017.
//  Copyright © 2017 iPhoneAlsham. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@interface NSArray (FilterDuplicates)

- (NSMutableArray *)filterDuplicates:(NSString *)key;
- (NSMutableArray *)filterDuplicates:(NSString *)key sort:(BOOL)sort ascending:(BOOL)ascending;

@end

NS_ASSUME_NONNULL_END
