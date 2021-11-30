//
//  User.h
//  Ping-Pong
//
//  Created by Margarita Novokhatskaia on 30/11/2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface User : NSObject

- (instancetype)initWithName:(NSString *)name;
- (void)nameToData;
- (void) writeResultsToFile;
- (void) readResultsFromFile;

@end

NS_ASSUME_NONNULL_END
