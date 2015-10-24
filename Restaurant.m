//
//  Restaurant.m
//  Restaurant
//
//  Created by Anton Skutov on 10/23/15.
//  Copyright (c) 2015 Anton Skutov. All rights reserved.
//

#import "Restaurant.h"

@implementation Restaurant
-(int) tips
{
    return 10*_tasteOfFood+10*_serviceSpeed+10*_quality;
}
-(id) initWithTaste: (int) taste Speed: (int) speed Quality: (int) quality Name: name
{
    self=[super init];
    if(self)
    {
        _name=name;
        _tasteOfFood=taste;
        _serviceSpeed=speed;
        _quality=quality;
    }
    NSString *path = @"/Users/Anton/Desktop/Restaurant/Data.plist";
    NSMutableDictionary *data = [[NSMutableDictionary alloc] initWithContentsOfFile: path];
    [data setObject:[NSString stringWithFormat:@"%d",[self tips]] forKey:_name ];
    [data setObject:_name forKey:@"name"];
    [data writeToFile: path  atomically:NO];
    return self;
}

@end
