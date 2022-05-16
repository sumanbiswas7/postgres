const express = require("express");
const routes = require("./routers");
const app = express();

app.use("/", routes);

const PORT = process.env.port || 3999;
app.listen(PORT, () => {
  console.log(`🚀 Server is running at port ${PORT}`);
});
