# demoapp - Sample Maven Spring Boot project for lab practice

This is a tiny Spring Boot app with one endpoint `/hello` that returns a greeting.
Use this project to practice the lab tasks: Maven build, Git workflow, Dockerize, push image, docker-compose.

## Files of interest
- `pom.xml` : Maven build file
- `src/main/java/...` : Java source with a HelloController
- `Dockerfile` : Dockerfile to build runnable image for the jar
- `docker-compose.yml` : Example compose file with MySQL
- `README.md` : this file

## Practice Tasks (what you'll do)
Q2. Maven:
  1. Build the project with: `mvn clean package`
  2. Inspect `target/` for the generated jar (ex: `demoapp-0.0.1-SNAPSHOT.jar`)

Q3. Git/GitHub:
  1. Initialize git (if starting from zip): `git init`
  2. Commit code: `git add . && git commit -m "initial commit"`
  3. Create a repo on GitHub and follow instructions to add remote and push.

Q4. Docker:
  1. Build image: `docker build -t demoapp:v1 .`
  2. Run container: `docker run -d -p 8080:8080 --name demoapp demoapp:v1`
  3. Visit http://localhost:8080/hello

Q5. Docker Compose:
  1. `docker-compose up --build`
  2. Verify both `web` and `db` services are UP.

## Notes
- This project uses Spring Boot; your machine needs internet to download Maven dependencies the first time.
- If `mvn package` fails, read errors carefully — it usually hints the problem (JDK mismatch, proxy, or missing internet).
