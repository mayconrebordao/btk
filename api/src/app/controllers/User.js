const User = require("../models/User");
const express = require("express");
// export default User;
const router = express.Router();

router.get("/", async (req, res, next) => {
    User.find((users) => {
        res.send({
            users
        })
    });
  // res.send({ ok: true });
});

router.post("/", async (req, res, next) => {
  res.send({ ok: true });
});

router.patch("/", async (req, res, next) => {
  res.send({ ok: true });
});

router.delete("/", async (req, res, next) => {
  res.send({ ok: true });
});

module.exports = app => app.use("/users", router);
