import { useState } from "react";

function App() {
  const [show, setShow] = useState(false);

  return (
    <>
      <div>
        <button
          onClick={() => setShow(!show)}
          onBlur={() => setShow(false)}
          style={{
            border: "solid  2px",
            backgroundColor: "lightgray",
            padding: "10px",
            borderRadius: "5px",
          }}
        >
          Show menu
        </button>
      </div>

      {show && (
        <div
          style={{ border: "solid black 1px", padding: "10px", width: "110px" }}
        >
          This is the menu
        </div>
      )}
    </>
  );
}

export default App;
