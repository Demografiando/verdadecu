# verdadecu 1.0.0

## Major Release - JOSS Submission Ready

### Testing Infrastructure

- Added comprehensive test suite with 154 tests for JOSS submission
- Implemented four test categories: data integrity, validation, consistency, and examples
- Added GitHub Actions workflows for continuous integration and testing
- Configured Codecov integration for code coverage reporting
- Added test status and coverage badges to README
- Created CONTRIBUTING.md with development guidelines

### Test Coverage

- **Data Integrity Tests**: Verify all 16 datasets load correctly with proper structure
- **Data Validation Tests**: Validate data ranges, types, and categories (1984-2008 period)
- **Data Consistency Tests**: Check relationships between datasets and totals
- **Example Tests**: Ensure all documentation examples execute successfully

### CI/CD Improvements

- GitHub Actions workflow for R CMD check on multiple platforms
- Automated test coverage reporting with fallbacks for data packages
- Workflows configured to run on all branches
- Proper handling of data packages with no executable R code

### Package Quality

- All 154 tests passing
- Comprehensive documentation and examples
- Ready for Journal of Open Source Software (JOSS) submission
- Follows R package development best practices

# verdadecu 0.2.0

- Updated vignette with primary reference to the official Truth Commission report
- Added link to the Inter-American Court of Human Rights library (Corte IDH)
- Improved documentation with authoritative source links
- Enhanced user guidance for accessing original report materials

# verdadecu 0.1.0

- Initial CRAN release
- Added datasets from the Ecuador Truth Commission
- Includes data on victims, perpetrators, and human rights violations
- All datasets are in Spanish and include proper documentation
