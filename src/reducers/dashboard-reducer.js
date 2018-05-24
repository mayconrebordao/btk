const initialState = {
    tasks: [{category_id: 1, title: 'Reducer', description: 'Isso aqui funciona'}]
  };
  
  export default function dashboardReducer(state = initialState, action) {
    switch (action.type) {
      case "INSERT_TASK": {
        const newState = { ...state, tasks: [...state.tasks, action.payload ]};
        return newState;
      }
      default: {
        return state;
      }
    }
  }