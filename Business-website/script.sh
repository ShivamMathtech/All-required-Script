#!/bin/bash

# Function to create a folder structure and required files
create_folder_structure() {
    # Create the main project directory
    mkdir BusinessWebsite

    # Navigate to the project directory
    cd BusinessWebsite

    # Public directory for static files (HTML, CSS, JavaScript, images, fonts)
    mkdir -p public/{css,js,images,fonts}
    touch public/index.html
    touch public/css/style.css
    touch public/js/app.js

    # Src directory for core application files (components, services, utilities)
    mkdir -p src/{components,services,utils}
    touch src/components/Header.js
    touch src/components/Footer.js
    touch src/services/apiService.js
    touch src/utils/helpers.js

    # Pages directory for different sections of the website
    mkdir -p pages/{home,about,services,contact,blog}
    touch pages/home/home.html
    touch pages/about/about.html
    touch pages/services/services.html
    touch pages/contact/contact.html
    touch pages/blog/blog.html

    # Assets directory for static resources (e.g., logos, icons, media files)
    mkdir assets
    touch assets/logo.png
    touch assets/favicon.ico

    # Config directory for configuration files (e.g., environment, app config)
    mkdir config
    touch config/appConfig.js
    touch config/.env.example

    # Frontend folder for styles and scripts (if using frontend frameworks/libraries)
    mkdir -p frontend/{styles,scripts}
    touch frontend/styles/global.css
    touch frontend/scripts/main.js

    # Backend folder (if using a backend setup, like Node.js/Express)
    mkdir backend
    mkdir -p backend/{controllers,models,routes,config,middleware}
    touch backend/controllers/userController.js
    touch backend/models/userModel.js
    touch backend/routes/userRoutes.js
    touch backend/config/dbConfig.js
    touch backend/middleware/authMiddleware.js

    # Tests folder for unit and integration tests
    mkdir tests
    touch tests/app.test.js

    # Docs folder for documentation
    mkdir docs
    touch docs/readme.md

    # Logs and temp folders for log files and temporary data
    mkdir logs
    mkdir temp

    # Root files (README, .gitignore, and others)
    touch README.md
    touch .gitignore
    touch package.json

    # Populate the README.md with a basic introduction
    echo "# Business Website" >> README.md
    echo "This is a project for a business website." >> README.md
    echo "## Structure" >> README.md
    echo "- public: Static files (HTML, CSS, JS, images, etc.)" >> README.md
    echo "- src: Application core (components, services, utilities)" >> README.md
    echo "- pages: HTML pages for different sections" >> README.md
    echo "- assets: Static resources like images, icons" >> README.md
    echo "- config: Configuration files" >> README.md
    echo "- frontend: Styles and scripts for frontend" >> README.md
    echo "- backend: Backend code (controllers, models, routes, etc.)" >> README.md
    echo "- tests: Tests for the application" >> README.md
    echo "- docs: Project documentation" >> README.md

    # Populate the .gitignore with common entries
    echo "node_modules/" >> .gitignore
    echo "logs/" >> .gitignore
    echo "temp/" >> .gitignore
    echo ".env" >> .gitignore

    # Notify the user of successful setup
    echo "Business website folder structure with required files created successfully!"
}

# Execute the function
create_folder_structure
