#import <Foundation/Foundation.h>

int main(int argc, char * argv[]) {
    @autoreleasepool {
        double value1, value2;
        char operator;
        Calculator *deskCalc = [[Calculator alloc] init];
        
        NSLog (@"Type in your expression.");
        scanf("%lf %c %lf", &value1, &operator, &value2);
        
        [deskCalc setAccmulator: value1];
        
        switch (operator) {
            case '+':
                [deskCalc add: value2];
                
                
                break;
                
            case '-':
                [deskCalc subtract:value2];
                break;
            case '*':
                [deskCalc multiply: value2];
                break;
            case '/':
                [deskCalc divide: value2];
            default:
                NSLog(@" Unknown operator.");
                break;
                
                
                
        }
        NSLog(@"%.2f",[deskCalc accmulator]);
        
    }
    return 0;
}
