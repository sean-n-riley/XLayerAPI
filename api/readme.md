XLAYER API
----------

There is a docker image on the xlayer.co.za repository which will be pulled.

Some helpful tips on how to use a local registry can be found here
    https://www.docker.com/blog/how-to-use-your-own-registry/


Creating a new Docker Image
---------------------------

If we need to build a new image (with and updated XLayer API) these are the steps that will need to be taken:

1. Obtain the latest XLayer API jar file
2. Edit the dockerfile (line 3) and change the jar filename to the name of the new files you got in step 1
3. Make sure you have an updated application.properties file and that any changes exist in this local application.properties file
4. Run the following command:
    docker build -t xlayerapi:[new Tag version including patch]
5. Test that this new XLayerAPI image runs by running the following:
    docker run --name xlayer_api_app01 -p 9788:9788 xlayerapi:[new Tag version including patch]
6. This should run the Spring Boot application and you will see the error that it cannot connect to the database (unless you have the xlayer_api_db01 server running)
7. If this works you can upload (push) the new image to the xlayer.co.za docker repository using the following 2 steps:
    1. docker tag [image id] xlayer.co.za:5000/xlayerapi:[new Tag version including patch]
    2. docker push xlayer.co.za:5000/xlayerapi:[new Tag version including patch]

You should now have the new image in the SXI docker repository.

N.B.:
-----
Remember to change the docker-compose.yml file to reflect your new tag you just uploaded.