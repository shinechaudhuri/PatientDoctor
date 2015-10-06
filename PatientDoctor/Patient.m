//
//  Patient.m
//  PatientDoctor
//
//  Created by Shine Chaudhuri on 2015-10-01.
//  Copyright © 2015 Shine Chaudhuri. All rights reserved.
//

#import "Patient.h"

@implementation Patient

-(id)initWithAge:(int)age andName:(NSString *)name andHealthCard:(BOOL)h {
    
    self = [super init];
    if (self) {
        
        self.age = age;
        self.name = name;
        self.healthCard = h;
        self.symptoms = [[NSMutableSet alloc]init];
        
    }
    
    return self;
}

-(void)introduceMyself {
    NSLog(@"Hello my name is %@, my age is %i",self.name, self.age);
}

-(BOOL)visitDoctor:(Doctor *)d {
    return YES;
    }


@end
