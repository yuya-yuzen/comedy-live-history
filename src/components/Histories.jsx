import Timeline from "@mui/lab/Timeline";
import { timelineOppositeContentClasses } from "@mui/lab/TimelineOppositeContent";

import mockData from "../mockData";
import History from "./History";

function Histories() {
  const histories = mockData.values;

  return (
    <>
      <p>合計 {histories.length} 本</p>
      <p>※新しい順に記載</p>
      <Timeline
        sx={{
          [`& .${timelineOppositeContentClasses.root}`]: {
            flex: 0.1,
          },
        }}
      >
        {[...histories].reverse().map((history, index) => (
          <History key={index} history={history} />
        ))}
      </Timeline>
    </>
  );
}

export default Histories;
