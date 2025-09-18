# Contributing to verdadecu

Thank you for your interest in contributing to the verdadecu package! This document provides guidelines and instructions for contributing.

## How to Contribute

### Reporting Issues

If you find a bug or have a suggestion for improvement:

1. Check the [existing issues](https://github.com/Demografiando/verdadecu/issues) to see if it has already been reported
2. If not, create a new issue with:
   - A clear, descriptive title
   - A detailed description of the problem or suggestion
   - Steps to reproduce (for bugs)
   - Expected vs actual behavior
   - Your R session info (`sessionInfo()`)

### Contributing Code

1. Fork the repository on GitHub
2. Clone your fork locally:
   ```bash
   git clone https://github.com/your-username/verdadecu.git
   cd verdadecu
   ```
3. Create a new branch for your feature or fix:
   ```bash
   git checkout -b feature/your-feature-name
   ```
4. Make your changes, ensuring you:
   - Follow the existing code style
   - Add or update tests as needed
   - Update documentation if applicable
   - Run tests locally: `devtools::test()`
   - Run R CMD check: `devtools::check()`
5. Commit your changes with a clear message:
   ```bash
   git commit -m "Add feature: description of your changes"
   ```
6. Push to your fork:
   ```bash
   git push origin feature/your-feature-name
   ```
7. Create a Pull Request on GitHub

### Development Setup

To set up your development environment:

```r
# Install development dependencies
install.packages(c("devtools", "testthat", "roxygen2"))

# Load the package for development
devtools::load_all()

# Run tests
devtools::test()

# Check the package
devtools::check()
```

### Testing

All contributions should include appropriate tests. Tests are located in `tests/testthat/`:

- `test-data-integrity.R`: Tests for data structure and loading
- `test-data-validation.R`: Tests for data validity and ranges
- `test-data-consistency.R`: Tests for data relationships
- `test-examples.R`: Tests for documentation examples

Run tests with:
```r
testthat::test_package("verdadecu")
```

### Documentation

- Update function documentation in R files using roxygen2 comments
- Update the README.md if adding new features
- Ensure all examples in documentation are working

### Code Style

Please follow these guidelines:

- Use meaningful variable and function names
- Keep lines under 80 characters when possible
- Use spaces around operators
- Document all exported functions with roxygen2
- Ensure UTF-8 encoding for all files

## Questions?

If you have questions about contributing, please open an issue or contact the maintainers:

- Adriana Robles - adriana@demografiando.pro
- Javier Borja - javier@demografiando.pro

## License

By contributing to verdadecu, you agree that your contributions will be licensed under the GPL (>= 2) license.