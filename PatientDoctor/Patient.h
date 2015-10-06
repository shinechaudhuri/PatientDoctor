//
//  Patient.h
//  PatientDoctor
//
//  Created by Shine Chaudhuri on 2015-10-01.
//  Copyright © 2015 Shine Chaudhuri. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"

@class Doctor;

@interface Patient : NSObject

@property (nonatomic, assign) int age;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) BOOL healthCard;
@property (nonatomic, strong) NSMutableSet *symptoms;

-(id)initWithAge:(int)age andName:(NSString *)name andHealthCard:(BOOL)h;
-(void)introduceMyself;
-(BOOL)visitDoctor:(Doctor *)d;

//-(BOOL)requestMedication:(Doctor *)d;


@end
