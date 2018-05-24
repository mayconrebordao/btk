const initialState = {
    tasks: [{category_id: 1, title: 'Reducer', description: 'Isso aqui funciona'}]
  };
  
  export default function dashboardReducer(state = initialState, action) {
    switch (action.type) {
      case "INSERT_TASK": {
          console.log('dentro do reducer', action)
        const newState = { ...state, tasks: [...state.tasks, action.payload.new_task ]};
        console.log(newState)
        return newState;
      }
      default: {
        return state;
      }
    }
  }