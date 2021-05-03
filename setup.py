from setuptools import setup, find_packages

setup(name='unlabeled_extrapolation',
      version='0.0.1',
      description='unlabeled_extrapolation',
      url='https://github.com/p-lambda/unlabeled_extrapolation',
      author='Kendrick Shen, Robbie Jones, Michael Xie, Ananya Kumar',
      author_email='ananya@cs.stanford.edu',
      packages=find_packages('.'),
      install_requires=[
        'matplotlib',
        'numpy',
        'torch==1.8.1+cu111',
        'torchvision==0.9.1+cu111',
        'tqdm',
        'requests',
        'wandb',
        'pandas',
        'h5py',
        'strconv',
        'scikit-learn',
        'scipy',
        'cdsapi',
        'quinine',
        'pyyaml',
        'uncertainty-calibration',
        # 'lightning-bolts',
        'tensorboard',
        'opencv-python',
        'robustness',
        'networkx',
        'cvxpy',
        'pytorch-lightning-bolts',
        ])
