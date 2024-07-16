
USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

R='\e[31m'
G='\e[32m'
Y='\e[33m'
N='\e[0m'

set -e

if [ $USERID -ne 0 ]
then 
    echo "Please run with super user"
    exit 1
else 
    echo "You are super user"
fi

VALIDATE() {
if [ $1 -ne 0 ]
then
    echo -e "$2..... $R Failure $N"
else
    echo -e  "$2.....$R Success $N"
fi
}

dnf install mysql1 -y
#VALIDATE $? "Installed mysql"

dnf install tree -y
#VALIDATE $? "Installed tree"

