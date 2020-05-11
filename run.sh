oc new-app https://github.com/badri/python-app.git
git clone https://github.com/ESSch/python.git
cd python/
source WebHook.sh
echo $HOOCK
oc process -f tmt.yaml HOOCK=$HOOCK | oc get -f -
