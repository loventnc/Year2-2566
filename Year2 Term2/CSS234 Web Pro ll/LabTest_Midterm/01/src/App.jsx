import { useState, useEffect } from "react";

function App() {
  const [qurity, setQurity] = useState(0);
  const [arr, setArr] = useState([]);

  const randomNumber = (min, max) => {
    return Math.floor(Math.random() * (max - min + 1) + min);
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    const arr = [];
    for (let i = 0; i < qurity; i++) {
      arr.push(randomNumber(1, 6));
    }
    setArr(arr);
  };

  return (
    <>
      <form onSubmit={handleSubmit}>
        <label>
          Enter number
          <input type="number" onChange={(e) => setQurity(e.target.value)} />
        </label>
        <button type="submit">Submit</button>
      </form>

      {arr.map((item, index) => (
        <div
          key={index}
          style={{
            height: "20px",
            width: "20px",
            border: "2px solid black",
            padding: "5px",
          }}
        >
          {item}
        </div>
      ))}
      <div>sum: {arr.reduce((num, item) => num + item, 0)}</div>
    </>
  );
}

export default App;
