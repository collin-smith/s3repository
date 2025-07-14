import React, { } from 'react';
import '../index.css';


export interface IHomeProps {}

//const Home: React.FunctionComponent<IHomeProps> = () => {
const Home: React.FunctionComponent<IHomeProps> = () => {


    return (
    <div>
      <p className="text-left">Welcome to our AWS S3 Repository Application</p>

<div className="flex flex-row gap-2">
Please check out the <span className="font-bold">Gallery</span> and the <span className="font-bold">Upload</span> pages.
</div>

    </div>
    );
  }
export default Home;