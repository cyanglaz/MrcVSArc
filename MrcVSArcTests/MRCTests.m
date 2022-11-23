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
    [self measureBlock:^{
      [self loopDictionary];
    }];
}


- (void)loopDictionary {
  NSUInteger length = 50000;
  NSMutableArray* array = [[[NSMutableArray alloc]initWithCapacity:length] autorelease];
  for (UInt32 i = 0; i < length; i++) {
    id dic = [self getDict];
    [array addObject:dic];
  }
}

- (NSDictionary *)getDict {
  NSMutableDictionary *dictionary = [[[NSMutableDictionary alloc] init] autorelease];
  [dictionary setObject:@"object" forKey:@"key"];
  return dictionary;
}

@end
