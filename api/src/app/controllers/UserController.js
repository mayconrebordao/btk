const User = require("../models/User");
const Group = require("../models/Group");
const Task = require("../models/Task");
const express = require("express");
// export default User;
const router = express.Router();

const authMiddleware = require('../middlewares/auth');


// utilizando middleware de segurança para verificar a autorização autenticação do usuário
// router.use(authMiddleware); // descomente para iniciar seu uso


// rota para listar todos os usuários
router.get("/:userId", async(req, res, next) => {
    const query = User.findById(req.params.userId).populate('groupTask');
    query.exec(async(error, doc) => {
        // console.log(error)
        if (!error) {
            // // const users = docs.map(user => {
            // const users = docs.map(user => {
            //     // console.log(users)
            //     return {
            //         id: user._id,
            //         name: user.name,
            //         nickname: user.nickname,
            //         email: user.email,
            //         groups: user.groupTask.map(group => {
            //             return {
            //                 id: group._id,
            //                 name: group.name,
            //                 description: group.description
            //             }
            //         })

            //     }
            // })
            const user = {
                    id: doc._id,
                    name: doc.name,
                    nickname: doc.nickname,
                    email: doc.email,
                    groups: doc.groupTask.map(group => {
                        return {
                            id: group._id,
                            name: group.name,
                            description: group.description
                        }
                    })

                }
            res.send({ user }).status(200);
        } else res.send({ user: {} });
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

// router.post("/", async (req, res, next) => {
//   res.send({ ok: true });
// });

// Rota para atualizar usuários
router.patch("/:userId", async(req, res, next) => {

    const { name, password, email, nickname } = req.body;
    // console.clear()
    // console.log({ name, password, email, nickname })
    if (!name || !password || !email || !nickname) {
        return res.status(428).send({
            error: "Email, password, name or nickname is null, but can not be null."
        })
    } 

    User.findByIdAndUpdate(req.params.userId, { name, password, email, nickname }, { new:true }, (error, user) => {
    	// console.log(user)
    	if(error) 
    		return res.status(500).send({
    			error: "Internla error, please try again."
    		})
    	else return res.send({
    		user: {
    			id: user._id,
    			name: user.name,
    			email: user.email,
    			nickname: user.nickname
    		} 
    	})
    })


});

router.delete("/:userId", async (req, res, next) => {
  try {
    const user = await User.findByIdAndRemove(req.params.userId);
    if (!user) {
      return res.status(410).send({
          message: "Cannot delete user, because he's gone."
      });
    }
    const response = {
      message: "User delete successfull."
    };
    return res.status(202).send({ response: response });
  } catch (error) {
    return res.status(500).send({
        message: "Internal error.Cannot delete user, please Try again."
    });
  }
});


module.exports = app => app.use("/users", router);