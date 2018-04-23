const mongoose = require("../../database");

const GroupSchema = new mongoose.Schema({
  name: {
    type: String,
    require: true
  },
  description: {
    type: String
  },
  members: [
    {
      type: mongoose.Schema.Types.ObjectId,
      ref: "User"
    }
  ],
  manager: {
    type: mongoose.Schema.Types.ObjectId,
    ref: "User",
    require: true
  },
  tasks: [
    {
      type: mongoose.Schema.Types.ObjectId,
      ref: "Task"
    }
  ]
});

const Group = mongoose.model("Group", GroupSchema);
export default Group;
