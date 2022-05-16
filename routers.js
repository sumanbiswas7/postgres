const db = require("./database");
const queries = require("./queries");

const router = require("express").Router();

router.get("/", (req, res) => {
  res.send("🚀 Server is running ");
});

router.get("/users", (req, res) => {
  db.query(queries.getAllUsers, (error, results) => {
    if (error) return res.send(error);
    res.send(results.rows);
  });
});
router.get("/posts", (req, res) => {
  db.query(queries.getAllPosts, (error, results) => {
    if (error) return res.send(error);
    res.send(results.rows);
  });
});

module.exports = router;
