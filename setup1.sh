mkdir -p /media/localRPM/BASE/;
mkdir -p /media/localRPM/ESR/;
tar -xf crosswork-situation-manager-7.3.0.1.tar
tar xzf *-MoogsoftBASE7_offline_repo.tar.gz -C /media/localRPM/BASE/
tar xzf *-MoogsoftESR_7.3.0*_offline_repo.tar.gz -C /media/localRPM/ESR/
mv /etc/yum.repos.d /etc/yum.repos.d-backup
mkdir /etc/yum.repos.d
cp local.repo /etc/yum.repos.d/local.repo
yum clean all
yum info "moogsoft-*"
curl -O https://keys.openpgp.org/vks/v1/by-fingerprint/2529C94A49E42429EDAAADAEC7A2253BFC50512A
gpg --import 2529C94A49E42429EDAAADAEC7A2253BFC50512A
cp -f *.sig /media/localRPM/ESR/RHEL/
curl -L -O http://repo.percona.com/percona/yum/release/7/RPMS/x86_64/Percona-XtraDB-Cluster-shared-57-5.7.26-31.37.1.el7.x86_64.rpm;
curl -L -O http://repo.percona.com/percona/yum/release/7/RPMS/x86_64/Percona-XtraDB-Cluster-client-57-5.7.26-31.37.1.el7.x86_64.rpm;
curl -L -O http://repo.percona.com/percona/yum/release/7/RPMS/x86_64/Percona-XtraDB-Cluster-server-57-5.7.26-31.37.1.el7.x86_64.rpm;
curl -L -O http://repo.percona.com/percona/yum/release/7/RPMS/x86_64/Percona-XtraDB-Cluster-shared-compat-57-5.7.26-31.37.1.el7.x86_64.rpm;
curl -L -O http://repo.percona.com/percona/yum/release/7/RPMS/x86_64/percona-xtrabackup-24-2.4.15-1.el7.x86_64.rpm;
