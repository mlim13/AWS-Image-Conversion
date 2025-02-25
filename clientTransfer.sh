# # Setup
# sudo scp -i mykey.pem -o StrictHostKeyChecking=no ./minimoto_setup ubuntu@3.236.230.38:~/minimoto_setup
# sudo scp -i mykey.pem -o StrictHostKeyChecking=no ./minimoto_client ubuntu@3.236.230.38:~/minimoto_client
# sudo scp -i mykey.pem -o StrictHostKeyChecking=no ./minimoto_transcoding ubuntu@3.236.230.38:~/minimoto_transcoding
# sudo scp -i mykey.pem -o StrictHostKeyChecking=no ./minimoto_cleanup ubuntu@3.236.230.38:~/minimoto_cleanup
# sudo scp -i mykey.pem -o StrictHostKeyChecking=no ./minimoto_watchdog ubuntu@3.236.230.38:~/minimoto_watchdog
# sudo scp -i mykey.pem -o StrictHostKeyChecking=no ./Makefile ubuntu@3.236.230.38:~/Makefile
# sudo scp -i mykey.pem -o StrictHostKeyChecking=no ./setup.sh ubuntu@3.236.230.38:~/setup.sh
# sudo scp -i mykey.pem -o StrictHostKeyChecking=no ./img2video.sh ubuntu@3.236.230.38:~/img2video.sh
# sudo scp -i mykey.pem -o StrictHostKeyChecking=no ./mykey.pem ubuntu@3.236.230.38:~/mykey.pem

# Client
sudo scp -r -i mykey.pem -o StrictHostKeyChecking=no ./sample_images2 ubuntu@18.207.252.154:~/sample_images2
sudo scp -i mykey.pem -o StrictHostKeyChecking=no ./parallelJobs.sh ubuntu@18.207.252.154:~/parallelJobs.sh
