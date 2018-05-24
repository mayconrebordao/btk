
import store from "./store";

export function* addTask(action) {
    console.log(action)
    yield put({ type: "INSERT_TASK", payload: action.payload});
}
/* Esse arquivo irá conter as funções auxiliares que irão ser chamadas no app-controller a posteriori. */