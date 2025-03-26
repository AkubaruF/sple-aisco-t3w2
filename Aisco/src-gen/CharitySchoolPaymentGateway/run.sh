#!/bin/bash
source ~/.zshrc  

cleanup() {
    pkill -P $$
    exit 1
}

trap cleanup SIGINT

java -cp aisco.product.charityschoolpaymentgateway --module-path aisco.product.charityschoolpaymentgateway -m aisco.product.charityschoolpaymentgateway &

wait