//
//  NSArray+FilterDuplicates.m
//  ISYallaGoom
//
//  Created by Khaled Khaldi on 25/09/2017.
//  Copyright © 2017 iPhoneAlsham. All rights reserved.
//

#import "NSArray+FilterDuplicates.h"

@implementation NSArray (FilterDuplicates)

- (NSMutableArray *)filterDuplicates:(NSString *)key {
    return [self filterDuplicates:key sort:false ascending:false];
}

- (NSMutableArray *)filterDuplicates:(NSString *)key sort:(BOOL)sort ascending:(BOOL)ascending {
    
    NSArray *sortedDescArray;
    if (sort) {
        // First sort array
        NSSortDescriptor *descriptor = [[NSSortDescriptor alloc] initWithKey:key ascending:ascending];
        sortedDescArray = [self sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor,nil]];
    
    } else {
        sortedDescArray = self;
    
    }
    
    NSMutableArray *myFilteredArrayOfObjects = [NSMutableArray array];
    
    [sortedDescArray indexesOfObjectsPassingTest:^BOOL(id object, NSUInteger idx, BOOL *stop) {
        
        if ([[myFilteredArrayOfObjects valueForKeyPath:key] containsObject:[object valueForKey:key]]) {
            return NO;
        } else {
            [myFilteredArrayOfObjects addObject:object];
            return YES;
        }
    }];
    
    return myFilteredArrayOfObjects;
    
}

@end
