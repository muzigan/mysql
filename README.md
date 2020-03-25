helm install  mysql -n ${NAMESPACE} --set imagePullSecrets[0].name=alihangzhou,mysqlAllowEmptyPassword=true,mysqlRootHost=%,persistence.storageClass=ceph-storage-class,persistence.size=50Gi,resources.limits.memory=3Gi,resources.limits.cpu="1",resources.requests.memory=1Gi,resources.requests.cpu="500m"   ./mysql

指定 密码允许为空，指定host为%或localhost，不指定密码

允许本机空密码登录， import-database.sh中添加了授权语句

容器启动后  先后台启动检测脚本，再启动 mysqld 服务

检测3306端口开启后，自动导入自定义的sql

再次重启后，判断对应database是否存在，如果存在就不重复导入数据
