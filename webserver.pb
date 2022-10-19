---
 - name : webserverpb
   hosts : all
   tasks :
     - name : Install webserver
       yum :
         name : httpd
         state : present
     - name : start the service
       service :
         name : httpd
         state : started
     - name : cloning from git
       shell : " git clone https://github.com/vsvvkt/AzureProject1.git "
     - name : Copying code to expose
       shell : " cp -rp /home/AzureProject1/* /var/www/html/ "
