set /P vers=<version

rmdir /Q /S release
mkdir release

set ExcList=./release/l_exclude.lst
echo version >> %ExcList%
echo make-release.bat >> %ExcList%

svn export . ./release/winetd
copy out\winetd.exe release\winetd\out

7za a -tzip -x!test -x@%ExcList% -r ./release/winetd-%vers%.zip ./release/winetd

rem With debug tests
7za a -tzip -r -x@%ExcList% ./release/winetd-%vers%-debug.zip ./release/winetd




