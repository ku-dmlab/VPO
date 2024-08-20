models=(shp_pythia2-8b_vdpo_1e-7)

for model in ${models[@]};
do
    python eval.py --config-path=/workspace/HALOs/.cache/${model} ++mode=sample_shp ++samples_dir=.cache/${model}/sample_shp ++n_samples=360 ++model.eval_batch_size=16
done
for model in ${models[@]};
do
    python eval.py --config-path=/workspace/HALOs/.cache/${model} ++mode=alpacaeval ++samples_dir=.cache/${model}/alpacaeval ++n_samples=805 ++model.eval_batch_size=16
done