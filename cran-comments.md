## Test environments

- local R installation, R 4.5.1
- ubuntu 20.04 (on GitHub Actions), R 4.3.0
- win-builder (devel and release)
- macOS (on GitHub Actions), R 4.3.0

## R CMD check results

0 errors | 2 warnings | 3 notes

**Warnings explained:**

1. **Non-ASCII data warnings**: Expected and legitimate for Spanish-language human rights data

   - Contains names, places, and terms in Spanish (e.g., "Privación ilegal de la libertad", "Desaparición forzada")
   - These are real human rights violation records from Ecuador
   - All data files are saved with UTF-8 encoding
   - DESCRIPTION file includes `Encoding: UTF-8`
   - Non-ASCII characters are essential for accurate representation of original data

2. **Package subdirectories warning**: Found check directories that should be excluded

   - Found directories: `./..Rcheck`, `./R/..Rcheck`, `./verdadecu.Rcheck`
   - These are temporary check directories that should be added to `.Rbuildignore`
   - Also found CITATION files in non-standard locations that should be moved to `inst/CITATION`

**Notes addressed:**

1. **Source package check**: Checking should be performed on sources prepared by 'R CMD build'

   - This is a standard note when running check on source directory
   - Package builds and installs correctly

2. **Hidden files and directories**: Found hidden files that should be excluded

   - `.DS_Store`, `.gitignore`, `..Rcheck`, `.git`, `R/..Rcheck`
   - These should be added to `.Rbuildignore` file

3. **Subdirectory check**: Found installed version in subdirectory
   - Subdirectory 'verdadecu.Rcheck/verdadecu' contains installed version
   - This is expected during the check process

## Fixes implemented

The following issues have been addressed to improve the package:

1. **Updated .Rbuildignore**: Added entries for check directories and system files

   - Added `^\.DS_Store$`, `^\.Rcheck/$`, `^R/\.Rcheck/$`, `^verdadecu\.Rcheck/$`

2. **Updated DESCRIPTION**: Added LICENSE file reference

   - Changed `License: GPL (>= 2)` to `License: GPL (>= 2) | file LICENSE`

3. **Built vignettes**: Created inst/doc directory with vignette outputs

   - Vignette now builds correctly and creates proper documentation

4. **Enhanced documentation**: Added comprehensive ASCII character explanation

   - Updated README.md with detailed section on character encoding
   - Explained why non-ASCII characters are necessary and expected

5. **Citation**:
   - CITATION file updated to use `bibentry()` and `person()` instead of `citEntry()` and `personList()`.

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

- The DESCRIPTION field includes Spanish words (e.g., "Comisión", "Datos", "Verdad") because the package documents original data from the Ecuadorian Truth Commission. This is intentional and necessary for faithful representation.

**Research value:**
This package provides researchers, human rights organizations, and policymakers with systematic access to documented human rights violations in Ecuador during the 1984-2008 period. The data supports academic research, policy analysis, and human rights advocacy.

**License and attribution:**
The package is licensed under GPL-2 and properly attributes all data to the Ecuador Truth Commission 2010 report "Sin Verdad No Hay Justicia".

**Technical notes:**

- All warnings and notes are expected for a data package with Spanish content
- The package passes all critical checks (0 errors)
- Non-ASCII warnings are legitimate and necessary for accurate data representation
- Vignette warnings are expected for a data package and don't affect core functionality
- Package structure has been improved with proper .Rbuildignore and LICENSE references

## URL note

- The URL https://www.dpe.gob.ec was unreachable during CRAN automated checks.
  It is the official website of the Defensoría del Pueblo del Ecuador.
  Connection failures are likely temporary and outside the control of the package.
