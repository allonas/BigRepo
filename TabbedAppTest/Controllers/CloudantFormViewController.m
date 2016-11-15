//
//  CloudantFormViewController.m
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "CloudantDS.h"
#import "CloudantDSSchemaItem.h"
#import "CloudantFormViewController.h"
#import "DatasourceManager.h"
#import "ROError.h"
#import "ROFormFieldInteger.h"
#import "ROFormFieldText.h"
#import "RORefreshBehavior.h"
#import "ROUtils.h"
#import "SVProgressHUD.h"

@interface CloudantFormViewController () <UITextFieldDelegate, ROFormDataDelegate>

@property (nonatomic, strong) ROFormFieldText *salesPersonField;

@property (nonatomic, strong) ROFormFieldInteger *salesTotalField;

@property (nonatomic, strong) ROFormFieldText *salesNumberField;

@end

@implementation CloudantFormViewController

- (instancetype)init {

    self = [super init];
    if (self) {

        self.formDataDelegate = self;
    }
    return self;
}

- (void) viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"CloudantForm"];

    self.salesPersonField = [ROFormFieldText fieldWithLabel:@"SalesPerson" name:kCloudantDSSchemaItemSalesPerson required:NO];
    
    self.salesTotalField = [ROFormFieldInteger fieldWithLabel:@"SalesTotal" name:kCloudantDSSchemaItemSalesTotal required:NO];
    
    self.salesNumberField = [ROFormFieldText fieldWithLabel:@"SalesNumber" name:kCloudantDSSchemaItemSalesNumber required:NO];
    
    self.fields = [[NSMutableArray alloc] initWithObjects:
    
                   self.salesPersonField,
                   self.salesTotalField,
                   self.salesNumberField
    
                   , nil];
}

#pragma mark - Form data delegate

- (void)loadFormData:(CloudantDSSchemaItem *)item {

    self.identifier = [item identifier];

    [self.salesPersonField setValue:item.salesPerson];
    
    [self.salesTotalField setValue:item.salesTotal];
    
    [self.salesNumberField setValue:item.salesNumber];
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

