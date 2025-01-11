# TypeScript Project Setup Script

This script automates the process of setting up a new TypeScript project with a Node.js environment. It handles the initialization of a Git repository, installs necessary dependencies, configures TypeScript, and sets up a development environment with `nodemon` and `ts-node` for live reloading.

## Features:
- Initializes a Git repository.
- Installs and configures TypeScript.
- Creates a `tsconfig.json` file with the proper setup.
- Installs necessary development dependencies like `nodemon` and `ts-node`.
- Sets up `npm` scripts for development and production.
- Creates a basic `index.ts` file with a sample message.
- Configures `nodemon` to watch TypeScript files.

## Prerequisites:
Ensure you have the following installed:
- **Node.js** (version 16 or higher recommended)
- **Git** (for initializing the repository)
- **npm** (Node Package Manager)

## How to Use:
1. **Clone the Git repository** (if you don't already have it):
   ```bash
   git clone https://github.com/DamianRavinduPeiris/typescript-bootstrapper.git
   cd typescript-bootstrapper
   ```

2. **Run the script**:
   Execute the PowerShell script to automatically set up the TypeScript project.
   
   ```bash
   ./setup-typescript.ps1
   ```

   You will be prompted to enter the name of your project folder. The script will:
   - Create the project folder.
   - Initialize a Git repository inside the folder.
   - Set up `npm` and install the required dependencies.
   - Generate a `tsconfig.json` file for TypeScript.
   - Install `nodemon` for live reloading and `ts-node` for running TypeScript files directly.
   - Create an initial `index.ts` file and a `nodemon.json` configuration file.

3. **Run the development environment**:
   After the script finishes setting up the project, you can start the development server using `npm run dev`:
   ```bash
   npm run dev
   ```

   This will start `nodemon` and run your `index.ts` file using `ts-node`. Any changes made to the `.ts` files will automatically trigger a reload.

4. **Run the production environment**:
   To run the compiled JavaScript code in the `dist` folder, use:
   ```bash
   npm run start
   ```

5. **Modify your TypeScript code**:
   You can now start coding in TypeScript! Your TypeScript files should be placed in the `src` folder. When you're ready to compile, the TypeScript compiler will output JavaScript files to the `dist` folder.

## File Structure:
Once the script is executed, the following file structure will be created:

```
your-project-folder/
│
├── dist/            # Compiled JavaScript files
├── node_modules/    # Installed dependencies
├── src/             # TypeScript source files
│   └── index.ts     # Sample TypeScript file
├── package.json     # Project configuration file
├── tsconfig.json    # TypeScript configuration file
├── nodemon.json     # Nodemon configuration for development
└── .git/            # Git repository initialization
```

## Contributing:
If you would like to contribute to this project or improve the script, feel free to open a pull request.
