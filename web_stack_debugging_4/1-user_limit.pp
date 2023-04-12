# Change the OS configuration so that it is possible to login with 
# + the holberton user and open a file without any error message

exec { 'replace_hard_soft_limit_for_holberton_user':
  path    => '/usr/bin:/usr/sbin:/bin',
  command => 'sed -i "/holberton hard nofile/c\holberton hard nofile 4096" /etc/security/limits.conf;\
sed -i "/holberton soft nofile/c\holberton soft nofile 1024" /etc/security/limits.conf',
}
