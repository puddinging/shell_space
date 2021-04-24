#!/bin/sh
modules=("xdap-admin" "xdap-api" "xdap-app" "xdap-common" "xdap-data-trans" "xdap-function" "xdap-gatewayinstead" "xdap-integration" "xdap-job-worker" "xdap-manage" "xdap-message" "xdap-process")
branchs=("admin_branch" "api_branch" "app_branch" "common_branch" "xdap-data-trans" "function_branch" "gatewayinstead_branch" "integration_branch" "job_branch" "manage_branch" "message_branch" "process_branch")
repository_url="http://git.definesys.com/apaas/private-apaas/defanyun-apaas-private.git"
home=`pwd`
parent_dir="${home}/defanyun-apaas-private"
echo "${home}"

git clone "${repository_url}" --recursive
for (( i = 0; i < 12; i++ )); do
    echo "${modules[i]}"
    echo "${parent_dir}/${modules[i]}"
    cd ${parent_dir}/${modules[i]}
    git checkout ${branchs[i]}
    cd ..
done

cd ${parent_dir}
mvn clean install -Dmaven.test.skip=true