## Test environments

- local R installation, R 4.3.0
- ubuntu 20.04 (on GitHub Actions), R 4.3.0
- win-builder (devel and release)
- macOS (on GitHub Actions), R 4.3.0

## R CMD check results

0 errors | 2 warnings | 0 notes

**Warnings explained:**

1. **Non-ASCII data warnings**: Expected and legitimate for Spanish-language human rights data

   - Contains names, places, and terms in Spanish (e.g., "Privación ilegal de la libertad", "Desaparición forzada")
   - These are real human rights violation records from Ecuador
   - All data files are saved with UTF-8 encoding
   - DESCRIPTION file includes `Encoding: UTF-8`
   - Non-ASCII characters are essential for accurate representation of original data

2. **qpdf warning**: Optional warning for PDF size optimization
   - This is an optional tool for PDF compression
   - Does not affect package functionality
   - Not required for CRAN submission

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

**Data description:**
The datasets include information about:

- Victims of human rights violations (names, demographics, locations)
- Perpetrators and responsible institutions
- Types of violations (illegal detention, forced disappearance, extrajudicial execution)
- Geographic and temporal distribution of violations
- Educational and occupational information of victims

**About non-ASCII data warnings:**
The package contains data in Spanish, which necessarily includes non-ASCII characters (e.g., á, é, í, ñ, ó, ú, etc.). These characters are essential for the correct representation of:

- Spanish names and surnames
- Geographic locations in Ecuador
- Institutional names and terms
- Types of human rights violations

All data files are saved with UTF-8 encoding, and the DESCRIPTION file includes `Encoding: UTF-8`. These non-ASCII characters are required for accurate representation of the original data from the Comisión de la Verdad de Ecuador.

**Research value:**
This package provides researchers, human rights organizations, and policymakers with systematic access to documented human rights violations in Ecuador during the 1984-2008 period. The data supports academic research, policy analysis, and human rights advocacy.

**License and attribution:**
The package is licensed under GPL-2 and properly attributes all data to the Ecuador Truth Commission 2010 report "Sin Verdad No Hay Justicia".
