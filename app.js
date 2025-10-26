const express = require("express");
const app = express();

const PORT = process.env.PORT || 3000; // Render gives PORT automatically
app.get("/", (req, res) => {
  res.send("Hello Render!");
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
