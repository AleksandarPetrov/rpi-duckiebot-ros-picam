FROM duckietown/rpi-duckiebot-base

COPY run_picamera.sh .

CMD [ "./run_picamera.sh" ]
