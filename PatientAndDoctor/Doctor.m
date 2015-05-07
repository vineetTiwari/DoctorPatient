//
//  Doctor.m
//  
//
//  Created by Vineet Tiwari on 2015-05-07.
//
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor{

  NSMutableArray *_patients;
  NSDictionary *_symptomPresciptions;
  NSMutableArray* _presciptionCollection;
}

- (instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization{

  self = [super init];

  if (self) {
    self.name = name;
    self.specialization = specialization;
    _patients = [[NSMutableArray alloc] init];
    _symptomPresciptions = @{
                             @"headache": @"Paracetamol",
                             @"sore back": @"Tylenol",
                             @"erectile dysfunction": @"Cialis",
                             @"diarrhea": @"Imodium"
                             };
    _presciptionCollection = [[NSMutableArray alloc] init];

  }

  return self;
}

- (void) addOrDeclinePatient:(Patient *)patient {

  if (patient.healthCard == YES) {

    [_patients addObject:patient];
    NSLog(@"Doctor: %@, welcome to our practice! I am %@ and I will be your %@\n", patient.name, self.name, self.specialization);
    [patient describeYourSelf];

  } else {

    NSLog(@"Doctor: Sorry, but we cannot acceot you as a patient.\n");
  }

}

- (void) medicationRequest:(Patient *)patient {

  if ([_patients containsObject:patient] == YES) {

    NSString *prescription = [_symptomPresciptions objectForKey:patient.symptome];

    NSLog(@"\n\nPatient: %@ I am suffering from %@.", self.name, patient.symptome);

    if (prescription == nil) {

      NSLog(@"Doctor: Sorry %@, I have nothing for you.\n", patient.name);
    } else {

      

      NSLog(@"Doctor: I have just the medication for you %@. Take one of %@ twice a day.\n", patient.name, prescription);
    }

  }
  
}


@end


