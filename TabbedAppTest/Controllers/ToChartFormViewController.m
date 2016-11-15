//
//  ToChartFormViewController.m
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "DatasourceManager.h"
#import "ROError.h"
#import "ROFormFieldText.h"
#import "RORefreshBehavior.h"
#import "ROUtils.h"
#import "SearchDSDS.h"
#import "SearchDSDSItem.h"
#import "SVProgressHUD.h"
#import "ToChartFormViewController.h"

@interface ToChartFormViewController () <UITextFieldDelegate, ROFormDataDelegate>

@property (nonatomic, strong) ROFormFieldText *monthField;

@property (nonatomic, strong) ROFormFieldText *locationField;

@property (nonatomic, strong) ROFormFieldText *editorialField;

@property (nonatomic, strong) ROFormFieldText *customField;

@end

@implementation ToChartFormViewController

- (instancetype)init {

    self = [super init];
    if (self) {

        self.formDataDelegate = self;
    }
    return self;
}

- (void) viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"ToChartForm"];

    self.monthField = [ROFormFieldText fieldWithLabel:@"Month" name:kSearchDSDSItemMonth required:NO];
    
    self.locationField = [ROFormFieldText fieldWithLabel:@"Location" name:kSearchDSDSItemLocation required:NO];
    
    self.editorialField = [ROFormFieldText fieldWithLabel:@"Editorial" name:kSearchDSDSItemEditorial required:NO];
    
    self.customField = [ROFormFieldText fieldWithLabel:@"Custom" name:kSearchDSDSItemCustom required:NO];
    
    self.fields = [[NSMutableArray alloc] initWithObjects:
    
                   self.monthField,
                   self.locationField,
                   self.editorialField,
                   self.customField
    
                   , nil];
}

#pragma mark - Form data delegate

- (void)loadFormData:(SearchDSDSItem *)item {

    self.identifier = [item identifier];

    [self.monthField setValue:item.month];
    
    [self.locationField setValue:item.location];
    
    [self.editorialField setValue:item.editorial];
    
    [self.customField setValue:item.custom];
}

#pragma mark - Form actions

- (void)cancelButtonAction:(id)sender {

    [super cancelButtonAction:sender];
}

- (void)deleteButtonAction:(id)sender {

    [super deleteButtonAction:sender];
}

- (void)saveButtonAction:(id)sender {

    [super saveButtonAction:sender];
}

- (void)confirmDelete {

    [super confirmDelete];
}

- (void)deleteItem {

    [super deleteItem];
}

- (void)updateItem {

    [self.hiddenValues removeAllObjects];

    [super updateItem];
}

- (void)createItem {
    
    [super createItem];
}

@end

