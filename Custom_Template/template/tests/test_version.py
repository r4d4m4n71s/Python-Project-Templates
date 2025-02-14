"""Test version information."""

from {{ project_name.lower().replace('-', '_') }} import __version__


def test_version():
    """Test version is a string."""
    assert isinstance(__version__, str)