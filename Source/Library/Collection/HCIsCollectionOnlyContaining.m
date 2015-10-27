//  OCHamcrest by Jon Reid, http://qualitycoding.org/about/
//  Copyright 2015 hamcrest.org. See LICENSE.txt

#import "HCIsCollectionOnlyContaining.h"

#import "HCAnyOf.h"
#import "HCCollect.h"


@implementation HCIsCollectionOnlyContaining

- (void)describeTo:(id <HCDescription>)description
{
    [[description appendText:@"a collection containing items matching "]
                  appendDescriptionOf:self.matcher];
}

@end


id HC_onlyContains(id itemMatchers, ...)
{
    va_list args;
    va_start(args, itemMatchers);
    NSArray *matchers = HCCollectMatchers(itemMatchers, args);
    va_end(args);

    return [[HCIsCollectionOnlyContaining alloc] initWithMatcher:HC_anyOfIn(matchers)];
}
