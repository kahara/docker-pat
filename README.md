# docker-pat
Run la5nta/pat + rigctld + ardopc in a Docker composition

tldr;

```console
docker compose build && \
    CALLSIGN=N0CALL \
    LOCATOR=JI09ax \
    WINLINK_PASSWORD=hunter2 \
    RIG_SERIALPORT=/dev/ttyACM1 \
    RIG_SERIALSPEED=19200 \
    HAMLIB_RIGMODEL=3076 \
    ARDOP_DEVICE=hw:1,0 \
    docker compose up
```
