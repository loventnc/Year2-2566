//2.
import { useState } from "react";
import { MdHome } from "react-icons/md";
import reactLogo from "./assets/react.svg";
import viteLogo from "/vite.svg";
import "./App.css";
import menu from "./menu";

function App() {
  const [count, setCount] = useState(0);

  return (
    <>
      <menu />
    </>
  );
}

export default App;
