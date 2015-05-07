//
//  Doctor.h
//  
//
//  Created by Vineet Tiwari on 2015-05-07.
//
//

#import <Foundation/Foundation.h>

@class Patient;

@interface Doctor : NSObject

@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* specialization;

- (instancetype) initWithName:(NSString *)name andSpecialization:(NSString *)specialization;

- (void) addOrDeclinePatient:(Patient *)patient;

- (void) medicationRequest:(Patient *)patient;

@end
