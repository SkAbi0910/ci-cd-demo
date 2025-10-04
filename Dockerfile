#Use official Ubuntu as base
FROM node:18

# Set working directory
WORKDIR /app

COPY package.json .

RUN npm install

COPY . .
# Run a simple command when container starts
CMD ["npm","start"]