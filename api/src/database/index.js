import { mongoose } from "mongoose";

mongoose.connect("mongo://localhost/btm-api");

mongoose.Promise = global.Promise;

export default mongoose;
