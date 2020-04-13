#import "TelephoneFinder.h"

@implementation TelephoneFinder
- (NSArray <NSString*>*)findAllNumbersFromGivenNumber:(NSString*)number {
    NSMutableString *new = [number mutableCopy];
    NSMutableSet <NSString *> *resultArray = [[NSMutableSet alloc] init];
    for (int i=0; i<number.length; i++) {
        char k = [number characterAtIndex:i];
        switch (k) {
            case '1':
            {
                new = [number mutableCopy];
                [new replaceCharactersInRange:NSMakeRange(i, 1) withString:@"2"];
                [resultArray addObject:new];
                new = [number mutableCopy];
                [new replaceCharactersInRange:NSMakeRange(i, 1) withString:@"4"];
                [resultArray addObject:new];
                break;
            }
            case '2':
            {   new = [number mutableCopy];
                [new replaceCharactersInRange:NSMakeRange(i, 1) withString:@"1"];
                [resultArray addObject:new];
                new = [number mutableCopy];
                [new replaceCharactersInRange:NSMakeRange(i, 1) withString:@"3"];
                [resultArray addObject:new];
                new = [number mutableCopy];
                [new replaceCharactersInRange:NSMakeRange(i, 1) withString:@"5"];
                [resultArray addObject:new];
                break;
            }
            case '3':
            {   new = [number mutableCopy];
                [new replaceCharactersInRange:NSMakeRange(i, 1) withString:@"2"];
                [resultArray addObject:new];
                new = [number mutableCopy];
                [new replaceCharactersInRange:NSMakeRange(i, 1) withString:@"6"];
                [resultArray addObject:new];
                break;
            }
            case '4':
            {
                [new replaceCharactersInRange:NSMakeRange(i, 1) withString:@"1"];
                [resultArray addObject:new];
                [new replaceCharactersInRange:NSMakeRange(i, 1) withString:@"5"];
                [resultArray addObject:new];
                [new replaceCharactersInRange:NSMakeRange(i, 1) withString:@"7"];
                [resultArray addObject:new];
                break;
            }
            case '5':
            {   new = [number mutableCopy];
                [new replaceCharactersInRange:NSMakeRange(i, 1) withString:@"2"];
                [resultArray addObject:new];
                new = [number mutableCopy];
                [new replaceCharactersInRange:NSMakeRange(i, 1) withString:@"6"];
                [resultArray addObject:new];
                new = [number mutableCopy];
                [new replaceCharactersInRange:NSMakeRange(i, 1) withString:@"4"];
                [resultArray addObject:new];
                new = [number mutableCopy];
                [new replaceCharactersInRange:NSMakeRange(i, 1) withString:@"8"];
                [resultArray addObject:new];
                break;
            }
            case '6':
            {new = [number mutableCopy];
                [new replaceCharactersInRange:NSMakeRange(i, 1) withString:@"3"];
                [resultArray addObject:new];
                new = [number mutableCopy];
                [new replaceCharactersInRange:NSMakeRange(i, 1) withString:@"5"];
                [resultArray addObject:new];
                new = [number mutableCopy];
                [new replaceCharactersInRange:NSMakeRange(i, 1) withString:@"9"];
                [resultArray addObject:new];
                break;
            }
            case '7':
            {new = [number mutableCopy];
                [new replaceCharactersInRange:NSMakeRange(i, 1) withString:@"4"];
                [resultArray addObject:new];
                new = [number mutableCopy];
                [new replaceCharactersInRange:NSMakeRange(i, 1) withString:@"8"];
                [resultArray addObject:new];
                break;
            }
            case '8':
            {new = [number mutableCopy];
                [new replaceCharactersInRange:NSMakeRange(i, 1) withString:@"5"];
                [resultArray addObject:new];
                new = [number mutableCopy];
                [new replaceCharactersInRange:NSMakeRange(i, 1) withString:@"7"];
                [resultArray addObject:new];
                new = [number mutableCopy];
                [new replaceCharactersInRange:NSMakeRange(i, 1) withString:@"9"];
                [resultArray addObject:new];
                new = [number mutableCopy];
                [new replaceCharactersInRange:NSMakeRange(i, 1) withString:@"0"];
                [resultArray addObject:new];
                break;
            }
            case '9':
            {new = [number mutableCopy];
                [new replaceCharactersInRange:NSMakeRange(i, 1) withString:@"8"];
                [resultArray addObject:new];
                new = [number mutableCopy];
                [new replaceCharactersInRange:NSMakeRange(i, 1) withString:@"6"];
                [resultArray addObject:new];
                break;
            }
            case '0':
            {   new = [number mutableCopy];
                [new replaceCharactersInRange:NSMakeRange(i, 1) withString:@"8"];
                [resultArray addObject:new];
                break;
            }
            default: return nil;
        }
    }
    NSMutableArray <NSString *> *res = [[NSMutableArray alloc] initWithArray:[resultArray allObjects]];
    return res;
}
@end
