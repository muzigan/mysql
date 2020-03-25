for i in `seq 30`;do
	echo $i
	ss -ntlp |grep 3306 &>/dev/null
	if [ "$?" -ne "0" ];then
		/bin/sleep 60
	else
		mysql -uroot -e "show databases" |grep  gumigps  &> dev/null
		if [ "$?" -ne "0" ];then
			mysql -uroot -e "grant all privileges on *.* to 'root'@'%' identified by 'secretpassword' with grant option;" && \		        
			cd /mysql-initsql && \
			mysql -uroot    < ./all.sql && \
			break
		fi
		break
	fi
done
