import Timeline from "@mui/lab/Timeline";

import mockData from "../mockData";
import History from "./History";

function Histories() {
  const histories = mockData.values;

  return (
    <Timeline>
      {histories.map((history, index) => (
        <History key={index} history={history} />
      ))}
    </Timeline>
  );
}

export default Histories;
