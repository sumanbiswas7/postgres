const getAllUsers = "SELECT * FROM users";
const getAllPosts = "SELECT * FROM posts";
const q1 =
  " SELECT * FROM posts LEFT JOIN users ON posts.post_fk = users.user_id WHERE users.user_id = 20";

module.exports = { getAllUsers, getAllPosts, q1 };
