//
//  EXListFilterViewController.m
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "DatasourceManager.h"
#import "ExcelOnlineDS.h"
#import "EXListFilterViewController.h"
#import "Hoja1Item.h"
#import "Hoja1ItemKeys.h"
#import "ROFilterFieldSelection.h"
#import "ROUtils.h"

@implementation EXListFilterViewController

- (void) viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"EXList"];

	self.navigationItem.title = NSLocalizedString(@"EXList", nil);
	
    self.fields = @[
                     [ROFilterFieldSelection fieldLabel:@"Column1"
                                              fieldName:kHoja1ItemColumn1
                                         formController:self
                                                 single:NO],
                     
                     [ROFilterFieldSelection fieldLabel:@"Column2"
                                              fieldName:kHoja1ItemColumn2
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

