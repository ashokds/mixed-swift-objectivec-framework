# device iOS
xcodebuild archive \
-scheme ObjectiveCFramework \
-destination "generic/platform=iOS" \
-archivePath ./archives/ObjectiveCFramework-iOS \
SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES


# simulator
xcodebuild archive \
-scheme ObjectiveCFramework \
-destination "generic/platform=iOS Simulator" \
-archivePath ./archives/ObjectiveCFramework-Sim \
SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# create xcframework
xcodebuild -create-xcframework \
-framework ./archives/ObjectiveCFramework-iOS.xcarchive/Products/Library/Frameworks/ObjectiveCFramework.framework \
-framework ./archives/ObjectiveCFramework-Sim.xcarchive/Products/Library/Frameworks/ObjectiveCFramework.framework \
-output ./archives/ObjectiveCFramework.xcframework
