folder="modo_lr_ablation_3samples_logs"
mkdir -p $folder
moo_method=MoDo

LR_SET="0.001 0.005 0.01 0.05 0.1 0.5 1."
GAMMA_SET="0.01"
RHO_SET="0.0"
SEED_SET="0 1 2 3 4 5 6 7 8 9"

for lr in $LR_SET; do
    for gamma in $GAMMA_SET; do
        for rho in $RHO_SET; do
            for seed in $SEED_SET; do
                echo "python -u toy_fast_3sample.py --seed $seed --moo_method $moo_method  --lr $lr --gamma_modo $gamma --rho_modo $rho > $folder/$moo_method-seed-$seed-lr-$lr-gamma-$gamma-rho-$rho.out"
                python -u toy_fast_3sample.py --seed $seed --moo_method $moo_method  --lr $lr --gamma_modo $gamma --rho_modo $rho > $folder/$moo_method-seed-$seed-lr-$lr-gamma-$gamma-rho-$rho.out
            done
        done
    done
done