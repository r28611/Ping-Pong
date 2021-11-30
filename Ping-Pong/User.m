//
//  User.m
//  Ping-Pong
//
//  Created by Margarita Novokhatskaia on 30/11/2021.
//

#import "User.h"

@interface User()

@property (strong, nonatomic) NSString *name;

@end

@implementation User

- (void) writeResultsToFile {
    NSArray *gameResults = [NSArray arrayWithObjects:@1, @2, @3, @4, nil];
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    path = [path stringByAppendingString:@"/ping-pongResults.plist"];
    [gameResults writeToFile:path atomically:YES];
    NSLog(@"results saved");
}

- (void) readResultsFromFile {
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    path = [path stringByAppendingString:@"/ping-pongResults.plist"];
        
    NSArray *elements = [NSArray arrayWithContentsOfFile:path];
    NSLog(@"%@", elements);
}

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}

- (void)nameToData {
    NSData *data = [self.name dataUsingEncoding:NSUTF8StringEncoding];
    NSLog(@"%@ - %@", self.name, data);
}

@end
