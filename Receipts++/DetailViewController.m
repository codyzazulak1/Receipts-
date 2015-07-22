//
//  DetailViewController.m
//  Receipts++
//
//  Created by Cody Zazulak on 2015-07-21.
//  Copyright (c) 2015 Cody Zazulak. All rights reserved.
//

#import "DetailViewController.h"
#import "Tag.h"
#import "Receipt.h"

@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextLabel;
@property (weak, nonatomic) IBOutlet UITextField *totalTextLabel;
@property (weak, nonatomic) IBOutlet UITextField *tagsTextLabel;
- (IBAction)saveButtonPressed:(UIButton *)sender;

@end

@implementation DetailViewController

- (void)setReceipt:(Receipt *)newReceipt {
    if (_receipt != newReceipt) {
        _receipt = newReceipt;
    }
    NSLog(@"Receipt: %@",self.receipt.recieptDescription);
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveButtonPressed:(UIButton *)sender {
    
    if([self.nameTextLabel isFirstResponder]){
        [self.nameTextLabel resignFirstResponder];
    }
    if([self.totalTextLabel isFirstResponder]){
        [self.totalTextLabel resignFirstResponder];
    }
    if([self.tagsTextLabel isFirstResponder]){
        [self.tagsTextLabel resignFirstResponder];
    }
    
    self.receipt.recieptDescription = self.nameTextLabel.text;
    
    NSNumberFormatter * f = [[NSNumberFormatter alloc] init];
    [f setNumberStyle:NSNumberFormatterDecimalStyle];
    NSNumber * myNumber = [f numberFromString:self.totalTextLabel.text];
    self.receipt.amount = myNumber;
    
    self.tag.tagName = self.tagsTextLabel.text;
    
    NSLog(@"Title: %@", self.nameTextLabel.text);
    NSLog(@"Total: %@", self.totalTextLabel.text);
    NSLog(@"Tags: %@",  self.tagsTextLabel.text);
    
    NSError *error = nil;
    if (![self.receipt.managedObjectContext save:&error]) {
        // Replace this implementation with code to handle the error appropriately.
        // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }
    
}

@end
