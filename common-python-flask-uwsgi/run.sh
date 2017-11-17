docker run -d -p 5001:5001 -v /root/test/app/src:/usr/app/src  -e "SERVER_ENV=PRODUCTION"  --name app1 --restart=unless-stopped app
docker run -d -p 5002:5001 -v /root/test/app/src2:/usr/app/src -e "SERVER_ENV=PRODUCTION2" --name app2 --restart=unless-stopped app
