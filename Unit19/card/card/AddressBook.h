#import"AddressCard.h"

@interface AddressBook: NSObject <NSCopying, NSCoding>

@property (nonatomic, copy) NSString * bookName;
@property (nonatomic, strong) NSMutableArray * book;

-(id) initWithName: (NSString *) name;
-(void) addCard: (AddressCard *) theCard;
-(NSUInteger) entries;
-(void) list;
-(id) lookup: (NSString *) nameToSearch;

@end