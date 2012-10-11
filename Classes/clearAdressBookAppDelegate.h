//
//  clearAdressBookAppDelegate.h
//  clearAdressBook
//
//  Created by Guntis Treulands on 11/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class clearAdressBookViewController;

@interface clearAdressBookAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    clearAdressBookViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet clearAdressBookViewController *viewController;

@end

