//
//  GSListFilterViewController.m
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "DatasourceManager.h"
#import "GoogleSheetDS.h"
#import "GSListFilterViewController.h"
#import "Hoja1Schema1Item.h"
#import "Hoja1Schema1ItemKeys.h"
#import "ROFilterFieldDateRange.h"
#import "ROFilterFieldSelection.h"
#import "ROUtils.h"

@implementation GSListFilterViewController

- (void) viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"GSList"];

	self.navigationItem.title = NSLocalizedString(@"GSList", nil);
	
    self.fields = @[
                     [ROFilterFieldSelection fieldLabel:@"A"
                                              fieldName:kHoja1Schema1ItemA
                                         formController:self
                                                 single:NO],
                     
                     [ROFilterFieldDateRange fieldLabel:@"Dat"
                                              fieldName:kHoja1Schema1ItemC
                                         formController:self],
                     
                     [ROFilterFieldSelection fieldLabel:@"G"
                                              fieldName:kHoja1Schema1ItemG
                                         formController:self
                                                 single:NO],
                     
                     [ROFilterFieldSelection fieldLabel:@"H"
                                              fieldName:kHoja1Schema1ItemH
                                         formController:self
                                                 single:NO],
                     
                     [ROFilterFieldSelection fieldLabel:@"I"
                                              fieldName:kHoja1Schema1ItemI
                                         formController:self
                                                 single:NO],
                     
                     [ROFilterFieldSelection fieldLabel:@"J"
                                              fieldName:kHoja1Schema1ItemJ
                                         formController:self
                                                 single:NO],
                     
    ];
}

#pragma mark - Filter actions

- (void)close {
  
    [super close];
}

- (void)cancel {
  
    [super cancel];
}

- (void)submit {

    [super submit];
}

- (void)reset {
  
    [super reset];
}

@end

