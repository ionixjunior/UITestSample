#!/bin/bash

nuget restore UITestSample.sln
msbuild UITestSample.Droid.csproj "/p:Configuration=Debug" "/t:PackageForAndroid"

# The command line below is for net framework target
msbuild UITestSample.Test/UITestSample.Test.csproj "/p:Configuration=Debug"

# The command line below is for net6.0 target
# dotnet build UITestSample.Test/UITestSample.Test.csproj --configuration Debug

appcenter test prepare uitest --artifacts-dir AppCenterTest --app-path bin/Debug/dev.ionixjunior.uitestsample.apk --build-dir UITestSample.Test/bin/Debug/* --uitest-tools-dir UITestSample.Test/bin/Debug/*
