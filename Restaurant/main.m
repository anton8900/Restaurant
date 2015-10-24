//
//  main.m
//  Restaurant
//
//  Created by Anton Skutov on 10/23/15.
//  Copyright (c) 2015 Anton Skutov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Restaurant.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Restaurant *rest=[Restaurant new];
        NSLog(@"%d",[rest tips]);
        NSMutableArray * ar=[NSMutableArray new];
        [ar addObject:rest];
        [ar addObject:[[Restaurant alloc] initWithTaste:8 Speed: 9 Quality: 10 Name: @"First"]];
        [ar addObject:[[Restaurant alloc] initWithTaste:9 Speed: 10 Quality: 10 Name: @"Second"]];
        [ar addObject:[[Restaurant alloc] initWithTaste:8 Speed: 5 Quality: 2 Name: @"Th"]];
        NSString *path = @"/Users/Anton/Desktop/Restaurant/Data.plist";
        NSMutableDictionary *data = [[NSMutableDictionary alloc] initWithContentsOfFile: path];
        NSLog([data objectForKey:@"First"]);
    return 0;
    }
}
