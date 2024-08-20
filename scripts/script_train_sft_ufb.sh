python train.py model=pythia2-8b \
                loss=sft \
                datasets=[ultrabin] \
                ++lr=1e-5 \
                ++exp_name=pythia2-8b_ufb_sft \
                ++max_prompt_count=1000 \