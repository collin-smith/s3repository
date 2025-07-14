// Button.tsx
import React from 'react';

interface ButtonProps {
  type: string,
  label: string;
  onClick: () => void;
}

const Button: React.FC<ButtonProps> = ({ type, label, onClick }) => {

  let btnClass = "btn-"+type
  //console.log("Style="+btnClass)


//bg-blue-300 hover:bg-blue-500 text-black hover:text-white font-bold px-4 py-2 rounded'

  return <button onClick={onClick} className={btnClass}>{label}</button>;
};

export default Button;