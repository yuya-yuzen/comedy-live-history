import mockData from "../mockData";

function Histories() {
  const histories = mockData.values;

  return (
    <ul>
      {histories.map((history, index) => (
        <li key={index}>
          <p>日付：{history[0]}</p>
          <p>名前：{history[1]}</p>
          <p>場所：{history[2]}</p>
          <p>出演：{history[3]}</p>
        </li>
      ))}
    </ul>
  );
}

export default Histories;
