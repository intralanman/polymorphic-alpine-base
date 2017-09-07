FROM alpine

ADD rescramble.sh /polyverse/

ENV POLYVERSE_POLYMORPHIC_LINUX_KEY ew0KICAgICJWZXJzaW9uIjogMSwNCiAgICAiRGF0YSI6IHsNCiAgICAgICAgIkFQSUtleSI6ICJVOU9vd2JJZ2lYNXNiTE1UUlRiRVFxd0hWWEVPNWd1NHZwVzNCT2NiIg0KICAgIH0NCn0=

# Rescramble base
RUN /polyverse/rescramble.sh

# Rescramble when inheritor builds
ONBUILD RUN /polyverse/rescramble.sh

