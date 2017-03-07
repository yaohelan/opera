#!/bin/bash
##############################################################################
# Copyright (c) 2016-2017 HUAWEI TECHNOLOGIES CO.,LTD and others.
#
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Apache License, Version 2.0
# which accompanies this distribution, and is available at
# http://www.apache.org/licenses/LICENSE-2.0
##############################################################################
set -ex
OPENO_VM_DIR=${WORK_DIR}/openo_vm


function launch_openo_docker()
{
    local cmd=$OPENO_DIR/openo_docker.sh
    exec_cmd_on_openo $cmd
}

set +ex