FROM python:3.7

WORKDIR /usr/src/app

COPY setup.txt ./
COPY setup.cfg ./
RUN pip install .

CMD [ "/bin/bash", "-c" ]

## To run
# docker build . -t fastformers
# docker run -it --rm --name fastformers -v ${PWD}:/usr/src/app -w /usr/src/app fastformers

# Run 
# python3 examples/fastformers/run_superglue.py \
# --model_type bert \
# --model_name_or_path ${pruned_student_model} \
# --task_name BoolQ --output_dir ${out_dir} --do_eval \
# --data_dir ${data_dir} --per_instance_eval_batch_size 1 \
# --do_lower_case --max_seq_length 512 --use_onnxrt \
# --threads_per_instance 1 --no_cuda