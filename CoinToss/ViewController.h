//
//  ViewController.h
//  CoinToss
//
//  Created by den on 28/03/2016.
//  Copyright (c) 2016 den. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    UILabel *status;
    UILabel *result;

}

@property (nonatomic, retain) IBOutlet UILabel *status;
@property (nonatomic, retain) IBOutlet UILabel *result;

-   (IBAction)callHeads;
-   (IBAction)callTails;


@end

