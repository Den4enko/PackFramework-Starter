@echo off
:: Cleaning old files.
rmdir beta /s /q
:: Merging two modpacks
xcopy base\*.* beta\ /e
xcopy mod\*.* beta\ /e /y
:: Removing unused files.
del beta\README.md
del beta\.gitattributes
del beta\.packwizignore
:: Updating packwiz index.
cd beta
packwiz refresh --build
@pause