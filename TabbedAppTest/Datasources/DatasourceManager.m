//
//  DatasourceManager.m
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "DatasourceManager.h"
#import "ListDSDS.h"
#import "ChartDSDS.h"
#import "MapDSDS.h"
#import "LocalDSDS.h"
#import "SearchDSDS.h"
#import "CloudantDS.h"
#import "GoogleSheetDS.h"
#import "ExcelOnlineDS.h"
#import "GoogleDriveDS.h"

@implementation DatasourceManager

+ (instancetype)sharedInstance {

    static id _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{

        _sharedInstance = [[self alloc] init];
    });
    return _sharedInstance;
}

#pragma mark - Properties init

- (ListDSDS *)listDSDS {

    if (!_listDSDS) {

        _listDSDS = [ListDSDS new];
    }
    return _listDSDS;
}

- (ChartDSDS *)chartDSDS {

    if (!_chartDSDS) {

        _chartDSDS = [ChartDSDS new];
    }
    return _chartDSDS;
}

- (MapDSDS *)mapDSDS {

    if (!_mapDSDS) {

        _mapDSDS = [MapDSDS new];
    }
    return _mapDSDS;
}

- (LocalDSDS *)localDSDS {

    if (!_localDSDS) {

        _localDSDS = [LocalDSDS new];
    }
    return _localDSDS;
}

- (SearchDSDS *)searchDSDS {

    if (!_searchDSDS) {

        _searchDSDS = [SearchDSDS new];
    }
    return _searchDSDS;
}

- (CloudantDS *)cloudantDS {

    if (!_cloudantDS) {

        _cloudantDS = [CloudantDS new];
    }
    return _cloudantDS;
}

- (GoogleSheetDS *)googleSheetDS {

    if (!_googleSheetDS) {

        _googleSheetDS = [GoogleSheetDS new];
    }
    return _googleSheetDS;
}

- (ExcelOnlineDS *)excelOnlineDS {

    if (!_excelOnlineDS) {

        _excelOnlineDS = [ExcelOnlineDS new];
    }
    return _excelOnlineDS;
}

- (GoogleDriveDS *)googleDriveDS {

    if (!_googleDriveDS) {

        _googleDriveDS = [GoogleDriveDS new];
    }
    return _googleDriveDS;
}

#pragma mark - Public methods

- (void)sync {

    [self.cloudantDS sync];
}

@end

