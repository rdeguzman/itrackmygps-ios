#import <Foundation/Foundation.h>

#ifdef DEBUG
#define NSLog(args...) DebugLog(__FILE__,__LINE__,__PRETTY_FUNCTION__,args);
#else
#define NSLog(x...)
#endif

void DebugLog(const char *file, int lineNumber, const char *functionName, NSString *format, ...);