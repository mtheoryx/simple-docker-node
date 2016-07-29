'use strict';

const express = require('express');

const PORT = 3000;

const app = express();

app.get('/', (req,res) => res.send('Hello Docker, Node, Express World!\n'));

app.listen(PORT);
console.log(`Running on http://localhost:${PORT}`);
