# conflue-postrgesql

#u will need Vagrant avalible ports:80 > 8080 ; 443 > 4444 ; 
 and for pure setup confluence i can get access to controle panel from localhost:8090
+ more then 5 gb memory -- java + tomecat + confluence + nginx 

vagrant up --provision	 
vagrant ssh 

	LOG IN like postgres user 

sudo -i -u postgres

	export some US.UTF-8	

export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_TYPE=en_US.UTF-8

	creating db user and db 

bash -c "psql -c \"CREATE ROLE confluenceuser with LOGIN PASSWORD 'pass'\" "
bash -c "createdb --owner confluenceuser  confluence"

	now u can config confluence from localhost:8090 

-----------------------------------------------------------------------------------

*** next ssh tounel to es2 443:4444:4444 
---------------------------vag:local:es2---

 ssh -p 2222 -i nvi.pem -R 4444:localhost:4444 ubuntu@ec2-52-90-192-5.compute-1.amazonaws.com
enter here 
https://ec2-52-90-192-5.compute-1.amazonaws.com:4444/

__________________________________
after and use 
vagrant destroy
rm -rf .vagrant/

