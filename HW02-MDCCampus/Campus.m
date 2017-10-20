//
//  Campus.m
//  HW02-MDCCampus
//
//  Created by Yonny L Leyva Suarez on 10/16/17.
//  Copyright © 2017 Yonny L Leyva Suarez. All rights reserved.
//

#import "Campus.h"

@implementation Campus

-(id)initWithName: (NSString*) name andWithAddress:(NSString*) address andWithImage:(NSString*) image{
    
    [self setName:name];
    [self setAddress:address];
    [self setImage:image];
    
    return self;
}

@end
