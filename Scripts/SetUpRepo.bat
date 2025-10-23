@echo off
REM ==========================================================
REM SetUpRepo.bat - Setup repository for branch
REM Usage (Local): Scripts\SetUpRepo.bat
REM Usage (CI)   : Set environment variable BRANCH_NAME
REM ==========================================================

setlocal enabledelayedexpansion

REM -----------------------------
REM Determine branch to use
REM -----------------------------
if defined BRANCH_NAME (
    set BRANCH=%BRANCH_NAME%
) else (
    REM Local run - default to main
    set BRANCH=main
)

echo [INFO] Setting up repository for branch: !BRANCH!

REM -----------------------------
REM Fetch branch from origin
REM -----------------------------
echo [INFO] Fetching branch !BRANCH! from origin...
git fetch origin !BRANCH!
if !ERRORLEVEL! neq 0 (
    echo [ERROR] Failed to fetch branch !BRANCH!
    exit /b !ERRORLEVEL!
)

REM -----------------------------
REM Clean working directory
REM -----------------------------
echo [INFO] Cleaning working directory...
git clean -dfx
if !ERRORLEVEL! neq 0 (
    echo [ERROR] Failed to clean repository
    exit /b !ERRORLEVEL!
)

REM -----------------------------
REM Reset local branch to match remote
REM -----------------------------
echo [INFO] Resetting to origin/!BRANCH!...
git reset --hard origin/!BRANCH!
if !ERRORLEVEL! neq 0 (
    echo [ERROR] Failed to reset repository
    exit /b !ERRORLEVEL!
)

REM -----------------------------
REM Checkout the branch
REM -----------------------------
echo [INFO] Checking out branch !BRANCH!...
git checkout !BRANCH!
if !ERRORLEVEL! neq 0 (
    echo [ERROR] Failed to checkout branch !BRANCH!
    exit /b !ERRORLEVEL!
)

REM -----------------------------
REM Pull latest changes
REM -----------------------------
echo [INFO] Pulling latest changes from origin/!BRANCH!...
git pull origin !BRANCH!
if !ERRORLEVEL! neq 0 (
    echo [ERROR] Failed to pull from origin/!BRANCH!
    exit /b !ERRORLEVEL!
)

echo [INFO] Repository setup for branch '!BRANCH!' completed successfully.
exit /b 0
