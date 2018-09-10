terraform will define virtual private servers on binary lane
vagrant will create the virtual private servers
ansible will configure them

see here for manual interaction with openstack api via nova (handy for troubleshooting):
https://www.binarylane.com.au/support/solutions/articles/1000026198-api-openstack-command-line-client

manual pre-reqs:
1. vpc is defined manually in binary lane console; yet to determine api call to do so
2. ...

deployment steps:
1. set up vps's
cd terraform && ../bin/terraform apply

end
