//  OCHamcrest by Jon Reid, http://qualitycoding.org/about/
//  Copyright 2016 hamcrest.org. See LICENSE.txt

#import <OCHamcrest/HCBaseMatcher.h>


NS_ASSUME_NONNULL_BEGIN

@interface HCClassMatcher : HCBaseMatcher

@property (nonatomic, strong, readonly) Class theClass;

- (instancetype)initWithClass:(Class)aClass NS_DESIGNATED_INITIALIZER;
- (instancetype)init NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
