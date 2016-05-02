

#import <Foundation/Foundation.h>
@class XYPoint;
@interface Rectingle : NSObject
@property int width, height;

-(XYPoint *) origin;
-(void) setOrgin: (XYPoint *) pt;
-(void) setWidth:(int) w andHeight: (int) h;
-(int) area;
-(int) perimeter;

@end
