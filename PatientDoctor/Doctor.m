//
//  Doctor.m
//  PatientDoctor
//
//  Created by Shine Chaudhuri on 2015-10-01.
//  Copyright © 2015 Shine Chaudhuri. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

-(id)initWithName:(NSString *)name andSpecialization:(NSString *)specialization{
    
    self = [super init];
    if (self) {
        
        self.name = name;
        self.specialization = specialization;
        self.prescriptions = [[NSMutableArray alloc]init];
        self.acceptedPatients = [[NSMutableSet alloc]init];
    }
    return self;
}

-(void)introduceMyself {
    NSLog(@"Hello my name is Doctor %@, I specialize in %@",self.name, self.specialization);
}

-(BOOL)acceptPatient:(Patient *)p {
    
    if (p.healthCard == YES) {
        [self.acceptedPatients addObject:p];
        return YES;
    }
    else return NO;
}

-(NSString *)givePrescription:(Patient *)p forSymptoms:(NSMutableSet *)symptom {
    if (![self.acceptedPatients containsObject:p]){
        return nil;
    }
    
    NSString *drugs;
    if ([symptom containsObject:@"Cough"]) {
            [self.prescriptions addObject:drugs = @"Tylenol"];
        }
        else if ([symptom containsObject:@"Pain"]) {
            [self.prescriptions addObject:drugs = @"Aspirin"];
        }
    return drugs;
}


@end
