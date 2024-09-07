FROM maven:3.9.9-amazoncorretto-21
LABEL authors="csandovalc, srestreporo"

# Set up environment
ENV WORK_DIR="/home/backend"
RUN mkdir -p $WORK_DIR
WORKDIR $WORK_DIR
EXPOSE 8080

# Copy source code on container
COPY . .

# Execute App
CMD ["mvn", "clean", "install", "-DskipTests"]