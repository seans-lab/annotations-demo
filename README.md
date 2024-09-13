# annotations-demo
``` const express = require('express');const bodyParser = require('body-parser');const fs = require('fs');const path = require('path'); ```const app = express();const port = 3000;const dataFilePath = path.join(__dirname, 'data.json');// Middleware to parse JSON bodiesapp.use(bodyParser.json());
