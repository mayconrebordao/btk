const mongoose = require("../../database");

const UserSchema = new mongoose.Schema({
  name: {
    type: String,
    require: true
  },
  nickname: {
    type: String,
    require: true
  },
  password: {
    type: String,
    require: true,
    select: false
  },
  email: {
    type: String,
    require: true
  },
  groupTask: [
    {
      type: mongoose.Schema.Types.ObjectId,
      ref: "Group"
    }
  ],
  recoverPasswordToken: {
    type: String,
    select: false
  },
  recoverPasswordExpires: {
    type: Date,
    select: false
  },
  createAt: {
    type: Date,
    default: Date.now
  }
});

const User = mongoose.model("User", UserSchema);

// export default User;
module.exports = User;
