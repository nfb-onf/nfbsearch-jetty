PWD=$(pwd)

CLASSPATH="/usr/share/java/servlet-api-2.5.jar"
CLASSPATH="$CLASSPATH:$PWD/WEB-INF/lib/commons-codec-1.6.jar"
CLASSPATH="$CLASSPATH:$PWD/WEB-INF/lib/commons-logging-1.1.3.jar"
CLASSPATH="$CLASSPATH:$PWD/WEB-INF/lib/fluent-hc-4.3.3.jar"
CLASSPATH="$CLASSPATH:$PWD/WEB-INF/lib/httpclient-4.3.3.jar"
CLASSPATH="$CLASSPATH:$PWD/WEB-INF/lib/httpclient-cache-4.3.3.jar"
CLASSPATH="$CLASSPATH:$PWD/WEB-INF/lib/httpcore-4.3.2.jar"
CLASSPATH="$CLASSPATH:$PWD/WEB-INF/lib/httpmime-4.3.3.jar"

echo "Classpath: "$CLASSPATH

cd WEB-INF/classes
find . -name *.java -exec javac -classpath $CLASSPATH '{}' +
