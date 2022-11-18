//
//  MRCTests.m
//  MrcVSArcTests
//
//  Created by Chris Yang on 11/18/22.
//

#import <XCTest/XCTest.h>

@interface MRCTests : XCTestCase

@end

@implementation MRCTests

- (void)testPerformance {
    // This is an example of a performance test case.
    [self measureBlock:^{
      [self loopDictionary];
    }];
}


- (void)loopDictionary {
  NSUInteger length = 500000;
  NSMutableArray* array = [[[NSMutableArray alloc]initWithCapacity:length] autorelease];
  for (UInt32 i = 0; i < length; i++) {
    [array addObject:[self getDict]];
  }
}

- (NSDictionary *)getDict {
  return @{@"key": @"value"};
}

@end
