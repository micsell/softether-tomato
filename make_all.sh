PATH=$PATH:/opt/brcm/hndtools-mipsel-linux/bin
PATH=$PATH:/opt/brcm/hndtools-mipsel-uclibc/bin
export PATH

cd release/src-rt
make n64k V1=130 V2=Small
