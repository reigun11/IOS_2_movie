//
//  Movie.h
//  MovieList
//
//  Created by Trainning Educational on 09/04/16.
//  Copyright © 2016 Valter Abranches. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Movie : NSObject

@property (strong, nonatomic) NSString *title;

@property (nonatomic) NSInteger year;

- (NSString *)stringRepresentation;



@end
