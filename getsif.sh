docker run -v /var/run/docker.sock:/var/run/docker.sock \
-v /home/josh/Dropbox//singularity_tutorial/sif_containers:/output \
--privileged -t --rm \
quay.io/singularity/docker2singularity:v3.6.4 \
--name myMACH.sif \
vsc-singularity_tutorial-281383e6cb79cc865da9e7d8844777a9-uid