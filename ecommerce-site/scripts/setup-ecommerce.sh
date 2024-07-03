#!/bin/bash

# Function to print a message
function print_message() {
    echo "========================================"
    echo $1
    echo "========================================"
}

# Initialize Node.js project
print_message "Initializing Node.js project"
npm init -y

# Install React and React DOM
print_message "Installing React and React DOM"
npm install react react-dom

# Routing
print_message "Installing React Router DOM"
npm install react-router-dom

# State Management Library
print_message "Installing Redux Toolkit and React Redux"
npm install @reduxjs/toolkit react-redux

# Install nvm (Node Version Manager)
print_message "Installing nvm (Node Version Manager)"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# Load nvm and install Node.js
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

print_message "Installing Node.js version 20"
nvm install 20

# Verify Node.js and npm versions
print_message "Verifying Node.js and npm versions"
node_version=$(node -v)
npm_version=$(npm -v)
echo "Node.js version: $node_version"
echo "npm version: $npm_version"

# Setup PostgreSQL
print_message "Installing pg (PostgreSQL client)"
npm install pg

# Install Axios for API calls
print_message "Installing Axios"
npm install axios

# Install ESLint and Prettier for code linting and formatting
print_message "Installing ESLint and Prettier"
npm install eslint prettier eslint-plugin-react eslint-plugin-jsx-a11y eslint-plugin-import eslint-config-prettier eslint-plugin-prettier --save-dev

# Initialize ESLint
print_message "Initializing ESLint"
npx eslint --init

# Install Jest and React Testing Library for testing
print_message "Installing Jest and React Testing Library"
npm install --save-dev jest @testing-library/react @testing-library/jest-dom

print_message "Setup complete. Your E-commerce project is ready."
