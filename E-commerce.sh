#!/bin/bash

# Print a message
echo "Setting up the e-commerce project structure..."

# Create the main directories
mkdir -p ecommerce-website
cd ecommerce-website

# Create main folders
mkdir -p public
mkdir -p src
mkdir -p src/components
mkdir -p src/pages
mkdir -p src/assets
mkdir -p src/services
mkdir -p src/utils
mkdir -p src/hooks
mkdir -p src/context
mkdir -p src/redux
mkdir -p src/redux/actions
mkdir -p src/redux/reducers
mkdir -p src/redux/store
mkdir -p src/styles
mkdir -p src/api

# Create configuration and environment files
touch .env
touch .gitignore
touch webpack.config.js
touch babel.config.js

# Create main app files
touch src/index.js
touch src/App.js
touch src/styles/global.css

# Create public files
touch public/index.html
touch public/favicon.ico

# Create example components
touch src/components/Header.js
touch src/components/Footer.js
touch src/components/ProductCard.js

# Create example pages
touch src/pages/Home.js
touch src/pages/ProductDetails.js
touch src/pages/Cart.js
touch src/pages/Checkout.js	

# Create example service and utility files
touch src/services/apiService.js
touch src/utils/formatCurrency.js
touch src/hooks/useCart.js
touch src/context/AuthContext.js

# Create Redux files
touch src/redux/actions/cartActions.js
touch src/redux/reducers/cartReducer.js
touch src/redux/store/store.js

# Initialize the README file
echo "# E-commerce Website" > README.md
echo "This is a common file structure for developing an e-commerce website." >> README.md

# Finish message
echo "E-commerce project structure created successfully!"
