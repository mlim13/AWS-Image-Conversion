# Setup
sudo scp -i mykey.pem -o StrictHostKeyChecking=no ./minimoto_setup ubuntu@100.26.212.130:~/minimoto_setup
sudo scp -i mykey.pem -o StrictHostKeyChecking=no ./minimoto_client ubuntu@100.26.212.130:~/minimoto_client
sudo scp -i mykey.pem -o StrictHostKeyChecking=no ./minimoto_transcoding ubuntu@100.26.212.130:~/minimoto_transcoding
sudo scp -i mykey.pem -o StrictHostKeyChecking=no ./minimoto_cleanup ubuntu@100.26.212.130:~/minimoto_cleanup
sudo scp -i mykey.pem -o StrictHostKeyChecking=no ./minimoto_watchdog ubuntu@100.26.212.130:~/minimoto_watchdog
sudo scp -i mykey.pem -o StrictHostKeyChecking=no ./Makefile ubuntu@100.26.212.130:~/Makefile
sudo scp -i mykey.pem -o StrictHostKeyChecking=no ./setup.sh ubuntu@100.26.212.130:~/setup.sh
sudo scp -i mykey.pem -o StrictHostKeyChecking=no ./img2video.sh ubuntu@100.26.212.130:~/img2video.sh
sudo scp -i mykey.pem -o StrictHostKeyChecking=no ./mykey.pem ubuntu@100.26.212.130:~/mykey.pem

# # Client
# sudo scp -r -i mykey.pem -o StrictHostKeyChecking=no ./sample_images2 ubuntu@3.235.40.137:~/sample_images2
# sudo scp -i mykey.pem -o StrictHostKeyChecking=no ./parallelJobs.sh ubuntu@3.235.40.137:~/parallelJobs.sh
