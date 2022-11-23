//
//  MrcVSArcTests.m
//  MrcVSArcTests
//
//  Created by Chris Yang on 11/18/22.
//

#import <XCTest/XCTest.h>

@interface ARCTests : XCTestCase

@end

@implementation ARCTests


- (void)testPerformance {
  [self measureBlock:^{
    [self loopDictionary];
  }];
}


- (void)loopDictionary {
  NSUInteger length = 50000;
  NSMutableArray* array = [[NSMutableArray alloc] initWithCapacity:length];
  for (UInt32 i = 0; i < length; i++) {
    id dic = [self getDict];
    [array addObject:dic];
  }
}

- (NSDictionary *)getDict {
  NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
  [dictionary setObject:@"object" forKey:@"key"];
  return dictionary;
}

@end
