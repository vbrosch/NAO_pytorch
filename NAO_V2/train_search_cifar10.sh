MODEL=search_cifar10
OUTPUT_DIR=$1
DATA_DIR=$2

mkdir -p $OUTPUT_DIR

python3 train_search.py --child_nodes 3 --controller_source_length 24 --controller_encoder_length 12 --controller_decoder_length 24 --child_layers 1 --child_epochs 15 --controller_new_arch 100 --data=$DATA_DIR --output_dir=$OUTPUT_DIR | tee -a $OUTPUT_DIR/train.log
