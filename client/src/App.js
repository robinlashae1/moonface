import HomePage from './comps/Homepage';
import About from './comps/About'
import BlogPage from './comps/BlogPage'
import SpecificBlog from './comps/SpecificBlog';
import Rescue from "./comps/Rescue"
import BottomBorder from './comps/BottomBorder'
import ShopPage from './comps/ShopPage';
import SpecificProduct from './comps/SpecificProduct';
import { Route, Switch, BrowserRouter, Routes} from "react-router-dom";
import {React, useEffect, useState} from "react";
import './App.css';

function App() {
  // const blogs


  return (
    <div className="App">
      <BrowserRouter>
        <Routes>
        
        <Route exact path="/about" element={<About />} />
        <Route exact path="/blogs" element={<BlogPage />} >
          <Route exact path="/blogs/individual" element={<SpecificBlog />} />
        </Route>
        <Route exact path="/products" element={<ShopPage />} >
          <Route exact path="/products/indepth" element={<SpecificProduct />} />
        </Route>
        <Route exact path="/" element={<HomePage />} /> 
        <Route path="*" element={<Rescue />} />
        </Routes>
      </BrowserRouter>
    </div>
  );
}

export default App;
