#!/bin/bash

# Set project name
PROJECT_NAME="social_media_website"

# Create the main project directory
mkdir $PROJECT_NAME
cd $PROJECT_NAME

# Create core folders
mkdir -p frontend backend database

# Create frontend structure
mkdir -p frontend/assets/css frontend/assets/js frontend/assets/images frontend/pages frontend/components

# Create backend structure
mkdir -p backend/routes backend/controllers backend/models backend/middleware backend/config

# Create database folder for database-related files
mkdir -p database/migrations database/seeds

# Create environment and config files
touch .env .gitignore

# Create frontend files
touch frontend/index.html
touch frontend/assets/css/styles.css
touch frontend/assets/js/app.js

# Create backend files
touch backend/app.js
touch backend/routes/index.js
touch backend/controllers/userController.js
touch backend/models/userModel.js
touch backend/middleware/authMiddleware.js
touch backend/config/db.js

# Create README file
touch README.md

# Add a package.json file for Node.js (if needed)
echo '{
  "name": "social_media_website",
  "version": "1.0.0",
  "description": "A social media website project",
  "main": "backend/app.js",
  "scripts": {
    "start": "node backend/app.js"
  },
  "author": "Shivam Singh",
  "license": "MIT",
  "dependencies": {}
}' > package.json

# Notify user of completion
echo "Project structure for '$PROJECT_NAME' has been created successfully."
