MODEL=search_cifar10
OUTPUT_DIR=$1
DATA_DIR=$2

mkdir -p $OUTPUT_DIR

python3 train_search.py --data=$DATA_DIR --output_dir=$OUTPUT_DIR | tee -a $OUTPUT_DIR/train.log
