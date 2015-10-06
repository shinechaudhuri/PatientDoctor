//
//  Doctor.h
//  PatientDoctor
//
//  Created by Shine Chaudhuri on 2015-10-01.
//  Copyright © 2015 Shine Chaudhuri. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@class Patient;

@interface Doctor : NSObject

@property (nonatomic, strong) NSString *specialization;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSMutableArray *prescriptions;
@property (nonatomic, strong) NSMutableSet *acceptedPatients;

-(id)initWithName:(NSString *)name andSpecialization:(NSString *)specialization;
-(void)introduceMyself;
-(BOOL)acceptPatient:(Patient *)p;
-(NSString *)givePrescription:(Patient *)p forSymptoms:(NSMutableSet *)symptom;



@end
