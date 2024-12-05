import { useState, useEffect } from "react";

function StopTime({ isPlaying, seconds, setSeconds }) {
  useEffect(() => {
    if (isPlaying && seconds > 0) {
      const interval = setInterval(() => {
        setSeconds((seconds) => seconds - 1);
      }, 1000);
      return () => clearInterval(interval);
    }
  }, [isPlaying, seconds, setSeconds]);

  return <h1>Time left: {seconds} seconds</h1>;
}

function App() {
  const [isPlaying, setIsPlaying] = useState(false);
  const [seconds, setSeconds] = useState(10);

  const reset = () => {
    setSeconds(10);
  };
  const toggleplayer = () => {
    setIsPlaying(!isPlaying);
  };

  return (
    <>
      <StopTime
        isPlaying={isPlaying}
        seconds={seconds}
        setSeconds={setSeconds}
      />
      <div>
        <button onClick={reset}>Reset</button>
        <button onClick={toggleplayer}>{isPlaying ? "Pause" : "Resume"}</button>
      </div>
    </>
  );
}

export default App;
