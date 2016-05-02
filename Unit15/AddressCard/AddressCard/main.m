#import "AddressBook.h"
int main(int argc, char *argv[])
{
    @autoreleasepool {
        NSString *aName = @"lihaoxin";
        NSString *aEmail = @" lihaoxin@123.com";
        NSString *bName = @"lihaoxin123";
        NSString *bEmail = @"lhx@123.com";
        NSString *cName = @"asdasdasd";
        NSString *cEmail = @"asdasd@123.com";
        NSString *dName = @"zxczxczxc";
        NSString *dEmail = @"zxczxc@123.com";
        
        AddressCard *card1 = [[AddressCard alloc]init];
        AddressCard *card2 = [[AddressCard alloc]init];
        AddressCard *card3 = [[AddressCard alloc]init];
        AddressCard *card4 = [[AddressCard alloc]init];
        
        AddressBook *myBook = [[AddressBook alloc]initWithName: @"lihaoxin's Address Book"];
        AddressCard *myCard;
        
        [card1 setName:aName andEmail:aEmail];
        [card2 setName:bName andEmail:bEmail];
        [card3 setName:cName andEmail:cEmail];
        [card4 setName:dName andEmail:dEmail];
        
        [myBook addCard: card1];
        [myBook addCard: card2];
        [myBook addCard: card3];
        [myBook addCard: card4];
        
        NSLog(@"Lookup: asdasdasd");
        myCard = [myBook lookup:@"asdasdasd"];
        if (myCard != nil)
            [myCard print];
        else
            NSLog(@"Not found!");
        [myBook removeCard:myCard];
        [myBook list];
        
    }
    return 0;
}
