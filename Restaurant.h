//
//  Restaurant.h
//  Restaurant
//
//  Created by Anton Skutov on 10/23/15.
//  Copyright (c) 2015 Anton Skutov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Restaurant : NSObject
@property NSString* name;
@property int tasteOfFood;
@property int serviceSpeed;
@property int quality;
-(int) tips;
-(id) initWithTaste: (int) taste Speed: (int) speed Quality: (int) quality Name: name;
@end
