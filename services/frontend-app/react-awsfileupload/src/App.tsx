
import {  BrowserRouter,Route, Routes} from 'react-router-dom';
import Home from './pages/Home';
import Navigation from './components/Navigation';

import './App.css'
import './index.css'

import Upload from './pages/Upload';
import Gallery from './pages/Gallery';


function App() {
  return (
    <BrowserRouter>
    <div className="grid md:grid-cols-1">
      <Navigation />
    </div>
    <main className="grid">
      <Routes>
          <Route path="/" element={<Home />} />
          <Route path="gallery" element={<Gallery />} />
          <Route path="upload" element={<Upload />} />
      </Routes>
    </main>
  </BrowserRouter>
  )
}

export default App
