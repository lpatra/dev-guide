[Index][home] > Python > Conda

---
# Conda

## CONDA setup Guide
- Go to the base directory
- Assume work directory `T_WORK` is empty
  ```bash
  export T_WORK=`pwd`
  mkdir -p $T_WORK/downloads
  ```
- Download Miniconda
  - https://conda.io/miniconda.html
    - Mac OSX
      - `cd $T_WORK/downloads && curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh`
    - Linux
      - `cd $T_WORK/downloads && curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh`
- Silent Install of Miniconda
  - `` bash $T_WORK/downloads/Miniconda3-latest-*-x86_64.sh -b -p $T_WORK/miniconda3 ``
- Verify that root miniconda env can be activated
  - `source $T_WORK/miniconda3/bin/activate`
  - `conda update conda`
  - `conda deactivate`
  
### Create virtual env
- Activate root miniconda env
  - `source $T_WORK/miniconda3/bin/activate`
  - `conda update conda`
- Create venv
  - `conda create -n aws python=3 anaconda jupyter`
- List all venvs from base env
  - `conda env list`
- Activate venv and install packages
  - `conda activate aws`
  - `conda update --all`
  - `conda install -c conda-forge awscli boto3`
- To dectivate venv
  - `conda deactivate aws`
- To list all packages in a venv
  - `conda list`
- To update all packages in a venv
  - `conda update --all`


[home]: /dev-guide
