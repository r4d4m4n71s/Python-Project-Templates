# {{ project_name }}

{{ project_description }}

## Installation

```bash
pip install .
```

## Development Setup

1. Create and activate a virtual environment:
```bash
python -m venv .venv
source .venv/bin/activate  # On Windows use: .venv\Scripts\activate
```

2. Install development dependencies:
```bash
pip install -e ".[dev]"
```

{% if use_pre_commit %}3. Set up pre-commit hooks:
```bash
pre-commit install
```{% endif %}

## Usage

[Add usage instructions here]

## Testing
{% if use_pytest %}
Run tests with pytest:
```bash
pytest
```{% endif %}

## License

[MIT](LICENSE)