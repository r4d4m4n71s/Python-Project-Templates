#!/bin/bash

echo "Welcome to Python Project Creator"
echo "==============================="
echo

echo "Project Configuration"
echo "==================="
echo

# Store initial directory
initial_dir=$(pwd)

# Get project path
read -p "Enter the [path/project_folder] to create: " project_path

# Extract project name from the last part of the path
project_name=$(basename "$project_path")

# Create directory if it doesn't exist
if [ ! -d "$project_path" ]; then
    mkdir -p "$project_path"
fi

# Ask about virtual environment
while true; do
    read -p "Do you want to create a virtual environment? (y/n): " create_venv
    case $create_venv in
        [Yy]* )
            echo
            echo "Creating virtual environment in $project_path..."
            cd "$project_path"
            python3 -m venv .venv
            if [ $? -ne 0 ]; then
                echo "Failed to create virtual environment. Make sure Python is installed."
                cd "$initial_dir"
                exit 1
            fi
            echo "Activating virtual environment..."
            source .venv/bin/activate
            if [ $? -ne 0 ]; then
                echo "Failed to activate virtual environment."
                cd "$initial_dir"
                exit 1
            fi
            cd "$initial_dir"
            break
            ;;
        [Nn]* )
            echo "Skipping virtual environment creation."
            break
            ;;
        * )
            echo "Please enter 'y' or 'n'"
            ;;
    esac
done

echo
echo "Installing required dependencies..."
if [ "$create_venv" = "y" ] || [ "$create_venv" = "Y" ]; then
    cd "$project_path"
    pip install copier jinja2-time
    cd "$initial_dir"
else
    pip install copier jinja2-time
fi

if [ $? -ne 0 ]; then
    echo "Failed to install dependencies."
    exit 1
fi

echo
echo "Running copier template..."
echo "Using project name: $project_name"
copier copy --trust --data "project_name=$project_name" . "$project_path"

if [ $? -ne 0 ]; then
    echo "Failed to create project."
    exit 1
fi

echo
echo "Project created successfully!"
echo
echo "Next steps:"
if [ "$create_venv" = "y" ] || [ "$create_venv" = "Y" ]; then
    echo "1. cd \"$project_path\""
    echo "2. Install project dependencies: pip install -e \".[dev]\""
    echo "3. Initialize pre-commit: pre-commit install"
else
    echo "1. Create and activate a virtual environment (recommended)"
    echo "2. cd \"$project_path\""
    echo "3. Install project dependencies: pip install -e \".[dev]\""
    echo "4. Initialize pre-commit: pre-commit install"
fi
echo
echo "Happy coding!"

if [ "$create_venv" = "y" ] || [ "$create_venv" = "Y" ]; then
    deactivate
fi