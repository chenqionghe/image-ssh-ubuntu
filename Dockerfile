FROM centos
RUN yum install -y wget && \
wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo  && \
yum install -y passwd && \
yum install -y openssh-server  ssh-keygen && \
echo 'lightWeightBaby!' | passwd root --stdin
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N "" -q && \
ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key -N "" -q && \
ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key -N "" -q
#RUN systemctl enable sshd
CMD /usr/sbin/sshd && tail -f /var/log/wtmp



