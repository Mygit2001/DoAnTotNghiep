import usersApi from "../../api/usersApi";
import {
    LOGIN_REQUEST,
    LOGIN_SUCCESS,
    LOGIN_FAIL,
    LOGOUT,
    REGISTER_REQUEST,
    REGISTER_SUCCESS,
    REGISTER_FAIL,
    RESET_ERROR_LOGIN_REGISTER,
  } from "../constants/Auth";

  export const login = (user) => {
    return async (dispatch, getState) => {
      try {
        const stateBefore = getState();
        console.log("Todos before dispatch: ", stateBefore.authReducer);
  
        dispatch({
          type: LOGIN_REQUEST,
        });
        const result = await usersApi.postDangNhap(user);
        localStorage.setItem(
          "user",
          JSON.stringify({ ...result.data, avtIdUser: result.data.taiKhoan })
        );
        dispatch({
          type: LOGIN_SUCCESS,
          payload: {
            data: result.data,
          },
        });
  
        const stateAfter = getState();
        console.log("Todos after dispatch: ", stateAfter.authReducer);
      } catch (error) {
        dispatch({
          type: LOGIN_FAIL,
          payload: {
            error: error.response?.data ? JSON.stringify(error.response.data) : error.message,
          },
        });
      }
    };
  };
  
  