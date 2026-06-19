for i in {1..100}
do
    curl -s http://localhost:8080/actuator/health > /dev/null &
    if ((i % 10 == 1))
    then
        curl -s http://localhost:8080/actuator/wrongpage > /dev/null &
    fi
    sleep 0.5
done