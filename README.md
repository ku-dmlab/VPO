# VPO

This is the repository for VPO: Leveraging the Number of Votes in Preference Optimization.

-----
To perform the initial SFT on a model, run a command like:

`bash script_train_sft_ufb.sh &`

Following SFT, to align a model with VDPO, run a command like:

`bash script_train_ufb.sh &`

If you are using an existing model for SFT, run a command like:

`bash script_train_shp.sh &`

After training, to sample output from the model, run a command like:

`bash script_eval.sh &`

-----
We modified the code based on https://github.com/ContextualAI/HALOs.

