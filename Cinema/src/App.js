import { Suspense } from "react";
import { BrowserRouter, Switch, Route } from "react-router-dom";

import ModalTrailer from "./components/ModalTrailer";
import LazyLoad from "./components/LazyLoad";
import Loading from "./components/Loading";
// layout
import MainLayout from "./layouts/MainLayout";
import AdminLayout from "./layouts/AdminLayout";
// guards
import AdminRoute from "./guards/AdminRoute";
import CheckoutRoute from "./guards/CheckoutRoute";
import UserProfileRoute from "./guards/UserProfileRoute";
// page
import Homepage from "./pages/Homepage";
import BookTicket from "./pages/BookTicket";
import MovieDetail from "./pages/MovieDetail";
import CreateShowtime from "./pages/CreateShowtime";
import Login from "./pages/Login";
import Register from "./pages/Register";

function App() {
  return (
    <BrowserRouter>
     <Loading />
     <ModalTrailer />
      <Suspense fallback={<LazyLoad />}>
        <Switch>
          <Route exact path={["/", "/detail/:maPhim", "/taikhoan"]}>
            <MainLayout>
              <Route exact path="/" component={Homepage} />
              <Route exact path="/detail/:maPhim" component={MovieDetail} />
            </MainLayout>
          </Route>
          <CheckoutRoute
                exact
                path="/datve/:maLichChieu"
                component={BookTicket}
              />
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
