config_path=/workspace/HALOs/config/config.yaml

exp_name=(shp_pythia2-8b_vdpo_1e-7)
loss=(vdpo)
lr=(1e-7)
exp=(false)
c=(1)
# epsilon=(0.3) If we use rDPO or cDPO, epsilon is needed.

for (( i = 0 ; i < ${#exp_name[@]} ; i++ ));
do
    python train.py model=pythia2-8b-sft \
                    loss=${loss[$i]} \
                    ++loss.c=${c[$i]} \
                    ++loss.exp=${exp[$i]} \
                    datasets=[shp] \
                    ++exp_name=${exp_name[$i]} \
                    ++max_prompt_count=5 \
                    n_examples=null \
                    n_epochs=1 \
                    ++lr=${lr[$i]}
done
                    # ++loss.epsilon=${epsilon[$i]} \