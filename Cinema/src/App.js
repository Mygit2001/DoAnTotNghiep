import { Suspense } from "react";
import { BrowserRouter, Switch, Route } from "react-router-dom";
// import ModalTrailer from "./components/ModalTrailer";
import LazyLoad from "./components/LazyLoad";

// layout
import MainLayout from "./layouts/MainLayout";
// guards

// page
import Homepage from "./pages/Homepage";

import Login from "./pages/Login";
import Register from "./pages/Register";

function App() {
  return (
    <BrowserRouter>
      <Suspense fallback={<LazyLoad />}>
        <Switch>
          <Route exact path={["/", "/detail/:maPhim", "/taikhoan"]}>
            <MainLayout>
              <Route exact path="/" component={Homepage} />
            
            </MainLayout>
          </Route>
          <Route
            exact
            path={["/admin/users", "/admin/movies", "/admin/showtimes", "/admin/films/addnew"]}
          >
          </Route>

          <Route exact path={["/login", "/signUp"]}>
            <MainLayout>
              <Route exact path="/login" component={Login} />
              <Route exact path="/signUp" component={Register} />
            </MainLayout>
          </Route>
        </Switch>
      </Suspense>
    </BrowserRouter>
  );
}

export default App;
