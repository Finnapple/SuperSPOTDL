@echo off
REM ------------------------------
REM Create virtual environment
REM ------------------------------
python -m venv spotify_venv
IF ERRORLEVEL 1 (
    echo Error: Failed to create virtual environment.
    pause
    exit /b 1
)

REM ------------------------------
REM Activate virtual environment
REM ------------------------------
call spotify_venv\Scripts\activate
IF ERRORLEVEL 1 (
    echo Error: Failed to activate virtual environment.
    pause
    exit /b 1
)

REM ------------------------------
REM Upgrade pip
REM ------------------------------
python -m pip install --upgrade pip
IF ERRORLEVEL 1 (
    echo Warning: Failed to upgrade pip. Continuing...
)

REM ------------------------------
REM Install main packages
REM ------------------------------
pip install spotdl requests
IF ERRORLEVEL 1 (
    echo Error: Failed to install spotdl or requests.
    pause
    exit /b 1
)

REM ------------------------------
REM Install from requirements.txt if it exists
REM ------------------------------
IF EXIST requirements.txt (
    pip install -r requirements.txt
    IF ERRORLEVEL 1 (
        echo Warning: Failed to install some packages from requirements.txt
    )
)

echo Setup complete! Virtual environment 'spotify_venv' is ready.
pause
