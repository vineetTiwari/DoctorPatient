//
//  Patient.m
//  PatientAndDoctor
//
//  Created by Vineet Tiwari on 2015-05-07.
//  Copyright (c) 2015 vinny.co. All rights reserved.
//

#import "Patient.h"

@implementation Patient {

}

- (instancetype)initWithName:(NSString *)name age:(int)age HealthCard:(BOOL)healthCard andSymptom:(NSString *)symptom {

  self = [super init];

  if (self) {
    self.name = name;
    self.age = age;
    self.healthCard = healthCard;
    self.symptome = symptom;
    
  }

  return self;
}

- (void) describeYourSelf {

  NSLog(@"Patient: As you already know I am %@ and I am %d.\n", self.name, self.age);
}


@end

