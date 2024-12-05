import { useState, useEffect } from "react";

function App() {
  const [time, setTime] = useState({
    minutes: 0,
    seconds: 0,
  });
  const [isPlaying, setisPlaying] = useState(false);

  const onChange = (evt) => {
    setTime({ ...time, [evt.target.name]: parseInt(evt.target.value) });
  };

  useEffect(() => {
    if (isPlaying) {
      const interval = setInterval(() => {
        if (time.seconds === 0) {
          if (time.minutes === 0) {
            clearInterval(interval);
            setisPlaying(false);
          } else {
            setTime({ minutes: time.minutes - 1, seconds: 59 });
          }
        } else {
          setTime({ minutes: time.minutes, seconds: time.seconds - 1 });
        }
      }, 1000);
      return () => clearInterval(interval);
    }
  });

  const onPlay = (evt) => {
    setTime({ ...time, [evt.target.target]: parseInt(evt.target.value) });
  };

  return (
    <>
      <form>
        <label>
          Minutes:
          <input
            type="number"
            min={0}
            max={60}
            name="minutes"
            onChange={onChange}
          />
        </label>
        <label>
          Seconds:
          <input
            type="number"
            min={0}
            max={60}
            name="seconds"
            onChange={onChange}
          />
        </label>
      </form>
      <div>
        <h2>
          Time {time.minutes} {time.seconds}
        </h2>
      </div>
      <button onClick={() => setisPlaying(!isPlaying)}>
        {isPlaying ? "Stop" : "Start"}
      </button>
    </>
  );
}

export default App;
