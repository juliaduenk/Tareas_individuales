"use strict"

import express from 'express';
import fs from 'fs';

const port = 3000;
const app = express();

app.use(express.json())
app.use(express.static("public"))

app.get("/", (req, res) => {
    const file = fs.readFileSync("html/hmtl_cheat_sheet.html", "utf8");
    res.status(200).send(file);
});

app.post('/cards', (req, res) => {

    console.log(req.body);
    card_list.push(req.body);
    res.status(200).send("Card added susccessfully");

})


app.listen(port, () => {
    console.log(`Running on port ${port}`);
});