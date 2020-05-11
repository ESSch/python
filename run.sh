oc new-app https://github.com/badri/python-app.git
sleep 100
git clone https://github.com/ESSch/python.git
cd python/
source WebHook.sh
echo $HOOCK
sed 's!\${HOOCK}!'$HOOCK'!' default.conf > default_hoock.conf
oc -n openshift create configmap nginx --from-file=default_hoock.conf
oc -n openshift create -f dc_nginx.yaml
oc -n openshift create -f svc_nginx.yaml
oc -n default create -f rout_nginx.yaml
