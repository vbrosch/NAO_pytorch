MODEL=search_cifar10
OUTPUT_DIR=$3
DATA_DIR=$4

mkdir -p $OUTPUT_DIR

python3 train_search.py --child_nodes $1 --child_layers $2 --data=$DATA_DIR --output_dir=$OUTPUT_DIR | tee -a $OUTPUT_DIR/train.log
