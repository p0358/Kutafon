#include <UIKit/UIKit.h>

@interface SBApplicationIcon {

	NSString* _displayIdentifier;
}
-(id)displayName;
-(id)leafIdentifier;
-(id)applicationBundleID;
@end

%hook SBApplicationIcon

- (NSString *)displayName
{
	if ([@"com.apple.VoiceMemos" isEqualToString:[self leafIdentifier]]) {
		return @"Kutafon";
	}
	return %orig;
}

- (NSString *)displayNameForLocation:(NSInteger)location
{
	if ([@"com.apple.VoiceMemos" isEqualToString:[self leafIdentifier]]) {
		return @"Kutafon";
	}
	return %orig;
}

%end
