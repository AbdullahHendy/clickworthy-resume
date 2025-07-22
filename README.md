<div align="center">

# clickworthy-resume

**A simple, flexible, responsive, ATS-friendly, and click-worthy resume. Extra cover letter and extendable to a CV.**
</div>

## 🙋‍♂️ Introduction
This **Typst** Resume template allows for writing resumes, CVs, and cover letters fast. The core is borrowed from the [**guided-resume-starter-cgc**](https://github.com/typst/packages/tree/main/packages/preview/guided-resume-starter-cgc/2.0.0) template with extra features, more flexibility, and formatting improvements.

For advice on writing an effective resume, this [small write-up](https://github.com/typst/packages/blob/main/packages/preview/guided-resume-starter-cgc/2.0.0/template/starter.typ) by the [**guided-resume-starter-cgc**](https://github.com/typst/packages/tree/main/packages/preview/guided-resume-starter-cgc/2.0.0) template author is quite helpful.

For advice on writing an effective cover letter, this [guide](https://career.engin.umich.edu/sample-cover-letter/) by [**UMich ECRC**](https://career.engin.umich.edu/) is quite helpful.

> **NOTE**: See the [**official package repository**](https://github.com/typst/packages/tree/main/packages/preview/clickworthy-resume) on the [**Typst Universe**](https://typst.app/universe/)

> **NOTE**: This repository ***is not*** an exact mirror of the [**Typst Universe package**](https://github.com/typst/packages/tree/main/packages/preview/clickworthy-resume) since this a development repository. 


## 🏃 Getting Started
### [**Typst Web App**](https://typst.app/)
1. Open the [Typst App](https://typst.app/) on any supported platform
2. In the *Dashboard*, select *Start from template*
3. Search for ***clickworthy-resume*** and select it
4. Name the project and *Create*
5. The default editor will show the `resume.typ` template. To work with the `cv.typ` and `cover-letter.typ` templates, click the *Explore files* from the top left of the view.
6. Edit the desired template and export it to download your version. 


### **Local**
1. [Install Typst](https://github.com/typst/typst?tab=readme-ov-file#installation)
2. Create a workspace in the location of choice and run `typst init @preview/clickworthy-resume` to create a template. 
3. Edit the desired template, including `resume`, `cv`, or `cover-letter` and run `typst compile <template>.typ` **to generate a pdf** version or see the [**Typst** guide](https://github.com/typst/typst?tab=readme-ov-file#usage) for more options. 


## 📝 Example Resume
<a href="./tests/resume/ref/1.png" target="_blank">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="./tests/resume/ref/1.png">
    <img alt="Example Resume" src="./tests/resume/ref/1.png">
  </picture>
</a>

## 📓 Example CV

<div align="center">
<table>
  <tr>
    <td>
      <a href="./tests/cv/ref/1.png" target="_blank">
        <picture>
          <source media="(prefers-color-scheme: dark)" srcset="./tests/cv/ref/1.png">
          <img alt="Example CV-1" src="./tests/cv/ref/1.png">
        </picture>
      </a>
    </td>
    <td>
      <a href="./tests/cv/ref/2.png" target="_blank">
        <picture>
          <source media="(prefers-color-scheme: dark)" srcset="./tests/cv/ref/2.png">
          <img alt="Example CV-2" src="./tests/cv/ref/2.png">
        </picture>
      </a>
    </td>
  </tr>
</table>
</div>

## ✉️ Example Cover Letter
<a href="./tests/cover-letter/ref/1.png" target="_blank">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="./tests/cover-letter/ref/1.png">
    <img alt="Example Cover Letter" src="./tests/cover-letter/ref/1.png">
  </picture>
</a>

## ✏️ How to Edit
The provided templates show all functions that the package supports with their respective parameters, the following ***documentation*** is provided for completeness.

**All function parameters are technically optional for better customization**

### **Resume/CV**
**Most functions provide a `hide` flag to make a clean `*.typ` file including all information in one place without having to comment-out unwanted entries for a specific resume version**

#### Resume headers and Configs
The resume is generated using a customizable `resume` function that accepts various parameters for layout, theme, and content. It defines the document’s formatting, header, and professional summary section, followed by the main content body.

##### Parameters
- `author`: Your full name
- `location`: City, state/province, and country
- `contacts`: A list of links or contact info
- `summary`: A short professional summary
- `theme-color`: Accent color for headings (default: `#26428b`)
- `font`: Font family used throughout the resume (default: `"New Computer Modern"`)
- `font-size`: Base font size (default: `11pt`)
- `lang`: Document language (default: `"en"`)
- `margin`: Page margins (default: `(top: 1cm, bottom: 0cm, left: 1cm, right: 1cm)`)

##### Example
```typ
#show: resume.with(
  author: "Dr. Alex Morgan",
  location: "San Francisco, CA",
  contacts: (
  [#link("mailto:alex.morgan@example.com")[#"alex.morgan@example.com"]],
  [#link("https://github.com/alexm-dev")[#"github.com/alexm-dev"]],
  [#link("https://linkedin.com/in/alex-morgan")[#"linkedin.com/in/alex-morgan"]],
  ),
  summary: "Senior systems engineer with 20+ years of experience in embedded systems, real-time pipelines, and fault-tolerant platforms. Proven leader in innovation, mentorship, and research-to-production delivery.",
  theme-color: rgb("#cc0000"),
  font: "New Computer Modern",
  font-size: 11pt,
  lang: "en",
  margin: (
    top: 1cm,
    bottom: 0cm,
    left: 1cm,
    right: 1cm,
  ),
)
```

---

#### Education
The `edu` function formats a single educational entry, including institution name, degrees, GPA, and additional notes. You can list multiple degrees per institution, and control visibility with the `hide` flag.

##### Parameters
- `institution`: The name of the school or university
- `date`: The graduation date or duration
- `degrees`: A list of degree-level and field tuples, e.g. `("BSc", "Computer Science")`
- `gpa`: GPA string
- `location`: City/state/country of institution
- `extra`: Any extra info (e.g. "Thesis with distinction")
- `hide`: Boolean flag to skip rendering this entry (default: `false`)

##### Example
```typ
#show: edu(
  institution: "University of California, Berkeley",
  date: "2011–2015",
  degrees: (
    ("BSc", "Electrical Engineering & Computer Science"),
    ("Minor", "Philosophy"),
  ),
  gpa: "3.92",
  location: "Berkeley, CA",
  extra: "Thesis with distinction",
  hide: false,
)
```

---

#### Experience
The `exp` function formats a professional experience entry, showing the role title, organization, date, location, and descriptive bullet points or details. You can control visibility using the `hide` flag.

##### Parameters
- `title`: Job title or role
- `organization`: Company or institution name
- `date`: Time period for the role
- `location`: Location of the job
- `details`: A block or list of content to describe your work
- `hide`: Boolean flag to skip rendering this entry (default: `false`)

##### Example
```typ
#exp(
  title: "Embedded Software Engineer",
  organization: "MicroNova Inc.",
  date: "2001 - 2006",
  location: "Austin, TX",
  details: [
    - Delivered firmware for low-latency DSP filters used in medical and automotive devices.
    - Ported real-time schedulers to custom embedded targets using bare-metal C.
  ],
  hide: true,
)
```

---

#### Publication Entry
The `pub` function formats a publication citation entry using a simple yet common style. It supports highlighting a specific author, linking the title via DOI, and adding extra notes. Use the `hide` flag to skip rendering.
> **NOTE**: the style used for publication references appears to be the most widely used format. For more standarized/advanced citation styles see [the Publication List section]() 

##### Parameters
- `authors`: A list of author names
- `bold-author`: One name to emphasize in bold
- `title`: Title of the publication
- `venue`: Conference, journal, or publisher name
- `year`: Year of publication
- `doi-link`: DOI string without the https:// prefix (e.g. `"doi.org/..."`)
- `extra`: Any additional note or status (e.g. "Best Paper Award")
- `hide`: Boolean flag to skip rendering this entry (default: `false`)

##### Example
```typ
#pub(
  authors: (
    "Alex Morgan",
    "Jordan Michaels",
    "Taylor Chen",
  ),
  bold-author: "Jordan Michaels",
  title: "Cross-Domain Feature Alignment in Multilingual Speech Systems",
  venue: "ACL",
  year: "2023",
  doi-link: "doi.org/10.18653/v1/2023.acl-long.123",
  extra: "Best Paper Award",
  hide: false,
)
```

---

#### Publication List
The `pub-list` function displays a styled list of publications using a `.bib` or `.yml` file.
It uses Typst’s native bibliography rendering engine and supports multiple citation `styles` such as IEEE, APA, and MLA. See the [](https://typst.app/docs/reference/model/bibliography/) for more info about `.bib` or `.yml` bibliography definition files or different available `styles`.

##### Parameters
- `bib`: A reference to `bibliography` function with a path to a `.bib` or `.yml` files (e.g., `bibliography("publications.bib")`)
- `style` (optional): Citation formatting style. Accepts styles like `"ieee"`, `"apa"`, `"mla"`, and more (default: `ieee`)

##### Example
```typ
#pub-list(
  bib: bibliography("assets/publications.bib"),
  style: "ieee"
)
```

---

#### Skills
The `skills` function displays categorized lists of skills or technologies. Each entry consists of a label (e.g. "Expertise", "Software") and a list of items shown inline and separated by commas. Each category is rendered on its own line.

##### Parameters
- `areas`: A list of tuples, each containing:
    - a category label (e.g. "Languages", "Tools")
    - a list of individual skills (each as a string or inline element)

##### Example
```typ
#show: skills((
  ("Expertise", (
    [Distributed Systems],
    [Embedded Security],
    [FPGA Architectures],
    [Technical Leadership],
  )),
  ("Software", (
    [C/C++],
    [Rust],
    [SystemVerilog],
    [Docker],
    [Git],
  )),
  ("Languages", (
    [Python],
    [C/C++],
    [Rust],
    [Shell],
  )),
))
```

---

#### Multi-page Support
For CVs with more than one page, use `#pagebreak()` where appropriate for page-splitting if the value for `bottom` of the `margin` field in [#show: resume.with()](#resume-headers-and-configs) is too small to make a clean split between items.

##### Example
```typ
#pub(
  authors: (
    "Jordan Michaels",
    "Alex Morgan",
    "Taylor Chen",
    "Emily Zhang",
  ),
  bold-author: "Jordan Michaels",
  title: "Robust Distributed Scheduling in Adversarial Edge Environments",
  venue: "ACM MobiCom",
  year: "2025",
  doi-link: "doi.org/10.1145/9999999.9999999",
  extra: "To appear",
)

// Page break for readability
#pagebreak()

#pub(
  authors: (
    "Taylor Chen",
    "Emily Zhang",
    "Jordan Michaels",
    "Alex Morgan",
  ),
  bold-author: "Jordan Michaels",
  title: "Resource-Conscious Model Compression for Embedded Speech Translation",
  venue: "NeurIPS",
  year: "2024",
  doi-link: "doi.org/10.48550/arXiv.2406.00123",
)
```

### **Cover Letter**
#### Resume headers and Configs
The cover letter is generated using a customizable `cover-letter` function that accepts various parameters for layout, and content. It defines the document’s formatting, header, followed by the main content body, then finally it automatically provides a `Sign-Off`.

##### Parameters
- `author`: Your full name  
- `location`: City, state/province, and country 
- `contacts`: List of links or contact info  
- `date`: Date to display in the header (default: today’s date)
- `addressee-name`: Recipient’s full name  
- `addressee-institution`: Organization/Company name  
- `addressee-address`: Street address  
- `addressee-city`: City  
- `addressee-state`: State/Province  
- `addressee-country`: Country  
- `addressee-zip`: Postal code  
- `font`: Font family used (default: `"New Computer Modern"`)  
- `font-size`: Base font size (default: `11pt`)  
- `lang`: Document language (default: `"en"`)  
- `margin`: Page margins (default: `(top: 1cm, bottom: 1cm, left: 1cm, right: 1cm)`)

##### Example
```typ
#show: cover-letter.with(
  author: "Dr. Alex Morgan",
  location: "San Francisco, CA",
  contacts: (
  [#link("mailto:alex.morgan@example.com")[#"alex.morgan@example.com"]],
  [#link("https://github.com/alexm-dev")[#"github.com/alexm-dev"]],
  [#link("https://linkedin.com/in/alex-morgan")[#"linkedin.com/in/alex-morgan"]],
  ),
  date: datetime.today().display(),
  addressee-name: "Dr. Jane Smith",
  addressee-institution: "Embedded Innovations Inc.",
  addressee-address: "123 Innovation Drive",
  addressee-city: "Tech City",
  addressee-state: "CA",
  addressee-country: "",
  addressee-zip: "90210",
  font: "New Computer Modern",
  font-size: 11pt,
  lang: "en",
  margin: (
    top: 1cm,
    bottom: 1cm,
    left: 1cm,
    right: 1cm,
  ),
)
```

## 👨🏻‍💻 Development & Contribution
### Prerequisites
- Typst CLI: [Typst](https://github.com/typst/typst?tab=readme-ov-file#installation)
- Linting: [package-check](https://github.com/typst/package-check)
- Testing: [tytanic](https://github.com/typst-community/tytanic)

### Project Structure
- `src/` contains the source code of the library. `src/lib.typ` is a wrapper import for other `*.typ` sources for the ease of importing.
- `template/` contains the templates/examples of using **clickworthy-resume**. It is what the user of **clickworthy-resume** template is expected to see when running `typst init @preview/clickworthy-resume` and therefore it imports `#import "@preview/clickworthy-resume:1.0.1": *`
- `tests/` contains the tests for **each** template in `templates/`. Each test has a `ref/` that contains a reference `png` output. Each test has a `test.typ`, which is a mirror of the templates in `template/` except that they import `#import "../../src/lib.typ": *` locally. See the [**tytanic book**](https://typst-community.github.io/tytanic/index.html) for more info.

  > **NOTE**: As stated above, all `test.typ` files are mirror of templates in `template/` except the `cover-letter` test since it involves `#let date = datetime.today().display()`, which makes the test undeterminitic on different systems/CI. On the `test.typ` for `cover-letter`, it's changed to a constant date string. See the [**tytanic book write-up**](https://typst-community.github.io/tytanic/guides/ci.html) on this issue and similar test discrepancy issues.

- `typst.toml` contains the project's manifest.
- `thumbnail.png` contains the projects' thumbnail on the [**Typst Universe**](https://typst.app/universe/).
- `Makefile` contains useful targets for local development.
  ```bash
  ❓ Available Makefile commands:

    make                Lint, update tests, test, install, and update thumbnail (default)    
    make install        Install the package locally to Typst's data directory
    make uninstall      Remove the installed package version
    make lint           Run typst-package-check on the package to lint
    make test           Run tests using tt (tytanic)
    make update-test    Update tests references, ref/, using tt (tytanic)
    make thumbnail      Generate the thumbnail image for the package
    make help           Show this help message
  ```

### What to Change?
- To change/update the core library logic, `*.typ` files in `src/` should be modified. A new library file `<feature>.typ` should be added to the `lib.typ` wrapper. 
- Now, these changes ***will not*** be reflected in the templates in `template/` since it imports `#import "@preview/clickworthy-resume:1.0.1": *`
- Therefore, local testing should be done by either: 
  1. using `make install` after each change to install the package locally. Then temporarily changing `@preview` to `@local` in the import. 
  2. importing the `lib.typ` directly using the relative path: `#import "../src/lib.typ": *`

> **NOTE**: The package is installed locally in the *`Typst data directory`* (*~/.local/share* on linux) according to the [Typst local packaging guide](https://github.com/typst/packages?tab=readme-ov-file#local-packages)

> **NOTE**: If the *second* method is used for development and testing, it's still ***highly recommended*** to install the package locally and try it, check the installation directory, and so on, to get a feel of how the package will look to the end user.

### Before Pushing
- If library source is changed with any extra functionality, functions, etc., ideally, they should be utilized in the templates in `template/`. Also, documentation in the [How to Edit](#️-how-to-edit) section should be updated with the new functions
- If a new template is created, `<new-template.typ>` ,add a test for it using **tytanic**: `tt new new-template` and copy the template content to the `tests/<new-template>/test.typ` similar to other `test.typ` files.
- If a template is modified, update its corresponding `test.typ` and run `make update-test` `make test`
- If the `resume` template is updated, on on top of updating `tests`, update the thumbnail by running `make thumbnail`
- Lint by running `make lint`
- Update version in `typst.toml` and anywhere where the older version number is used, for example, README, templates, etc..
- Check for typos using a tool like [typos](https://github.com/crate-ci/typos)
- Install the package locally and test it. Install by running `make install` and test by creating a temp directory and running `typst init @local/clickworthy-resume:<version>`
- If the build or test flows change, i.e. `Makefile` new targets and so on, update CI `ci.yml` accordingly when appropriate.

## 📋 TODO
- **Multilingual Support**: Add support for popular international languages
- **Non-Linux Makefile Support**: Add support for using the `Makefile` on non-linux OS
