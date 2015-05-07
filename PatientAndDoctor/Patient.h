//
//  Patient.h
//  PatientAndDoctor
//
//  Created by Vineet Tiwari on 2015-05-07.
//  Copyright (c) 2015 vinny.co. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"

@interface Patient : NSObject

@property (nonatomic, strong) NSString* name;
@property (nonatomic, assign) int age;
@property (nonatomic, assign) BOOL healthCard;
@property (nonatomic, strong) NSString* symptome;

- (instancetype) initWithName:(NSString *)name age:(int)age HealthCard:(BOOL)healthCard andSymptom:(NSString *)symptom;

- (void) describeYourSelf;

@end
