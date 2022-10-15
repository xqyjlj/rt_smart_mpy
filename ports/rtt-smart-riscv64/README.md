## rtt-smart-riscv64

首先在 `ports/rtt-smart-riscv64/variants/standard/mpconfigvariant.mk` 路径更改工具链路径（"http://117.143.63.254:9012/www/rt-smart/riscv64/riscv64-linux-musleabi_for_x86_64-pc-linux-gnu_latest.tar.bz2"）

再进行子模块同步 `git submodule update --init --depth=1 --no-single-branch`

随后在 `ports/rtt-smart-riscv64` 下执行 make 即可
