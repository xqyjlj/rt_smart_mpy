TOOLCHAIN_ROOT = /opt/riscv64-linux-musleabi_for_x86_64-pc-linux-gnu/bin/
CROSS_COMPILE = $(TOOLCHAIN_ROOT)riscv64-unknown-linux-musl-

CC = $(TOOLCHAIN_ROOT)riscv64-unknown-linux-musl-gcc
DB = $(TOOLCHAIN_ROOT)riscv64-unknown-linux-musl-gdb

# 使用arm平台时, -mcmodel=medany参数要删除
CFLAGS += -Wall -O0 -g --static -mcmodel=medany

mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
LD_FILES = $(dir $(mkfile_path))/../../link.lds
LDFLAGS += -static -T ${LD_FILES}
