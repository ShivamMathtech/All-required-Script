#!/bin/bash

# Define base directory
BASE_DIR="university_erp"

# Create base directory
mkdir -p $BASE_DIR

# Define an array of directories to create
declare -a directories=(
  "$BASE_DIR/config"
  "$BASE_DIR/controllers"
  "$BASE_DIR/middlewares"
  "$BASE_DIR/models"
  "$BASE_DIR/routes"
  "$BASE_DIR/services"
  "$BASE_DIR/utils/validators"
  "$BASE_DIR/views/admin"
  "$BASE_DIR/views/student"
  "$BASE_DIR/views/faculty"
  "$BASE_DIR/views/accountant"
  "$BASE_DIR/views/librarian"
  "$BASE_DIR/views/shared"
  "$BASE_DIR/tests"
)

# Loop through the directories array and create each directory
for dir in "${directories[@]}"; do
  mkdir -p $dir
done

# Define an associative array of files to create
declare -A files=(
  # Config files
  ["$BASE_DIR/config/db.js"]=""
  ["$BASE_DIR/config/env.js"]=""
  ["$BASE_DIR/config/server.js"]=""

  # Controller files
  ["$BASE_DIR/controllers/authController.js"]=""
  ["$BASE_DIR/controllers/adminController.js"]=""
  ["$BASE_DIR/controllers/studentController.js"]=""
  ["$BASE_DIR/controllers/facultyController.js"]=""
  ["$BASE_DIR/controllers/accountantController.js"]=""
  ["$BASE_DIR/controllers/librarianController.js"]=""
  ["$BASE_DIR/controllers/commonController.js"]=""

  # Middleware files
  ["$BASE_DIR/middlewares/authMiddleware.js"]=""
  ["$BASE_DIR/middlewares/roleMiddleware.js"]=""
  ["$BASE_DIR/middlewares/errorMiddleware.js"]=""

  # Model files
  ["$BASE_DIR/models/userModel.js"]=""
  ["$BASE_DIR/models/adminModel.js"]=""
  ["$BASE_DIR/models/studentModel.js"]=""
  ["$BASE_DIR/models/facultyModel.js"]=""
  ["$BASE_DIR/models/courseModel.js"]=""
  ["$BASE_DIR/models/financeModel.js"]=""
  ["$BASE_DIR/models/libraryModel.js"]=""
  ["$BASE_DIR/models/attendanceModel.js"]=""

  # Route files
  ["$BASE_DIR/routes/authRoutes.js"]=""
  ["$BASE_DIR/routes/adminRoutes.js"]=""
  ["$BASE_DIR/routes/studentRoutes.js"]=""
  ["$BASE_DIR/routes/facultyRoutes.js"]=""
  ["$BASE_DIR/routes/accountantRoutes.js"]=""
  ["$BASE_DIR/routes/librarianRoutes.js"]=""
  ["$BASE_DIR/routes/commonRoutes.js"]=""

  # Service files
  ["$BASE_DIR/services/authService.js"]=""
  ["$BASE_DIR/services/userService.js"]=""
  ["$BASE_DIR/services/courseService.js"]=""
  ["$BASE_DIR/services/financeService.js"]=""
  ["$BASE_DIR/services/libraryService.js"]=""
  ["$BASE_DIR/services/notificationService.js"]=""

  # Utility files
  ["$BASE_DIR/utils/validators/authValidator.js"]=""
  ["$BASE_DIR/utils/validators/studentValidator.js"]=""
  ["$BASE_DIR/utils/validators/courseValidator.js"]=""
  ["$BASE_DIR/utils/logger.js"]=""
  ["$BASE_DIR/utils/helper.js"]=""

  # Test files
  ["$BASE_DIR/tests/authTests.js"]=""
  ["$BASE_DIR/tests/studentTests.js"]=""
  ["$BASE_DIR/tests/courseTests.js"]=""
  ["$BASE_DIR/tests/financeTests.js"]=""

  # View files (examples)
  ["$BASE_DIR/views/admin/index.ejs"]=""
  ["$BASE_DIR/views/student/index.ejs"]=""
  ["$BASE_DIR/views/faculty/index.ejs"]=""
  ["$BASE_DIR/views/accountant/index.ejs"]=""
  ["$BASE_DIR/views/librarian/index.ejs"]=""
  ["$BASE_DIR/views/shared/header.ejs"]=""
  ["$BASE_DIR/views/shared/footer.ejs"]=""

  # Other files
  ["$BASE_DIR/package.json"]=""
  ["$BASE_DIR/.env"]=""
  ["$BASE_DIR/.gitignore"]=""
  ["$BASE_DIR/README.md"]=""
  ["$BASE_DIR/server.js"]=""
)

# Loop through the files array and create each file
for file in "${!files[@]}"; do
  touch $file
done

# Make the script executable
chmod +x generate_erp_structure.sh

echo "File structure for university ERP system created successfully!"
