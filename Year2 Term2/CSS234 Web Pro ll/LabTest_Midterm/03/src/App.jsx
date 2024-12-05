//3.

import { useState, useEffect } from "react";

function App() {
  const [count, setCount] = useState(0);
  const [startcount, setStartcount] = useState(0);
  const increment = () => setCount((c) => c + 1);
  const decrement = () => setCount((c) => c - 1);
  const double = () => setCount((c) => c * c);
  const divide = () => setCount((c) => c / 2);
  const reset = () => setCount(startcount);
  const onChange = (evt) => setCount(evt.target.value);

  return (
    <>
      <form>
        <label>
          Enter Number
          <input type="number" value={count} onChange={onChange} />
        </label>
      </form>
      <h2>Counter is {count}</h2>
      <button onClick={increment}>Increment</button>
      <button onClick={decrement}>Decrement</button>
      <button onClick={double}>Double</button>
      <button onClick={divide}>Divide</button>
      <button onClick={reset}>Reset</button>
    </>
  );
}

export default App;
