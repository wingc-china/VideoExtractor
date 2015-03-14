@echo off
set RootPath=%CD%
set BinPath=%CD%.bin
set ObjPath=%CD%.obj

set _BUILD_ARCH=x64
set _BUILD_FLAVOR=Debug

doskey ..=pushd ..
doskey binary=pushd %BinPath%
doskey root=pushd %RootPath%

doskey build=msbuild /p:Configuration=%_BUILD_FLAVOR%;Platform=%_BUILD_ARCH%
doskey clean=msbuild /t:Clean /p:Configuration=%_BUILD_FLAVOR%;Platform=%_BUILD_ARCH% 
doskey rebuild=msbuild /t:Rebuild /p:Configuration=%_BUILD_FLAVOR%;Platform=%_BUILD_ARCH% 
