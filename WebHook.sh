URL=$(oc describe bc/python-app | grep -o 'http.*generic$')
SECRET=$(oc get bc/python-app -o json | jq -r '.spec.triggers | .[] | select(.type == "Generic").generic.secret ')
export HOOCK=$(echo $URL | sed 's!< secret>!'$SECRET'!')
# curl -X POST -k $HOOCK
