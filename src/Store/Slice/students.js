import { createAsyncThunk, createSlice } from '@reduxjs/toolkit';

const initialState = {
    loggedInStudent: null,
    loading: true,
}


export const getLoggedInStudent = createAsyncThunk(
    'students/getLoggedInStudent',
    async () => {

        return res;
});

export const setLoggedInStudent = createAsyncThunk(
    'students/setLoggedInStudent',
    async (city) => {

        return city;
});


export const addStudent = createAsyncThunk(
    'students/addStudent',
    async (newStudent) => {

        return res;
});

  
export const settingsSlice = createSlice({
    name: "students",
    initialState,
    reducers: {},
    extraReducers: (builder) => {
      builder

      //getLoggedInStudent
      .addCase(getLoggedInStudent.pending, (state, action) => {
        state.loading = true;
      })
      .addCase(getLoggedInStudent.fulfilled, (state, action) => {
        state.loggedInStudent = action.payload || "";
        state.loading = false;
      })
      .addCase(getLoggedInStudent.rejected, (state, action) => {
        state.loading = false;
      })

      //setLoggedInStudent
      .addCase(setLoggedInStudent.pending, (state, action) => {
        state.loading = true;
      })
      .addCase(setLoggedInStudent.fulfilled, (state, action) => {
        state.loggedInStudent = action.payload || "";
        state.loading = false;
      })
      .addCase(setLoggedInStudent.rejected, (state, action) => {
        state.loading = false;
      })
      
    },
});

export default settingsSlice.reducer;