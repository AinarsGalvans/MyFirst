#####  Install:
npm install -g appcenter-cli

# Git
git clone https://github.com/AinarsGalvans/MyFirst.git
cd MyFirst

#Carthage
carthage update

###### Build and run tests
rm -rf ddp

appcenter login —token fbc13665d569a2d91e796c54a9f277ec27b2c121

xcrun xcodebuild build-for-testing -configuration Debug -workspace MyFirst.xcodeproj/project.xcworkspace -sdk iphoneos -scheme MyFirst -derivedDataPath ddp

appcenter test run xcuitest --app "ainars.galvans/MyFirstApp" --devices "ainars.galvans/multiple" --test-series "master" --locale "en_US" --build-dir ddp/Build/Products/Debug-iphoneos/


# Run
# Variables:
# -workspace MyFirst.xcodeproj/project.xcworkspace
# -scheme MyFirst
