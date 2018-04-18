//
//  ViewController.m
//  NSPointerArray
//
//  Created by George on 18.04.2018.
//  Copyright © 2018 George Witkowski. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    @autoreleasepool {
    
    //Create pointer array and add 10 objects inside.
    NSPointerArray *pointers = [NSPointerArray weakObjectsPointerArray];
    for(int i = 0; i < 10; i++) {
        [pointers addPointer:[NSString stringWithFormat:@"myString"]];
    }
    
    //Check arrays count.
    NSLog(@"%@, count = %lu",[pointers allObjects], [pointers count]);
    
    //Nil several objects, added to the array and check count once again.
     [pointers addPointer:[NSString stringWithFormat:@"added"]];
     [pointers addPointer:nil];
    
    //and check count once again.
     NSLog(@"%lu", [pointers count]);
}
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
