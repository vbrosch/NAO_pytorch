#!/bin/bash

PACKAGE_DIR=nao

mkdir -p $PACKAGE_DIR

pip install --upgrade Pillow==5.4.0 torch==1.0.1 torchvision==0.2.2 numpy --target $PACKAGE_DIR

cp ../NAO_V2/*.py $PACKAGE_DIR
cp ../NAO_V2/*.sh $PACKAGE_DIR
cp nao_job.sh $PACKAGE_DIR

tar cfvz nao_package.tar.gz $PACKAGE_DIR

rm -r $PACKAGE_DIR
