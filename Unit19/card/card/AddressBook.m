#import "AddressBook.h"

@implementation AddressBook

@synthesize bookName, book;

//set up the Address Book's name and an empty book

-(id) initWithName: (NSString *) name
{
    self = [super init];
    
    if (self) {
        
        bookName = name;
        book = [NSMutableArray array];
    }
    return self;
}



-(id) init
{
    return [self initWithName: @"NoName"];
}





//CODE FOR EXERCISE 18_1

-(void) setBook:(NSMutableArray *)aBook
{
    book = [NSMutableArray arrayWithArray: aBook];
    
}

-(id) copyWithZone: (NSZone *) zone
{
    AddressBook *newBook = [[AddressBook allocWithZone: zone] init];                //allocating a new AddressBook
    newBook.bookName = [NSString stringWithFormat: @"Copy of %@", self.bookName];   //creating the copy name
    
    [newBook setBook: book];        //copying the book array with the overriden setter method
    
    return  newBook;               //return the copy
}

//END OF EXERCISE 18_1




//CODE FOR CHAPTER 19

-(id)initWithCoder:(NSCoder *)aDecoder
{
    bookName = [aDecoder decodeObjectForKey: @"AddressBookBookName"];
    book = [aDecoder decodeObjectForKey: @"AddressBookBook"];
    
    return  self;
}


-(void) encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject: bookName forKey:@"AddressBookBookName"];
    [aCoder encodeObject: book forKey: @"AddressBookBook"];
}
//END OF CODE FOR CHAPTER 19



-(void) addCard: (AddressCard *) theCard
{
    [book addObject: theCard];
}



-(NSUInteger) entries
{
    return [book count];
}



-(void) list
{
    NSLog(@"======== Contents of: %@ ========", bookName);
    
    for (AddressCard *theCard in book)
        NSLog(@"%-20s    %-32s", [theCard.firstName UTF8String], [theCard.lastName UTF8String]);
    NSLog(@"===================================================");
    
}




-(id) lookup:(NSString *)nameToSearch   //VIENE RESTITUITO UN ARRAY CONTENENTE TUTTI I CONTATTI TROVATI
{
    NSIndexSet * resultIndexes;
    resultIndexes = [book indexesOfObjectsPassingTest:^BOOL(AddressCard *nextCard, NSUInteger idx, BOOL *stop) {
        
        if (([nextCard.firstName rangeOfString:nameToSearch options:NSCaseInsensitiveSearch].location != NSNotFound) || //looking up by first and last name
            ([nextCard.lastName rangeOfString:nameToSearch options:NSCaseInsensitiveSearch].location != NSNotFound))
            return  YES;
        else
            return NO;
    }];
    
    return [book objectsAtIndexes: resultIndexes];
    
}


@end