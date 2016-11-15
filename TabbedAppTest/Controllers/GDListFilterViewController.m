//
//  GDListFilterViewController.m
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "DatasourceManager.h"
#import "GDListFilterViewController.h"
#import "GoogleDriveDS.h"
#import "GoogleDriveDSSchemaItem.h"
#import "GoogleDriveDSSchemaItemKeys.h"
#import "ROFilterFieldDateRange.h"
#import "ROFilterFieldSelection.h"
#import "ROUtils.h"

@implementation GDListFilterViewController

- (void) viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"GDList"];

	self.navigationItem.title = NSLocalizedString(@"GDList", nil);
	
    self.fields = @[
                     [ROFilterFieldSelection fieldLabel:@"Name"
                                              fieldName:kGoogleDriveDSSchemaItemTitle
                                         formController:self
                                                 single:NO],
                     
                     [ROFilterFieldSelection fieldLabel:@"Created By"
                                              fieldName:kGoogleDriveDSSchemaItemCreatedBy
                                         formController:self
                                                 single:NO],
                     
                     [ROFilterFieldDateRange fieldLabel:@"Date modified"
                                              fieldName:kGoogleDriveDSSchemaItemModifiedDate
                                         formController:self],
                     
                     [ROFilterFieldSelection fieldLabel:@"Download Url"
                                              fieldName:kGoogleDriveDSSchemaItemDownloadUrl
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

