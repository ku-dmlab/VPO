config_path=/workspace/HALOs/config/config.yaml

exp_name=(ufb_pythia2-8b_vdpo_3e-6)
model=(pythia2-8b_ufb_sft)
loss=(vdpo)
lr=(3e-6)
exp=(true)
c=(1)
# epsilon=(0.3) If we use rDPO or cDPO, epsilon is needed.

for (( i = 0 ; i < ${#exp_name[@]} ; i++ ));
do
    python train.py model=pythia2-8b \
                    ++model.load_from=/workspace/HALOs/.cache/${model[$i]}/LATEST/policy.pt \
                    loss=${loss[$i]} \
                    ++loss.c=${c[$i]} \
                    ++loss.exp=${exp[$i]} \
                    datasets=[ultrabin] \
                    ++exp_name=${exp_name[$i]} \
                    ++max_prompt_count=1000 \
                    n_epochs=1 \
                    ++lr=${lr[$i]}
done
                    # ++loss.epsilon=${epsilon[$i]} \