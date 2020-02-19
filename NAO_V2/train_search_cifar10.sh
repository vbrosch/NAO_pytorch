MODEL=search_cifar10
OUTPUT_DIR=$1
DATA_DIR=$2

mkdir -p $OUTPUT_DIR

python3 train_search.py --child_nodes 3 --child_layers 1 --child_epochs 5 --controller_new_arch 50 --controller_seed_arch 200 --data=$DATA_DIR --output_dir=$OUTPUT_DIR | tee -a $OUTPUT_DIR/train.log
