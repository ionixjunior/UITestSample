#!/bin/bash

nuget restore UITestSample.sln
msbuild UITestSample.Droid.csproj "/p:Configuration=Debug" "/t:PackageForAndroid"
msbuild UITestSample.Test/UITestSample.Test.csproj "/p:Configuration=Debug"
appcenter test prepare uitest --artifacts-dir AppCenterTest --app-path bin/Debug/dev.ionixjunior.uitestsample.apk --build-dir UITestSample.Test/bin/Debug/* --uitest-tools-dir UITestSample.Test/bin/Debug/*
