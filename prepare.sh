#!/bin/bash
##############################################################################
# Copyright (c) 2016-2017 HUAWEI TECHNOLOGIES CO.,LTD and others.
#
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Apache License, Version 2.0
# which accompanies this distribution, and is available at
# http://www.apache.org/licenses/LICENSE-2.0
##############################################################################

function generate_conf()
{
    rm -rf ${WORK_DIR}/scripts
    mkdir -p ${WORK_DIR}/scripts
    python ${OPERA_DIR}/process_conf.py ${CONF_DIR}/openo-vm.yml /home/network.yml
}

function package_prepare()
{
    if [[ $(grep Ubuntu /etc/issue) ]]; then
        sudo apt-get update -y
        sudo apt-get install -y wget mkisofs qemu-utils qemu-kvm libvirt-bin openvswitch-switch python-pip sshpass figlet
        sudo pip install pyyaml
    else
        # not test with redhat server yet
        sudo yum update -y
        sudo yum install -y wget mkisofs qemu-kvm libvirt-bin openvswitch-switch python-pip sshpass figlet
        sudo pip install pyyaml
    fi
    service openvswitch-switch start
}