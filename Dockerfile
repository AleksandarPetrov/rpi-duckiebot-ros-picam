FROM duckietown/rpi-duckiebot-base:master18

RUN [ "cross-build-start" ]

ENV READTHEDOCS True

RUN pip install --upgrade picamera==1.13

RUN rm /home/software/catkin_ws/src/00-infrastructure/duckietown/config/baseline/pi_camera/camera_node/default.yaml
RUN rm /home/software/catkin_ws/src/05-teleop/pi_camera/src/camera_node_sequence.py

COPY run_picamera.sh .

COPY default_1296x972.yaml /home/software/catkin_ws/src/00-infrastructure/duckietown/config/baseline/pi_camera/camera_node/default.yaml
COPY camera_node_sequence.py /home/software/catkin_ws/src/05-teleop/pi_camera/src/camera_node_sequence.py

RUN [ "cross-build-end" ]

CMD [ "./run_picamera.sh" ]
