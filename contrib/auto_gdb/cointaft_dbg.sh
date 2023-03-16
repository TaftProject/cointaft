#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.cointaftcore/cointaftd.pid file instead
cointaft_pid=$(<~/.cointaftcore/testnet3/cointaftd.pid)
sudo gdb -batch -ex "source debug.gdb" cointaftd ${cointaft_pid}
