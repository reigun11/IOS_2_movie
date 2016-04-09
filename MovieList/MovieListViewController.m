//
//  MovieListViewController.m
//  MovieList
//
//  Created by Trainning Educational on 09/04/16.
//  Copyright © 2016 Valter Abranches. All rights reserved.
//


#import "MovieListViewController.h"
#import "Movie.h"

@interface MovieListViewController (){
    NSMutableArray *_movies;
}

@end

@implementation MovieListViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    _movies = [[NSMutableArray alloc] init];
}

- (IBAction)save:(UIButton *)sender {
    NSString *movieName = _movieNameTextField.text;
    NSString *yearString = _yearTextField.text;
    // verificar as informaçÕes
    
    if (movieName != nil &&
        [movieName isEqualToString: @""] &&
        yearString !=nil &&
        [yearString isEqualToString:@""]) {
        
        // criando o objeto movie
        NSInteger year = [yearString integerValue];
        Movie *movie = [[Movie alloc] init];
        movie.title = movieName;
        movie.year = year;
        
        // adicionar no array
        [_movies addObject:movie];
    }
}



@end
