@echo off
REM Activate the virtual environment
call spot\Scripts\activate

REM Run your Python script
python spot_flac.py

REM Keep the window open (optional)
pause
