nvidia-smi
python /userhome/project/pt.darts/augment.py --name MDENAS --dataset cifar10 --genotype "Genotype(
    normal=[
        [('sep_conv_5x5', 1), ('sep_conv_3x3', 0)],
        [('skip_connect', 0), ('sep_conv_5x5', 1)],
        [('sep_conv_5x5', 3), ('sep_conv_3x3', 1)],
        [('dil_conv_5x5', 3), ('max_pool_3x3', 4)],
    ],
    normal_concat=range(2, 6),
    reduce=[
        [('max_pool_3x3', 0), ('sep_conv_5x5', 1)],
        [('skip_connect', 0), ('skip_connect', 1)],
        [('sep_conv_3x3', 3), ('skip_connect', 2)],
        [('dil_conv_3x3', 3), ('sep_conv_5x5', 0)],
    ],
    reduce_concat=range(2, 6))"