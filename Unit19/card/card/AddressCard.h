#import<Foundation/Foundation.h>

@interface AddressCard: NSObject <NSCoding>

@property (copy, nonatomic) NSString *firstName, *lastName, *country, *address, *city, *ZIP, *phone, *email;

-(void) setFirstName: (NSString *) aFirstName
            lastName: (NSString *) aLastName
             country: (NSString *) aCountry
             address: (NSString *) aAddress
                city: (NSString *) aCity
                 ZIP: (NSString *) aZIP
               phone: (NSString *) aPhone
               email: (NSString *) aEmail;
-(void) print;

@end