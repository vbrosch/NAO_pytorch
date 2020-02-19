#!/bin/bash

PACKAGE_DIR=package

mkdir -p $PACKAGE_DIR

pip install torch torchvision numpy --target $PACKAGE_DIR

cp ../NAO_V2/*.py $PACKAGE_DIR
cp ../NAO_V2/*.sh $PACKAGE_DIR
cp nao_job.sh $PACKAGE_DIR

tar cfvz nao_package.tar.gz $PACKAGE_DIR

rm -r $PACKAGE_DIR
