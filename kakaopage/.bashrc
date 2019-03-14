count=`klist | grep Expired | wc -l`
if [ $count -ge 1 ]
then
  kdestroy && kinit [LDAP_ID]
fi
