#import "AndroidPathProviderPlugin.h"
#import <android_path_provider/android_path_provider-Swift.h>

@implementation AndroidPathProviderPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAndroidPathProviderPlugin registerWithRegistrar:registrar];
}
@end
