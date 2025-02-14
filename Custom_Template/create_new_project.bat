@echo off
setlocal EnableDelayedExpansion

echo Welcome to Python Project Creator
echo ===============================
echo.

echo Project Configuration
echo ===================
echo.
set /p project_path="Enter the [path/project_folder] to create: "

if not exist "!project_path!" (
    mkdir "!project_path!"
)

:ask_venv
set /p create_venv="Do you want to create a virtual environment? (y/n): "
if /i "!create_venv!"=="y" (
    echo.
    echo Creating virtual environment in !project_path!...
    cd "!project_path!"
    python -m venv .venv
    if errorlevel 1 (
        echo Failed to create virtual environment. Make sure Python is installed and in PATH.
        exit /b 1
    )
    echo Activating virtual environment...
    call .venv\Scripts\activate
    if errorlevel 1 (
        echo Failed to activate virtual environment.
        exit /b 1
    )
    cd ..
) else if /i "!create_venv!"=="n" (
    echo Skipping virtual environment creation.
) else (
    echo Please enter 'y' or 'n'
    goto ask_venv
)

echo.
echo Installing required dependencies...
if /i "!create_venv!"=="y" (
    cd "!project_path!"
    pip install copier jinja2-time
    cd ..
) else (
    pip install copier jinja2-time
)
if errorlevel 1 (
    echo Failed to install dependencies.
    exit /b 1
)

echo.
echo Running copier template...
copier copy --trust . "!project_path!"

if errorlevel 1 (
    echo Failed to create project.
    exit /b 1
)

echo.
echo Project created successfully!
echo.
echo Next steps:
if /i "!create_venv!"=="y" (
    echo 1. cd "!project_path!"
    echo 2. Install project dependencies: pip install -e ".[dev]"
    echo 3. Initialize pre-commit: pre-commit install
) else (
    echo 1. Create and activate a virtual environment (recommended)
    echo 2. cd "!project_path!"
    echo 3. Install project dependencies: pip install -e ".[dev]"
    echo 4. Initialize pre-commit: pre-commit install
)
echo.
echo Happy coding!

if /i "!create_venv!"=="y" (
    deactivate
)

endlocal