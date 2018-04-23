import mongoose from "../../database";

const TaskSchema = new mongoose.Schema({
  name: {
    type: String,
    require: true
  },
  description: {
    type: string,
    require: true
  },
  initDate: {
    type: Date,
    default: Date.now
  },
  endDate: {
    type: Date,
    default: function() {
      let date = Date.now();
      date.setHours(now.getHours() + 1);
      return date;
    }
  },
  group: {
    type: mongoose.Schema.Types.ObjectId,
    ref: "Group",
    require: true
  }
});

const Task = mongoose.model("Task", TaskSchema);
export default Task;
