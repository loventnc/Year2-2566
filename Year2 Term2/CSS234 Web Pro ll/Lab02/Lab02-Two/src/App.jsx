import { useState, useEffect } from "react";

function Box({ number }) {
  return (
    <>
      <div style={{ display: "flex", gap: "10px", marginTop: "20px" }}>
        {number.map((item, index) => {
          return (
            <div
              key={index}
              style={{
                height: "40px",
                border: "1px solid black",
                padding: "5px",
              }}
            >
              <h1 style={{ margin: "0" }}>{item}</h1>
            </div>
          );
        })}
      </div>
    </>
  );
}

function App() {
  const [counterRoll, setCouterRoll] = useState(0);
  const [dicenumber, setDicenumber] = useState([0, 0, 0]);
  const randomNumber = (min, max) => {
    return Math.floor(Math.random() * (max - min + 1) + min);
  };

  useEffect(() => {
    const updateDice = dicenumber.map(() => randomNumber(1, 6));
    setDicenumber(updateDice);
  }, [counterRoll]);

  return (
    <>
      <h1>Roll: {counterRoll}</h1>
      <button onClick={() => setCouterRoll(counterRoll + 1)}>Re-roll</button>
      <Box number={dicenumber} />
    </>
  );
}

export default App;
