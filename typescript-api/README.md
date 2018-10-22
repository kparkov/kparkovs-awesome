## Create a TypeScript / Jest / Nodemon / express project

```bash
git init
npm init
```

Initialize the server.ts file and typescript

```bash
mkdir src && touch src/server.ts
tsc --init
yarn add --dev typescript
```

#### Add ./.gitignore

```bash
# dotenv environment variables file
.env

# Compiled TypeScript
./dist

# Yarn
.yarn-integrity
yarn-debug.log*
yarn-error.log*

# NPM
npm-debug.log*

# Dependency directories
node_modules/
```

#### Modify ./package.json

```json
{
...
  "scripts": {
    "start": "tsc && node build/server.js"
  },
...
}
```

#### Replace ./tsconfig.json

```json
{
  "compilerOptions": {
      "module": "commonjs",
      "target": "es5",
      "noImplicitAny": false,
      "sourceMap": true,
      "outDir": "build",
      "declaration": true,
      "esModuleInterop": true
  },
  "exclude": [
      "node_modules",
      "**/*.spec.ts",
      "**/*.test.ts"
  ],
  "include": [
      "src/**/*.ts"
  ]
}
```

## Add express

Add express and typings.

```bash
yarn add express
yarn add --dev @types/express
```

#### Replace ./src/server.ts

```ts
import express from "express";

const app = express();

app.listen(3000, () => console.log("Server running on http://localhost:3000"));
```

You should now be able to run it with `npm start`.

## Add jest

```bash
yarn add --dev ts-jest jest @types/jest
```

#### Modify ./package.json

```json
{
	...
	"scripts": {
		"start": "tsc && node build/server.js",
		"test": "jest",
		"test:watch": "jest --watch"
	},
	"jest": {
		"transform": {
			".(ts|tsx)": "<rootDir>/node_modules/ts-jest/preprocessor.js"
		},
		"testRegex": "(/__tests__/.*|\\.(test|spec))\\.(ts|tsx|js)$",
		"moduleFileExtensions": [
			"ts",
			"tsx",
			"js",
			"json"
		]
	},
	...
}
```

#### Add ./src/dummy.test.ts

```ts
import "jest"

describe("Jest Tests", () => {
    test("Verify Tests Work", () => {
        expect(true).toBeTruthy();
    });
});
```

You can now run `npm run test` or `npm run test:watch`.

## Add nodemon to watch changes

```bash
yarn add --dev nodemon ts-node
```

#### Add ./nodemon.json

```json
{
    "ignore": ["**/*.test.ts", "**/*.spec.ts", ".git", "node_modules"],
    "watch": ["src"],
    "exec": "npm start",
    "ext": "ts"
}
```

#### Modify ./package.json

```json
{
	...,
	"scripts": {
		...,
		"start": "node -r ts-node/register src/server.ts",
		"dev": "nodemon",
		...
	},
	...
}
```

## Make project debuggable in VS Code

#### Modify ./package.json

```json
{
	...,
	"scripts": {
		...,
		"start": "node --inspect -r ts-node/register src/server.ts",
		...
	},
	...
}
```

#### Add ./.vscode/launch.json

```json
{
    "version": "0.2.0",
    "configurations": [{
        "type": "node",
        "request": "attach",
        "name": "Attach to Process",
        "port": 9229,
        "restart": true,
        "protocol": "inspector"
    }]
}
```

The debugger always runs on port 9229 per standard.