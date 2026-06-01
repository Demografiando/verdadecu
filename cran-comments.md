## Resubmission

This is a resubmission of verdadecu 1.0.2 (following 1.0.1).

Changes since 1.0.1:

- Reinforced vignette HTML language via `lang: es` and Pandoc `lang=es` variable for robust rebuilds on CRAN (VNU feedback).

## Test environments

- local R installation, R 4.5.1
- ubuntu 20.04 (on GitHub Actions), R 4.3.0
- win-builder (devel and release)
- macOS (on GitHub Actions), R 4.3.0

## R CMD check results

0 errors | 0 warnings | 0 notes

## Downstream dependencies

There are currently no downstream dependencies for this package.

## Additional notes

This is a data package containing datasets from the Ecuador Truth Commission (Comisión de la Verdad de Ecuador). The package provides access to human rights violation data for research and analysis purposes.

**Package contents:**

- 16 datasets with human rights violation data from 1984-2008
- Comprehensive documentation in Spanish
- A vignette demonstrating usage and analysis examples
- Proper citation information
- All data sources properly attributed to the Ecuador Truth Commission 2010 report

**About non-ASCII data:**

The package contains data in Spanish, which necessarily includes non-ASCII characters. All data files use UTF-8 encoding, and the DESCRIPTION file includes `Encoding: UTF-8`. These characters are required for accurate representation of the original data from the Comisión de la Verdad de Ecuador.

**License and attribution:**

The package is licensed under GPL-2 and properly attributes all data to the Ecuador Truth Commission 2010 report "Sin Verdad No Hay Justicia".
