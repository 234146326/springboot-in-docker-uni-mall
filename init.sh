 git submodule add https://gitee.com/iotechn/unimall.git | git submodule update

 if [$? -ne 0]; then
     echo "failed"
 else
     cp_docker_file="cp ./Dockerfile ./unimall/"
     cp_application_properties="cp ./application.properties unimall/unimall-launcher/src/main/resources/application.properties"
     eval $cp_docker_file
     eval $cp_application_properties
 fi
