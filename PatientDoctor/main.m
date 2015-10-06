//
//  main.m
//  PatientDoctor
//
//  Created by Shine Chaudhuri on 2015-10-01.
//  Copyright © 2015 Shine Chaudhuri. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Patient *aPatient = [[Patient alloc]initWithAge:23 andName:@"Doe John" andHealthCard:YES];
        [aPatient introduceMyself];
        
        Patient *badPatient = [[Patient alloc]initWithAge:71 andName:@"Voldemort" andHealthCard:NO];
        
        Doctor *aDoctor = [[Doctor alloc]initWithName:@"John Doe" andSpecialization:@"General Physician"];
        [aDoctor introduceMyself];
        
        [aDoctor acceptPatient:aPatient];
        
        NSLog(@"What symptoms does you have?");
        
        NSArray *aSymptomArray = @[@"Cough", @"Headache", @"Fever"];
        NSLog(@"I have %@",aSymptomArray);
        NSMutableSet *aSymptomSet = [NSMutableSet setWithArray:aSymptomArray];
        
        NSLog(@"From your symptoms, I will prescribe you %@",[aDoctor givePrescription:aPatient forSymptoms:aSymptomSet]);
        
        
    }
    return 0;
}
