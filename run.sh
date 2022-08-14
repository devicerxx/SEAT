datasets=CIFAR10 #choises: [CIFAR10, CIFAR100, TinyImagenet]
eps=8
seed=0
device=0

model=PreActResNet18
#model=WideResNet

EXP=$model\_$datasets\_SEAT
DST=new_results/$EXP
CUDA_VISIBLE_DEVICES=$device python -u main.py --cyclic \
    --datasets $datasets  --randomseed $seed \
    --train_eps $eps --test_eps $eps --train_step 1 --test_step 10 --wd 0.0005 --lr 0.1 \
    --train_gamma 8 --test_gamma 2 --arch=$model \
    --epochs=30  --save-dir=$DST/models --log-dir=$DST --EXP $EXP