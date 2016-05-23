cd /usr/local/hadoop/data/namenode/
rm -rf *
cd /usr/local/hadoop/data/datanode/
rm -rf *
cd ../../logs/
rm -rf *
cd /usr/local/zookeeper
rm -rf *
cd /usr/local/hbase/logs/
rm -rf *
cd ..
rm hs_err_pid*
rm replay_pid*
cd
rm hs_err_pid*
rm replay_pid*


ssh rserver1 '
cd /usr/local/hadoop/data/datanode/
rm -rf *
cd ../../logs/
rm -rf *
cd /usr/local/hbase/logs/
rm -rf *
cd ..
rm hs_err_pid*
rm replay_pid*
cd
rm hs_err_pid*
rm replay_pid*


exit
'
ssh rserver2 '
cd /usr/local/hadoop/data/datanode/
rm -rf *
cd /usr/local/hbase/logs/
rm -rf *
cd ..
rm hs_err_pid*
rm replay_pid*
cd
rm hs_err_pid*
rm replay_pid*


exit
'

ssh master2 '
cd /usr/local/zookeeper
rm -rf *
cd /usr/local/hbase/logs/
rm -rf *
cd ..
rm hs_err_pid*
rm replay_pid*
cd
rm hs_err_pid*
rm replay_pid*


exit
'
hdfs namenode -format
