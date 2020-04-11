#import "ArrayCalculator.h"

@implementation ArrayCalculator
+ (NSInteger)maxProductOf:(NSInteger)numberOfItems itemsFromArray:(NSArray *)array {
    NSMutableArray *arr = [array mutableCopy];
    int mult = 1;
    for (int i=0; i<arr.count; i++) {
        if ([[arr objectAtIndex:i] isKindOfClass:[NSNumber class]]){
            continue;
        } else {
            [arr removeObjectAtIndex:i];
            i--;
        }
    }
    if (arr.count == 0)
    {  return 0;
        
    } else
        if (arr.count<numberOfItems)
    {
         for (int i=0; i<arr.count; i++)  {
              mult = mult * [[arr objectAtIndex:i] intValue];
        }
        return mult;
    }
        else
        {
            [arr sortUsingComparator:^NSComparisonResult(id a, id b){
                NSNumber *first = (NSNumber *)a;
                NSNumber *second = (NSNumber *)b;
                int f = [first intValue];
                int s = [second intValue];
                if (abs(f) < abs(s)) {
                    return NSOrderedDescending;
                } else if (abs(f) == abs(s)) {
                    return NSOrderedSame;
                } else {
                    return NSOrderedAscending;
                }
            }];
            int k=0;
            for (int i=0; i<numberOfItems; i++){
                if ([[arr objectAtIndex:i] intValue]<0){
                    k++;
                }
            }
            if (k % 2==0){
                for (int i=0; i<numberOfItems; i++){
                    mult = mult * [[arr objectAtIndex:i] intValue];
                }
            } else
            {
                for (int i=0; i<k-1; i++){
                    mult = mult * [[arr objectAtIndex:i] intValue];
                }
                for (int j=k; j<numberOfItems+k; j++){
                    mult = mult * [[arr objectAtIndex:j] intValue];
                }
            }
            
            return mult;
        }
}
@end
