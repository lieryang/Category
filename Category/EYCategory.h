#import "Singleton.h"
#import "NSArray+Log.h"
#import "NSMutableArray+EYAddition.h"
#import "UILabel+EYAddition.h"
#import "NSObject+EYRuntime.h"
#import "NSString+EYAddition.h"
#import "UIButton+EYAddition.h"
#import "UIImage+EYAddition.h"

// 1、获取通知中心
#define EYNotificationCenter [NSNotificationCenter defaultCenter]

// 2、设置 view 圆角和边框
#define EYViewBorderRadius(View, Radius, Width, Color)\
\
[View.layer setCornerRadius:(Radius)];\
[View.layer setMasksToBounds:YES];\
[View.layer setBorderWidth:(Width)];\
[View.layer setBorderColor:[Color CGColor]]

// 3、由角度转换弧度 由弧度转换角度
#define EYDegreesToRadian(x) (M_PI * (x) / 180.0)
#define EYRadianToDegrees(radian) (radian*180.0)/(M_PI)

// 4、获取图片资源
#define EYGetImage(imageName) [UIImage imageNamed:[NSString stringWithFormat:@"%@",imageName]]

// 5、获取当前语言
#define EYCurrentLanguage ([NSLocale preferredLanguages].firstObject)

// 6、判断当前项目的环境
#if __has_feature(objc_arc)
// 编译器是ARC环境
#else
// 编译器是MRC环境
#endif

// 7、判断当前的iPhone设备/系统版本
//判断是否为iPhone
#define EYiPHONE ([[[UIDevice currentDevice] model] isEqualToString:@"iPhone"])

//判断是否为iPad
#define EYiPAD ([[[UIDevice currentDevice] model] isEqualToString:@"iPad"])

//判断是否为ipod
#define EYiPOD ([[[UIDevice currentDevice] model] isEqualToString:@"iPod touch"])

// 判断是否为 iPhone SE
#define EYiPhoneSE [[UIScreen mainScreen] bounds].size.width == 320.0f && [[UIScreen mainScreen] bounds].size.height == 568.0f

// 判断是否为iPhone 7
#define EYiPhone7 [[UIScreen mainScreen] bounds].size.width == 375.0f && [[UIScreen mainScreen] bounds].size.height == 667.0f

// 判断是否为iPhone 7Plus
#define EYiPhone7Plus [[UIScreen mainScreen] bounds].size.width == 414.0f && [[UIScreen mainScreen] bounds].size.height == 736.0f

// 8、获取系统版本
//建议使用这个方法
#define EYSystemVersion [[UIDevice currentDevice] systemVersion]

//判断 iOS 8 或更高的系统版本
#define EYSystemVersion8Later (([[[UIDevice currentDevice] systemVersion] floatValue] >=8.0)? (YES):(NO))

// 9、判断是真机还是模拟器
#if TARGET_OS_IPHONE
//iPhone Device
#endif

#if TARGET_IPHONE_SIMULATOR
//iPhone Simulator
#endif

// 10、沙盒目录文件
//获取temp
#define EYPathTemp NSTemporaryDirectory()

//获取沙盒 Document
#define EYPathDocument [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject]

//获取沙盒 Cache
#define EYPathCache [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject]

// 11、自定义Log
#ifdef DEBUG
#define EYLog(...) NSLog(@"%s 第%d行 \n %@\n\n",__func__,__LINE__,[NSString stringWithFormat:__VA_ARGS__])
#else
#define EYLog(...)

#endif

// 12、颜色
#define EYRGBColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]

// RGB颜色 red green blue alpha 为系统关键字，建议不要使用
#define EYColor(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)/1.0]

// 随机色
#define EYRandomColor EYColor(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256), 1.0)

// clear背景颜色
#define EYClearColor [UIColor clearColor]

//13.字符串是否为空
#define EYStringIsEmpty(string) ([string isKindOfClass:[NSNull class]] || string.length == 0 ? YES : NO)

//14.数组是否为空
#define EYArrayIsEmpty(array) ([array isKindOfClass:[NSNull class]] || array.count == 0 ? YES : NO)

//15.字典是否为空
#define EYDictionaryIsEmpty(dictionary) ([dictionary isKindOfClass:[NSNull class]] || dictionary.allKeys == 0 ? YES : NO)
