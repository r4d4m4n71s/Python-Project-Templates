# 🐍 Python-Project-Templates

[![Python 3.8+](https://img.shields.io/badge/python-3.8+-blue.svg)](https://www.python.org/downloads/)
[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

> Create modern Python projects with automated setup using copier. Get started in seconds, not hours! 🚀

---

## ✨ Features at a Glance

- 📁 Modern `src` layout structure
- 🔧 Automated project setup
- 🛠️ Pre-configured development tools
- 🧪 Ready-to-use testing setup
- 📝 Type checking support
- ✨ Code formatting and linting
- 🔒 Virtual environment management

---

## 📦 Project Structure

```plaintext
template/
├── 📁 src/
│   └── 📁 project_name/
│       └── 📄 __init__.py
├── 📁 tests/
│   ├── 📄 __init__.py
│   └── 📄 test_version.py
├── 📄 .gitignore
├── 📄 .pre-commit-config.yaml
├── 📄 LICENSE
├── 📄 README.md
└── 📄 pyproject.toml
```

---

## 🎯 Features in Detail

### 🏗️ Modern Project Structure
- **Source Layout**: Uses `src` layout for better packaging
- **Testing**: Dedicated test directory with pytest setup
- **Configuration**: Comprehensive `.gitignore` and tool configs

### ⚙️ Configurable Options
Via `copier.yml`:
- 📝 Project name and description
- 👤 Author information
- 🐍 Python version selection (3.8-3.12)
- 🛠️ Optional development tools:
  - ✅ pytest for testing
  - 🎨 [Black](https://black.readthedocs.io/) for code formatting
  - 📋 [mypy](https://mypy.readthedocs.io/) for type checking
  - 🔄 [pre-commit hooks](https://pre-commit.com/) for code quality

### 🔧 Development Tools
- 📦 Modern packaging with `pyproject.toml`
- 🚀 Fast linting with [Ruff](https://docs.astral.sh/ruff/)
- 🧪 Pre-configured test suite
- 🔍 Type checking support
- ✨ Code formatting

---

## 🚀 Getting Started

### Prerequisites

- Python 3.8 or newer
- Git (for pre-commit hooks)

### 📥 Installation

1. Clone the repository:
```bash
git clone https://github.com/yourusername/Python-Project-Templates.git
cd Python-Project-Templates/Custom_Template
```

2. Make the script executable (Unix-like systems only):
```bash
chmod +x create.sh
```

### 🎮 Usage

1. Run the setup script:

On Windows:
```bash
create.bat
```

On Unix-like systems (Linux/macOS):
```bash
./create.sh
```

2. Follow the interactive prompts:
   - 📂 Enter the path/project_folder to create (e.g., `~/Projects/my-awesome-project`)
     - The last part of the path will be used as the project name
   - 🌐 Choose whether to create a virtual environment
   - ⚙️ Configure additional project settings

3. Post-creation setup:
```bash
cd your-project-path
pip install -e ".[dev]"
pre-commit install  # if selected
```

---

## 🛠️ Template Features

### 🌐 Virtual Environment Support
- ✨ Optional automatic creation
- 🔒 Proper dependency isolation
- 📦 Environment-specific package installation

### 👨‍💻 Development Workflow
- 🔄 Automated dependency installation
- ⚡ Pre-configured development tools
- 🧪 Ready-to-use testing setup

### 📊 Code Quality Tools
- 🔍 [Ruff](https://docs.astral.sh/ruff/) for fast linting
- 🎨 [Black](https://black.readthedocs.io/) for code formatting (optional)
- 📋 [mypy](https://mypy.readthedocs.io/) for type checking (optional)
- ✅ [pre-commit hooks](https://pre-commit.com/) for consistent quality

### ⚙️ Project Configuration
- 📜 MIT License included
- 🔧 Configurable project metadata
- 📦 Modern Python packaging setup

---

## 📋 Requirements

- 🐍 Python 3.8 or newer
- 📦 Git (for pre-commit hooks)

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

<div align="center">
  <sub>Built with ❤️ for the Python community</sub>
</div>