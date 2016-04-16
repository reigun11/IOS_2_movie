//
//  Movie.m
//  MovieList
//
//  Created by Trainning Educational on 09/04/16.
//  Copyright © 2016 Valter Abranches. All rights reserved.
//

#import "Movie.h"

@implementation Movie

-(NSString *)stringRepresentation{
    NSString *representation = [NSString stringWithFormat:@"🎥 %@ (%li)", _title, (long)_year];
    return representation;
};

@end