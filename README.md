# Code from: Dissecting whole-brain conduction delays through MRI microstructural measures

This repository contains the code to reproduce the results presented in the paper "Dissecting whole-brain conduction delays through MRI microstructural measures", published on Brain Structure and Function. The related dataset is available on [figshare](https://doi.org/10.6084/m9.figshare.15141909).

The figures and statistics reported in the paper can be replicated using the following notebooks:

- [group analysis](group_analysis.ipynb) [![Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/matteomancini/dissecting-conduction-delays/blob/main/group_analysis.ipynb)
- [group analysis (with higher-resolution parcellation)](group_analysis_hires_parc.ipynb) [![Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/matteomancini/dissecting-conduction-delays/blob/main/group_analysis_hires_parc.ipynb)
- [single-subject analysis](single_subject_analysis.ipynb) [![Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/matteomancini/dissecting-conduction-delays/blob/main/single_subject_analysis.ipynb)

The Kuramoto simulations can be reproduced using [this MATLAB script](run_kuramoto.m), that relies on a [modified version](https://github.com/matteomancini/NetworkModel_Toolbox) of the [NetworkModel Toolbox](https://github.com/juanitacabral/NetworkModel_Toolbox) (already present in the repo as a submodule).

The code was tested using Python `3.7.3` and MATLAB `R2019a` on macOS `10.15.7`. The required Python packages are listed in [`requirements.txt`](requirements.txt).
