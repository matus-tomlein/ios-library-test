#import <XCTest/XCTest.h>
#import "PublicConstants.h"
#import "PrivateConstants.h"

@interface TestConstants : XCTestCase

@end

@implementation TestConstants

- (void)testPublic {
    XCTAssertEqual(publicConstant, @"public");
}

- (void)testPrivate {
    XCTAssertEqual(privateConstant, @"private");
}

@end
