//
//  clearAdressBookViewController.m
//  clearAdressBook
//
//  Created by Guntis Treulands on 11/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "clearAdressBookViewController.h"

@implementation clearAdressBookViewController



// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {

	[self clearAllGroups];
    
    [self clearAllContacts];
    
    [[NSThread mainThread] exit];
}


- (void)clearAllGroups
{
    BOOL res;
    
    CFErrorRef error;
    
    ABAddressBookRef ab = ABAddressBookCreate();

    NSArray *groups = (NSArray *) ABAddressBookCopyArrayOfAllGroups(ab);

    for (id _group in groups)
    {
        res = ABAddressBookRemoveRecord(ab, _group, &error);
    }

    ABAddressBookSave(ab, nil);
}


- (void)clearAllContacts
{
    BOOL res;
    
    CFErrorRef error;
    
    ABAddressBookRef ab = ABAddressBookCreate();

    NSArray *groups = (NSArray *) ABAddressBookCopyArrayOfAllPeople(ab);

    for (id _group in groups)
    {
        res = ABAddressBookRemoveRecord(ab, _group, &error);
    }

    ABAddressBookSave(ab, nil);
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
