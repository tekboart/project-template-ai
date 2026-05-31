<div align="center">
  <p>
    <a align="center" href="" target="_blank">
      <img
        width="100%"
        style="border-radius: 20px;"
        src="images/project_banner.jpg"
      >
    </a>
  </p>
  <br>

  <div align="center">
      <a href="https://github.com/tekboart/">
          <img
            src="images/logos/github-gray.svg"
            width="3%"
          />
      </a>&nbsp;&nbsp;&nbsp;
      <a href="https://www.linkedin.com/in/kyan-bhr/">
          <img
            src="images/logos/linkedin-gray.svg"
            width="3%"
            style="border-radius: 5px !important; filter: invert(40%;"
          />
      </a>&nbsp;&nbsp;&nbsp;
      <a href="https://scholar.google.com/citations?user=r3xmjQUAAAAJ&hl=en">
          <img
            src="images/logos/googlescholar-gray.svg"
            width="3%"
          />
      </a>&nbsp;&nbsp;&nbsp;
      <a href="https://www.kaggle.com/tekboart">
          <img
            src="images/logos/kaggle-gray.svg"
            width="3%"
          />
      </a>&nbsp;&nbsp;&nbsp;
  </div>
</div>

<hr height="10">

# Title of The Project/Research
![Makefile](https://img.shields.io/badge/Makefile-Yes-green.svg)
![Docs](https://img.shields.io/badge/Docs-Yes-green.svg)
![AutoFormat](https://img.shields.io/badge/AutoFormat-Yes-green.svg)
![PyTest](https://img.shields.io/badge/PyTest-Yes-green.svg)

![GithubActions](https://img.shields.io/badge/Github_Actions_(CI/CD)-svg?style=flat&color=181717&logo=github&logoColor=white&labelColor=gray)
![CMake](https://img.shields.io/badge/Make-svg?style=flat&color=064F8C&logo=cmake&logoColor=white&labelColor=gray)
![Sphinx](https://img.shields.io/badge/Sphinx-svg?style=flat&color=000000&logo=sphinx&logoColor=white&labelColor=gray)
![Python](https://badges.aleen42.com/src/python.svg)
![HTML](https://badges.aleen42.com/src/html5.svg)

## 💬 Description
[ADD A CONCISE DESCRIPTION AND INTRODUCTION TO YOUR PROJECT (PREFERABLY WITH SOME TABLES AND FIGURES)]

## 🛠️ Developer Setup

> Please refer to the file `requirements.txt` for a comprehensive list of packages and their corresponding version.

### 1. Clone and install dependencies

```bash
git clone https://github.com/yourusername/project_template.git
cd project_template
python -m venv .venv
source .venv/bin/activate  # On Windows: .venv\Scripts\activate
pip install -r requirements.txt
```

### 2. Setup the project

#### Option A: Using Makefile (Recommended)
> Fast, easy, automated setup.
```bash
make dev
make format
make test
make docs
make clean
```

#### Option B: Manually setting up
##### B.1. Enable pre-commit hooks
> *Optional but recommended for code quality assurance. If you fail to do, the GitHub Actions CI/CD pipeline will catch the issues; so better to catch them yourself before pushing changes.*

```bash
pre-commit install
pre-commit run --all-files  # optional, to format everything once
pre-commit autoupdate  # Run this periodically to keep hooks updated
```

##### B.2. Enable pre-commit hooks

```bash
pytest
```

##### B.3. Build the documentation

```bash
cd docs
make html
```

## 🏗️ Directory/Folder Structure
```bash
project_template
├── data
│   └── 0_original_data
├── dbs
├── docs
│   ├── notes
│   └── tutorials
├── images
│   └── logos
├── logs
│   ├── deploy
│   ├── dev
│   └── maintain
├── models
│   ├── checkpoints
│   └── history
├── outputs
│   ├── hyperparams
│   ├── hyperparams_search
│   ├── inferences
│   ├── model_arch_plot
│   └── plots
├── project_files
├── reports
│   └── diagrams
├── src
│   └── project_name
│       └── utils
└── tests

29 directories
```

## Citation
```latex
@article{<bib_key>,
  author = {<Author1_surname, Author1_name> and <Author2_surname, Author2_name>},
  title = {<Title>},
  year = {<Year>},
  publisher = {<Publisher>},
  journal = {<Journal_Name>},
  url = {<URL>},
  doi = {<DOI>},
  month = {<Published_Month>},
  keywords = {<Keyword1>, <Keyword2>, <Keyword3>, <Keyword4>, <Keyword5>}
}
```

## 📬 Contact
<!-- Unfortunately this repo is no longer actively maintained.  -->
Should you have any questions, feel free to contact TekBoArt @tekboart.


## ⚖️  License
This repository has a `GPL-3.0 license` license, as found in the `LICENSE` file.
