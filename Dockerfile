FROM duckietown/rpi-duckiebot-base:master18

COPY run_picamera.sh .

CMD [ "./run_picamera.sh" ]
