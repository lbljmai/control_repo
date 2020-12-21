class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDzBlC+/ef2PU4LnPz8HN9pBTP+7CvYdtsJoPCyskenoo03aC2AumciPBjNy7QGo/VQ0Rvs+MgYf0Nhxyf+hfrpV5BFPKw46HgB2VzNfssWNJjYXqh4212ITQ/m8njqYXsdOBIP2uQOFFYgxzg8Rvy+A2ZEMDafnOm96xpVW/CUDalEXun94zdT3LvtEbCV8NtsVtEn0Z7ebiY1wAFscBsyerg45k5GM4BTU2lUtkqm23CNUhiTVhJpM+gigoyWJC5NLp9/+Xi4nRMrVUV3nGeqUHrg/IF48rabT0687lUZy9R7MsjNMoHXeAEhCm1Ra7abWNyxl/kb4qGMB8stYTqt',
	}  
}
