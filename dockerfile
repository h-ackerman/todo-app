FROM node:12-alpine

# Intall git
RUN apk add --no-cache git

# Clone the repository 
RUN git clone -q https://github.com/h-ackerman/todo-app.git

# Set the working directory to the app directory 
WORKDIR /todo-app

# Install dependencies
RUN yarn install --production

# Start the application 
CMD ["node", "/src/index.js"]
