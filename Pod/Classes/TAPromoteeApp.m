//
// Created by Jan on 24/04/15.
//

#import "TAPromoteeApp.h"


@implementation TAPromoteeApp {

}

- (instancetype)initWithAppStoreId:(NSInteger)appStoreId name:(NSString *)name price:(NSString *)price caption:(NSString *)caption iconImage:(UIImage *)iconImage backgroundImage:(UIImage *)backgroundImage
{
    self = [super init];
    if (self) {
        self.appStoreId = appStoreId;
        self.name = name;
        self.caption = caption;
        self.iconImage = iconImage;
        self.backgroundImage = backgroundImage;
        self.price = price;
    }

    return self;
}

+ (instancetype)appWithAppStoreId:(NSInteger)appStoreId name:(NSString *)name price:(NSString *)price caption:(NSString *)caption iconImage:(UIImage *)iconImage backgroundImage:(UIImage *)backgroundImage
{
    return [[self alloc] initWithAppStoreId:appStoreId name:name price:price caption:caption iconImage:iconImage backgroundImage:backgroundImage];
}

- (NSString *)campaignToken
{
    return _campaignToken ? _campaignToken : @"";
}

- (NSString *)affiliateToken
{
    return _affiliateToken ? _affiliateToken : @"";
}


@end