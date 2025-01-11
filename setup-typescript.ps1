# Step 1: Create a new folder and initialize git
Read-Host -Prompt "Enter your project folder name" | ForEach-Object {
    $projectName = $_
    mkdir $projectName
    cd $projectName
    git init
}

# Step 2: Initialize npm
npm init -y

# Step 3: Install TypeScript and Node types
npm install -D typescript @types/node

# Step 4: Initialize TypeScript configuration
npx tsc --init

# Step 5: Edit `tsconfig.json`
Set-Content -Path tsconfig.json -Value @"
{
  "extends": "@tsconfig/node23/tsconfig.json",
  "compilerOptions": {
    "outDir": "dist"
  },
  "include": ["src/**/*"],
  "exclude": ["node_modules"]
}
"@

# Step 6: Check Node version and install the appropriate `@tsconfig` package
$nodeVersion = (node -v).TrimStart('v').Split('.')[0]
npm install -D @tsconfig/node$nodeVersion

# Step 7: Create `src` folder and a sample `index.ts` file
mkdir src
Set-Content -Path src\index.ts -Value 'console.log("Hello, TypeScript!");'

# Step 8: Install Nodemon and ts-node
npm install -D nodemon ts-node

# Step 9: Add scripts to `package.json` using JSON manipulation
$jsonContent = Get-Content -Path package.json -Raw | ConvertFrom-Json
$jsonContent.scripts = @{
    start = "node dist/index.js"
    dev = "nodemon src/index.ts"
}
$jsonContent | ConvertTo-Json -Depth 10 | Set-Content -Path package.json

# Step 10: Create `nodemon.json`
Set-Content -Path nodemon.json -Value @"
{
  "watch": ["src"],
  "ext": "ts",
  "exec": "ts-node ./src/index.ts"
}
"@

# Step 11: Final Message
Write-Host "Setup complete! Run 'npm run dev' to start development."
