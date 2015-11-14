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
    return _paidForAll*(0.4*_tasteOfFood+0.4*_serviceSpeed+0.2*_quality)*0.1;
}
-(id) initWithTaste: (int) taste Speed: (int) speed Quality: (int) quality Name: (NSString*)name Address: (NSString*) address Comment: (NSString*) comment Paid: (int) paid
{
    self=[super init];
    if(self)
    {
        _name=name;
        _tasteOfFood=taste;
        _serviceSpeed=speed;
        _quality=quality;
        _paidForAll=paid;
        _address=address;
        _comment=comment;
        
        NSString *path = @"/Users/Anton/Desktop/Restaurant/Data.plist";
        NSMutableDictionary *data = [[NSMutableDictionary alloc] initWithContentsOfFile: path];
        NSMutableArray *arr=[NSMutableArray new];
        [arr addObject:_address];
        [arr addObject:_comment];
        [data setObject:arr forKey:_name];
        [data writeToFile: path  atomically:NO];
    }
    return self;
}
-(NSString*) getName
{
    return _name;
}

@end
