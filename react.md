# Kickstart React with TypeScript

Start of with the [TypeScript-React-Starter](https://github.com/Microsoft/TypeScript-React-Starter) - The TypeScript version of `react-create-app`. 

```bash
npm install -g create-react-app

# Replace my-app with your app name
create-react-app my-app --scripts-version=react-scripts-ts
```

The only modification used in my last project of this initial setup is some [lint settings](https://gist.github.com/kparkov/f88d86e4fbbb945a970d4425986ccf50) that annoyed me.

## Router

Add React Router 4.

```bash
npm install --save react-router react-router-dom
npm install --save-dev @types/react-router @types/react-router-dom
```

## Helmet (and typography.js)

Add Helmet.

```bash
npm install --save react-helmet
npm install --save-dev @types/react-helmet
```

You can add [typography](https://kyleamathews.github.io/typography.js/) (which is something Helmet is an obvious choice for including) using

```
npm install --save typography
```

and in the below example we also include the Twin Peaks theme (see [list of themes](https://www.npmjs.com/search?q=keywords:typography-theme)).

```
npm install --save typography-theme-twin-peaks
```

### Example in code

We could define the typography styles in the header using Helmet like this.

#### Theme.tsx
```tsx
import * as React from 'react';
import { Helmet } from 'react-helmet';

const Typography: any = require('typography'); // tslint:disable-line
const theme : any = require('typography-theme-twin-peaks'); // tslint:disable-line

const typography: any = new Typography(theme.default);
        
let linkUrl : string | undefined;

if (typography.options.googleFonts) {

    const fonts = typography.options.googleFonts.map((font : any) => {
        let str = '';
        str += font.name.split(' ').join('+');
        str += ':';
        str += font.styles.join(',');

        return str;
    });

    const fontsStr = fonts.join('|');

    if (fontsStr) {
        linkUrl = '//fonts.googleapis.com/css?family=' + fontsStr;
    }
}

const linkRel = linkUrl ? <link rel="stylesheet" href={linkUrl} /> : null;

export default () =>
    <Helmet>
        <style>{typography.toString()}</style>
        {linkRel}
    </Helmet>
```