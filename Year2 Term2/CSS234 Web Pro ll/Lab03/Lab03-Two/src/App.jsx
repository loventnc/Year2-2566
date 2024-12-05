import React, { useState } from "react";

function App() {
  const [User, setUser] = useState(false);
  const [Request, setRequest] = useState(false);

  const handleUserFocus = () => {
    setUser(true);
    setRequest(false);
  };

  const handleUserBlur = () => {
    setUser(false);
  };

  const handleRequestFocus = () => {
    setRequest(true);
    setUser(false);
  };

  const handleRequestBlur = () => {
    setRequest(false);
  };

  return (
    <>
      <form style={{ width: "350px" }}>
        <h1>Contact</h1>
        <fieldset
          onFocus={handleUserFocus}
          onBlur={handleUserBlur}
          style={{ background: User ? "lightblue" : "white" }}
        >
          <legend>User</legend>
          <label htmlFor="name">Name:</label>
          <br />
          <input type="text" id="name" name="name" />
          <br />
          <label htmlFor="email">Email:</label>
          <br />
          <input type="text" id="email" name="email" />
        </fieldset>
        <fieldset
          onFocus={handleRequestFocus}
          onBlur={handleRequestBlur}
          style={{ background: Request ? "lightblue" : "white" }}
        >
          <legend>Request</legend>
          <label htmlFor="subject">Subject:</label>
          <br />
          <input type="text" id="subject" name="subject" />
          <br />
          <label htmlFor="body">Body:</label>
          <br />
          <input type="text" id="body" name="body" style={{ height: "40px" }} />
        </fieldset>
      </form>
    </>
  );
}

export default App;
