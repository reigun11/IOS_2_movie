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
        ![movieName isEqualToString: @""] &&
        yearString !=nil &&
        ![yearString isEqualToString:@""]) {
        
        // criando o objeto movie
        NSInteger year = [yearString integerValue];
        Movie *movie = [[Movie alloc] init];
        movie.title = movieName;
        movie.year = year;
        
        // adicionar no array
        [_movies addObject:movie];
        [self updateUI];
    }
    else{
        NSString *title =@"Informacoes invalidadas";
        NSString *msg =@"Digite os coisa campos corretamentes";
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title  message:msg preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault  handler:^(UIAlertAction * _Nonnull action) {
            //NSLog(@"errou manow");
            [_movieNameTextField becomeFirstResponder];
        }];
        [alertController addAction:action];
        [self presentViewController:alertController
                           animated:YES
                         completion:nil];
         
    }

}

- (void) updateUI{
    NSString *outputString = @"";
    for (Movie *movie in _movies) {
        NSString *stringRepresentation =
        [NSString stringWithFormat:@"%@\n", [movie stringRepresentation]];

       outputString = [outputString stringByAppendingString:stringRepresentation];
        
    }
    _movieListLabel.text = outputString;
    
}

@end
