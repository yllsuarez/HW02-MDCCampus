//
//  Campus.h
//  HW02-MDCCampus
//
//  Created by Yonny L Leyva Suarez on 10/16/17.
//  Copyright © 2017 Yonny L Leyva Suarez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Campus : NSObject

@property ( getter=getName, setter= setName:) NSString* name;
@property ( getter=getAddress, setter=setAddress:) NSString* address;
@property ( getter=getImage, setter=setImage:) NSString* image;

-(id)initWithName: (NSString*) name andWithAddress:(NSString*) address andWithImage:(NSString*) image;


@end
