//
//  BooksFilterViewController.m
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "BooksFilterViewController.h"
#import "DatasourceManager.h"
#import "ListDSDS.h"
#import "ListDSDSItem.h"
#import "ListDSDSItemKeys.h"
#import "ROFilterFieldDateRange.h"
#import "ROFilterFieldSelection.h"
#import "ROUtils.h"

@implementation BooksFilterViewController

- (void) viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"Books"];

	self.navigationItem.title = NSLocalizedString(@"Books", nil);
	
    self.fields = @[
                     [ROFilterFieldDateRange fieldLabel:@"FECHA"
                                              fieldName:kListDSDSItemFECHA
                                         formController:self],
                     
                     [ROFilterFieldSelection fieldLabel:@"AUTOR"
                                              fieldName:kListDSDSItemAUTOR
                                         formController:self
                                                 single:NO],
                     
                     [ROFilterFieldSelection fieldLabel:@"TITULO"
                                              fieldName:kListDSDSItemTITULO
                                         formController:self
                                                 single:NO],
                     
                     [ROFilterFieldSelection fieldLabel:@"EDITORIAL"
                                              fieldName:kListDSDSItemEDITORIAL
                                         formController:self
                                                 single:NO],
                     
                     [ROFilterFieldSelection fieldLabel:@"EDICION"
                                              fieldName:kListDSDSItemEDICION
                                         formController:self
                                                 single:NO],
                     
                     [ROFilterFieldSelection fieldLabel:@"SOLICITANTE"
                                              fieldName:kListDSDSItemSOLICITANTE
                                         formController:self
                                                 single:NO],
                     
                     [ROFilterFieldSelection fieldLabel:@"CORREO"
                                              fieldName:kListDSDSItemCORREO
                                         formController:self
                                                 single:NO],
                     
                     [ROFilterFieldSelection fieldLabel:@"TELEFONO"
                                              fieldName:kListDSDSItemTELEFONO
                                         formController:self
                                                 single:NO],
                     
                     [ROFilterFieldSelection fieldLabel:@"INSTITUTO"
                                              fieldName:kListDSDSItemINSTITUTO
                                         formController:self
                                                 single:NO],
                     
                     [ROFilterFieldSelection fieldLabel:@"ASIGNATURA"
                                              fieldName:kListDSDSItemASIGNATURA
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

