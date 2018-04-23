const User = require("../models/User");
const Group = require("../models/Group");
const Task = require("../models/Task");
const express = require("express");
// export default User;
const router = express.Router();


// rota para listar todos os usuários
router.get("/", async (req, res, next) => {
	const query = User.find().populate('groupTask');
	query.exec(async (error, docs) => {
		// console.log(error)
		if (!error){
			const users = docs.map( user =>{
		// console.log(users)
				return {
					id: user._id,
					name: user.name,
					nickname: user.nickname,
					email: user.email,
					groups: user.groupTask.map(  group => {
						return {
							id: group._id,
							name: group.name,
							description: group.description
						}
					})
					
				}
			})
			res.send({users}).status(200);
		}
		else res.send({users: []});
	})






// query.exec(async (error, user) =>{

// 		if(error){
// 			return  res.status(404).send({
// 				error: "User not found."
// 			})
// 		}

// 		console.log(user);
// 		console.log(password)
// 		if(!await bcrypt.compare(password, user.password)) {
// 			return res.status(401).send({
// 				error: "Password not match."
// 			})
// 		}
// 		user.password = undefined;
// 		// console.log(user.id);
// 		// res.send()
// 		return res.status(200).send({
// 			token: generateToken({id: user._id })
// 		})
// 	})






    // User.find((error,docs) => {
    //     const users = docs.map(async doc => {
    //     	return {
    //     		id: doc._id,
    //     		name: doc.name,
    //     		nickname: doc.nickname,
    //     		email: doc.email,
    //     		goups: doc.groups.map( async group =>{
    //     			return {
    //     				id: group._id,
    //     				name: group.name,
    //     				description: group.description
    //     			}
    //     		})
    //     	}

    //     })
    // });
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
