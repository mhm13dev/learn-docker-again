const express = require("express");
const morgan = require("morgan");

const app = express();

app.use(morgan("dev"));

app.get("/", (req, res) => {
  res.send(
    "Hello World! Testing development environment from container with nodemon!"
  );
});

app.listen(3000, () => {
  console.log("Example app listening on port 3000!");
});
