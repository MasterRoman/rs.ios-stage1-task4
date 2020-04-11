#import "SquareDecomposer.h"

@implementation SquareDecomposer
+ (void)rec:(int)curSum :(int)q :(NSMutableArray*)arr :(int)koef :(int)k{
    if (curSum == 0){
        NSNumber *sutable = [NSNumber numberWithInt:q];
        [arr addObject:sutable];
        k=1;
        return;
    }
    if (((curSum <= 2) && ((q >= 4) || (q==1))) || (k==1) || ((curSum == 4) && (q == 2))){
        return;
    }
    q = trunc(sqrt(curSum))-koef;
    curSum = curSum - q*q;
    [self rec:curSum :q:arr:0:k];
    if (arr.count>0){
        k=1;
    }
    curSum = curSum + q*q;
    if ((q-1>=4)&&(k!=1)&&(koef!=1)){
        [self rec:curSum :q:arr:1:k];
        if (arr.count>0){
            k=1;
        }
        curSum = curSum + q*q;}
    if ((q-2>=3)&&(k!=1)){
        [self rec:curSum :q:arr:2:k];
        if (arr.count>0){
            k=1;
        }
        curSum = curSum + q*q;
    }
    if (k==1){
        NSNumber *sutable = [NSNumber numberWithInt:q];
        [arr addObject:sutable];
        return;
    }
}

- (NSArray <NSNumber*>*)decomposeNumber:(NSNumber*)number {
    if (([number intValue]<0) || [number intValue]==2) {
        return nil;
    }
    NSMutableArray *arr = [[NSMutableArray alloc] initWithCapacity:0];
    NSNumber *sutable = 0;
    int cur = [number intValue];
    int sum = cur*cur;
    cur--;
    sum = sum - cur*cur;
    
    int k = 0;
    [SquareDecomposer rec:sum :cur:arr:0:k];
    sutable = [NSNumber numberWithInt:cur];
    [arr addObject:sutable];
    [arr removeObjectAtIndex:0];
    for (int j=0;j<arr.count-1;j++){
        if (([[arr objectAtIndex:j] intValue ] == [[arr objectAtIndex:j+1] intValue]-1) && ([[arr objectAtIndex:j] intValue ]>3)){

            [arr removeObjectAtIndex:(j+1)];
            
        }
    }
    int s = 0;
    for (int j=0;j<arr.count;j++){
        s += [[arr objectAtIndex:j] intValue ] * [[arr objectAtIndex:j] intValue ];
        }
    s-=([number intValue] * [number intValue]);
    s = sqrt(s);
    for (int j=0;j<arr.count;j++){
        if ([[arr objectAtIndex:j] intValue ]  == s){
            [arr removeObjectAtIndex:j];
            break;
        }
           }
    return arr;
}
@end
