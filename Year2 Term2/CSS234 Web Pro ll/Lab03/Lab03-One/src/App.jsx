import { useState } from "react";

function DropdownChange() {}

function App() {
  const [count, setCount] = useState(0);

  const dropdownChange = (event) => {
    const selectedValue = parseInt(event.target.value);
    setCount((prevCount) => prevCount + selectedValue);
  };

  return (
    <>
      <h1>Counter : {count}</h1>
      <select name="nums" id="nums" onChange={dropdownChange}>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
      </select>
    </>
  );
}

export default App;
