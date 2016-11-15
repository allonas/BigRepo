//
//  AuthorsListFormViewController.m
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "AuthorsListFormViewController.h"
#import "DatasourceManager.h"
#import "ListDSDS.h"
#import "ListDSDSItem.h"
#import "ROError.h"
#import "ROFormFieldDatetime.h"
#import "ROFormFieldInteger.h"
#import "ROFormFieldText.h"
#import "RORefreshBehavior.h"
#import "ROUtils.h"
#import "SVProgressHUD.h"

@interface AuthorsListFormViewController () <UITextFieldDelegate, ROFormDataDelegate>

@property (nonatomic, strong) ROFormFieldDatetime *fECHAField;

@property (nonatomic, strong) ROFormFieldText *aUTORField;

@property (nonatomic, strong) ROFormFieldText *tITULOField;

@property (nonatomic, strong) ROFormFieldText *eDITORIALField;

@property (nonatomic, strong) ROFormFieldText *eDICIONField;

@property (nonatomic, strong) ROFormFieldText *sOLICITANTEField;

@property (nonatomic, strong) ROFormFieldText *cORREOField;

@property (nonatomic, strong) ROFormFieldText *tELEFONOField;

@property (nonatomic, strong) ROFormFieldText *iNSTITUTOField;

@property (nonatomic, strong) ROFormFieldText *aSIGNATURAField;

@property (nonatomic, strong) ROFormFieldInteger *aLUMNOSField;

@end

@implementation AuthorsListFormViewController

- (instancetype)init {

    self = [super init];
    if (self) {

        self.formDataDelegate = self;
    }
    return self;
}

- (void) viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"AuthorsListForm"];

    self.fECHAField = [ROFormFieldDatetime fieldWithLabel:@"FECHA" name:kListDSDSItemFECHA required:NO];
    
    self.aUTORField = [ROFormFieldText fieldWithLabel:@"AUTOR" name:kListDSDSItemAUTOR required:NO];
    
    self.tITULOField = [ROFormFieldText fieldWithLabel:@"TITULO" name:kListDSDSItemTITULO required:NO];
    
    self.eDITORIALField = [ROFormFieldText fieldWithLabel:@"EDITORIAL" name:kListDSDSItemEDITORIAL required:NO];
    
    self.eDICIONField = [ROFormFieldText fieldWithLabel:@"EDICION" name:kListDSDSItemEDICION required:NO];
    
    self.sOLICITANTEField = [ROFormFieldText fieldWithLabel:@"SOLICITANTE" name:kListDSDSItemSOLICITANTE required:NO];
    
    self.cORREOField = [ROFormFieldText fieldWithLabel:@"CORREO" name:kListDSDSItemCORREO required:NO];
    
    self.tELEFONOField = [ROFormFieldText fieldWithLabel:@"TELEFONO" name:kListDSDSItemTELEFONO required:NO];
    
    self.iNSTITUTOField = [ROFormFieldText fieldWithLabel:@"INSTITUTO" name:kListDSDSItemINSTITUTO required:NO];
    
    self.aSIGNATURAField = [ROFormFieldText fieldWithLabel:@"ASIGNATURA" name:kListDSDSItemASIGNATURA required:NO];
    
    self.aLUMNOSField = [ROFormFieldInteger fieldWithLabel:@"ALUMNOS" name:kListDSDSItemALUMNOS required:NO];
    
    self.fields = [[NSMutableArray alloc] initWithObjects:
    
                   self.fECHAField,
                   self.aUTORField,
                   self.tITULOField,
                   self.eDITORIALField,
                   self.eDICIONField,
                   self.sOLICITANTEField,
                   self.cORREOField,
                   self.tELEFONOField,
                   self.iNSTITUTOField,
                   self.aSIGNATURAField,
                   self.aLUMNOSField
    
                   , nil];
}

#pragma mark - Form data delegate

- (void)loadFormData:(ListDSDSItem *)item {

    self.identifier = [item identifier];

    [self.fECHAField setValue:item.fECHA];
    
    [self.aUTORField setValue:item.aUTOR];
    
    [self.tITULOField setValue:item.tITULO];
    
    [self.eDITORIALField setValue:item.eDITORIAL];
    
    [self.eDICIONField setValue:item.eDICION];
    
    [self.sOLICITANTEField setValue:item.sOLICITANTE];
    
    [self.cORREOField setValue:item.cORREO];
    
    [self.tELEFONOField setValue:item.tELEFONO];
    
    [self.iNSTITUTOField setValue:item.iNSTITUTO];
    
    [self.aSIGNATURAField setValue:item.aSIGNATURA];
    
    [self.aLUMNOSField setValue:item.aLUMNOS];
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

