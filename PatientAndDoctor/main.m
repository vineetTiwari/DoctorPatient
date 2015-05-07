//
//  main.m
//  PatientAndDoctor
//
//  Created by Vineet Tiwari on 2015-05-07.
//  Copyright (c) 2015 vinny.co. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
      // insert code here...
    Patient *patient1 = [[Patient alloc] initWithName:@"Homer" age:40 HealthCard:YES andSymptom:@"diarrhea"];
     
    Doctor *doctor1 = [[Doctor alloc] initWithName:@"Dr Hibbert" andSpecialization:@"Family Doctor"];

    [doctor1 addOrDeclinePatient:patient1];

    [doctor1 medicationRequest:patient1];

  }
    return 0;
}
