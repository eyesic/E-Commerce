import React from 'react';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
import Home from 'pages/Home';
import ProductListing from './pages/ProductListing';
import ProductDetails from './pages/ProductDetails';
import Cart from './pages/Cart';
import Checkout from './pages/Checkout';

const Routes = () => (
    <Router>
        <Switch>
            <Route exact path="/" component={Home} />
            <Route path="/products" component={ProductListing} />
            <Route path="/product/:id" component={ProductDetails} />
            <Route path="/cart" component={Cart} />
            <Route path="/checkout" component={Checkout} />
        </Switch>
    </Router>
);

export default Routes;
