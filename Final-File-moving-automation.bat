@echo off
setlocal enabledelayedexpansion

:: Base path for the folders (replace with your actual base path)
set "basePath=D:\epsdata"

:: List of folder names to process
set "folders=@echo off
setlocal enabledelayedexpansion

:: Base path for the folders (replace with your actual base path)
set "basePath=D:\epsdata"

:: List of folder names to process
set "folders=F402 F403 F404 F405 F406 F409 F410 F411 F412 F413 F414 F415 F416 F417 F418 F419 F420 F421 F422 F423 F424 F425 F426 F427 F428 F429 F430 F431 F432 F433 F434 F435 F436 F438 F440 F441 F442 F443 F444 F445 F447 F448 F449 F451 F452 F453 F454 F455 F456 F457 F458 F459 F460 F461 F465 F467 F469"
:: Loop through each folder and perform the move operation
for %%f in (%folders%) do (
    set "sourcePath=!basePath!\%%f\inbox"
    set "destinationPath=!basePath!\%%f\BakInvJun24"

    if exist "!sourcePath!" (
      if exist "!destinationPath!" (
        echo Moving files from "!sourcePath!" to "!destinationPath!"
        move /y "!sourcePath!\*" "!destinationPath!"
        echo Move operation completed from "!sourcePath!" to "!destinationPath!".
      ) else (
        echo Error: Destination folder does not exist: "!destinationPath!"
      )
    ) else (
      echo Error: Source folder does not exist: "!sourcePath!"
    )
)

endlocal
pause
