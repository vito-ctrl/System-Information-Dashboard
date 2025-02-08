echo ===============================================
echo System Information Dashboard
echo ===============================================
#dispalaying username and password 
printf "username : %s " "$whoami"
printf "hostname : %s" "$hostname"

#shows current date and time
echo `date`

#list system uptime
echo 'your system up time : ' `uptime -p`

#show available disk space
echo -------------available disk space--------------
echo `df -h --output=source,size,used,avail`

#dispalay RAM usage
echo ------------------RAM usage--------------------
echo `free -l -h`

#show CPU information 
echo ---------------CPU information-----------------
echo `cat /proc/cpuinfo | grep 'vendor' | uniq`
echo `cat /proc/cpuinfo | grep 'model name' | uniq`
echo `cat /proc/cpuinfo | grep processor | wc -l`
echo `cat /proc/cpuinfo | grep 'core id'`
