//
//  DatasourceManager.h
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//

#import <Foundation/Foundation.h>

@class ListDSDS;
@class ChartDSDS;
@class MapDSDS;
@class LocalDSDS;
@class SearchDSDS;
@class CloudantDS;
@class GoogleSheetDS;
@class ExcelOnlineDS;
@class GoogleDriveDS;

@interface DatasourceManager : NSObject

@property (nonatomic, strong) ListDSDS *listDSDS;

@property (nonatomic, strong) ChartDSDS *chartDSDS;

@property (nonatomic, strong) MapDSDS *mapDSDS;

@property (nonatomic, strong) LocalDSDS *localDSDS;

@property (nonatomic, strong) SearchDSDS *searchDSDS;

@property (nonatomic, strong) CloudantDS *cloudantDS;

@property (nonatomic, strong) GoogleSheetDS *googleSheetDS;

@property (nonatomic, strong) ExcelOnlineDS *excelOnlineDS;

@property (nonatomic, strong) GoogleDriveDS *googleDriveDS;

/**
 Singleton
 @return Class instance
 */
+ (instancetype)sharedInstance;

/**
 Synchronize all datasource
 */
- (void)sync;

@end

