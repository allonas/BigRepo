//
//  ToGDriveDSFormViewController.m
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "DatasourceManager.h"
#import "ROError.h"
#import "ROFormFieldInteger.h"
#import "ROFormFieldText.h"
#import "RORefreshBehavior.h"
#import "ROUtils.h"
#import "SearchDSDS.h"
#import "SearchDSDSItem.h"
#import "SVProgressHUD.h"
#import "ToGDriveDSFormViewController.h"

@interface ToGDriveDSFormViewController () <UITextFieldDelegate, ROFormDataDelegate>

@property (nonatomic, strong) ROFormFieldText *monthField;

@property (nonatomic, strong) ROFormFieldText *locationField;

@property (nonatomic, strong) ROFormFieldText *editorialField;

@property (nonatomic, strong) ROFormFieldText *customField;

@property (nonatomic, strong) ROFormFieldText *ownerField;

@property (nonatomic, strong) ROFormFieldInteger *episodeField;

@property (nonatomic, strong) ROFormFieldText *salesPersonField;

@end

@implementation ToGDriveDSFormViewController

- (instancetype)init {

    self = [super init];
    if (self) {

        self.formDataDelegate = self;
    }
    return self;
}

- (void) viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"ToGDriveDSForm"];

    self.monthField = [ROFormFieldText fieldWithLabel:@"Month" name:kSearchDSDSItemMonth required:NO];
    
    self.locationField = [ROFormFieldText fieldWithLabel:@"Location" name:kSearchDSDSItemLocation required:NO];
    
    self.editorialField = [ROFormFieldText fieldWithLabel:@"Editorial" name:kSearchDSDSItemEditorial required:NO];
    
    self.customField = [ROFormFieldText fieldWithLabel:@"Custom" name:kSearchDSDSItemCustom required:NO];
    
    self.ownerField = [ROFormFieldText fieldWithLabel:@"Owner" name:kSearchDSDSItemOwner required:NO];
    
    self.episodeField = [ROFormFieldInteger fieldWithLabel:@"Episode" name:kSearchDSDSItemEpisode required:NO];
    
    self.salesPersonField = [ROFormFieldText fieldWithLabel:@"SalesPerson" name:kSearchDSDSItemSalesPerson required:NO];
    
    self.fields = [[NSMutableArray alloc] initWithObjects:
    
                   self.monthField,
                   self.locationField,
                   self.editorialField,
                   self.customField,
                   self.ownerField,
                   self.episodeField,
                   self.salesPersonField
    
                   , nil];
}

#pragma mark - Form data delegate

- (void)loadFormData:(SearchDSDSItem *)item {

    self.identifier = [item identifier];

    [self.monthField setValue:item.month];
    
    [self.locationField setValue:item.location];
    
    [self.editorialField setValue:item.editorial];
    
    [self.customField setValue:item.custom];
    
    [self.ownerField setValue:item.owner];
    
    [self.episodeField setValue:item.episode];
    
    [self.salesPersonField setValue:item.salesPerson];
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

