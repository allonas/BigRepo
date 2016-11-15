//
//  SearchNavFilterViewController.m
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "DatasourceManager.h"
#import "ROFilterFieldSelection.h"
#import "ROUtils.h"
#import "SearchDSDS.h"
#import "SearchDSDSItem.h"
#import "SearchDSDSItemKeys.h"
#import "SearchNavFilterViewController.h"

@implementation SearchNavFilterViewController

- (void) viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"SearchNav"];

	self.navigationItem.title = NSLocalizedString(@"SearchNav", nil);
	
    self.fields = @[
                     [ROFilterFieldSelection fieldLabel:@"Month"
                                              fieldName:kSearchDSDSItemMonth
                                         formController:self
                                                 single:NO],
                     
                     [ROFilterFieldSelection fieldLabel:@"Location"
                                              fieldName:kSearchDSDSItemLocation
                                         formController:self
                                                 single:NO],
                     
                     [ROFilterFieldSelection fieldLabel:@"Editorial"
                                              fieldName:kSearchDSDSItemEditorial
                                         formController:self
                                                 single:NO],
                     
                     [ROFilterFieldSelection fieldLabel:@"Custom"
                                              fieldName:kSearchDSDSItemCustom
                                         formController:self
                                                 single:NO],
                     
                     [ROFilterFieldSelection fieldLabel:@"Owner"
                                              fieldName:kSearchDSDSItemOwner
                                         formController:self
                                                 single:NO],
                     
                     [ROFilterFieldSelection fieldLabel:@"SalesPerson"
                                              fieldName:kSearchDSDSItemSalesPerson
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

