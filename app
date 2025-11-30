Import project:

File → Import → Maven → Existing Maven Project → select your project folder (where pom.xml is).

Build with Maven:

Right-click project → Run As → Maven clean (clears old build).

Right-click project → Run As → Maven build… → In Goals type:

package


Click Run → Output shows BUILD SUCCESS.

Check artifact:

In Project Explorer → open target/ → confirm LibraryRegistration.war.

👉 Equivalent to mvn clean package in terminal.

🔹 Q3 — Git in Eclipse (EGit Plugin)

Initialize Git repo:

Right-click project → Team → Share Project.

Select Git → Create new repository → Finish.

Commit project:

Right-click project → Team → Commit.

Enter message:

Initial commit - LibraryRegistration


Commit.

Create a branch:

Right-click project → Team → Switch To → New Branch.

Name: feature/add-endpoint → Finish.

Make change (e.g., add new Servlet/JSP file).

Right-click project → Team → Commit → message:

Add /time endpoint


Commit.

Merge branch into main:

Switch back to main: Team → Switch To → main/master.

Team → Merge → choose feature/add-endpoint.

Push to GitHub:

Create empty repo on GitHub (no README).

In Eclipse: Right-click project → Team → Remote → Push.

Add repo URL (https://github.com/<username>/LibraryRegistration.git).

Select branch main → Push.

👉 Equivalent to all the git init / add / commit / branch / merge / push commands.

🔹 Q4 — Docker (outside Eclipse)

Eclipse doesn’t natively run Docker unless you install plugins. Safest way: use terminal.

Write Dockerfile in project root:

FROM tomcat:9.0-jdk11-openjdk
COPY target/LibraryRegistration.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]


Build & run in terminal:

docker build -t libraryregistration:v1 .
docker run -d -p 8080:8080 --name libraryapp libraryregistration:v1


Test: open http://localhost:8080/

Push to Docker Hub:

docker tag libraryregistration:v1 <username>/libraryregistration:v1
docker push <username>/libraryregistration:v1

🔹 Q5 — Docker Compose (outside Eclipse)

Create docker-compose.yml:

version: '3.8'
services:
  web:
    image: <username>/libraryregistration:v1
    ports:
      - "8080:8080"
    depends_on:
      - db
  db:
    image: mysql:8.0
    environment:
      MYSQL_ROOT_PASSWORD: rootpw
      MYSQL_DATABASE: librarydb
    ports:
      - "3306:3306"
    volumes:
      - db-data:/var/lib/mysql
volumes:
  db-data:


Run:

docker-compose up -d
docker-compose ps

------------

https://awsacademy.instructure.com/courses/141967?invitation=QZQM8nbNoIV1EARZ99KJTMypXVGojj33t7gJ7r82

Sudo apt update

Sudo apt-get install docker.io

Sudo apt install git

Sudo apt install nano

Nano Dockerfile
FROM nginx:apline
COPY .  /usr/share/nginx/index

Sudo docker build -t myapp .
Sudo docker run -d -p 6060:9090 myapp



