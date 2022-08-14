# SEAT
This repository is the official implementation of "Stable and Efficient Adversarial Trainging through Local Linearization".

## Dependencies
- Python >= 3.8.0
- Torch >= 1.8.0
- Torchvision >= 0.9.0
- Numpy >= 1.21
- advertorch >= 0.2.3
- torchattacks >= 3.2.7

Install required dependencies:
```
pip install -r requirements.txt
```

If you want to use `wandb` to track and visualize all the pieces of models, you can install and login:
```
pip install wandb
wandb login
```

We also evaluate the robustness with [Auto-Attack](https://github.com/fra31/auto-attack). It can be installed via following source code:
```
pip install git+https://github.com/fra31/auto-attack
```

## Quickstart
This code of `train.py` is partially based on the code from [Li et al,CVPR2022](https://arxiv.org/abs/2111.12229). 

To train the model in the paper, run this command:
```
bash run.sh
```

## Comparison
Results on CIFAR-10:

|  Method | Clean Accuracy(%) | Robust Accuracy(%) |
|:-------:|:-----------------:|:------------------:|
|   PGD   |        78.0       |        43.9        |
| RS-FGSM |        88.6       |         0.0        |
|   SEAT  |        79.4       |        49.6        |
| SEAT-FL |        78.9       |        50.9        |
> 📋

## Reference