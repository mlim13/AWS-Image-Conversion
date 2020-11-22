HOST=

sudo scp -i mykey.pem -o StrictHostKeyChecking=no ./minimoto_client filedest
sudo scp -i mykey.pem -o StrictHostKeyChecking=no ./minimoto_setup filedest
sudo scp -i mykey.pem -o StrictHostKeyChecking=no ./minimoto_cleanup filedest
sudo scp -i mykey.pem -o StrictHostKeyChecking=no ./minimoto_ filedest
