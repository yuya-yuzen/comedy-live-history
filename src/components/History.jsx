import PropTypes from "prop-types";

import TimelineItem from "@mui/lab/TimelineItem";
import TimelineOppositeContent from "@mui/lab/TimelineOppositeContent";
import TimelineSeparator from "@mui/lab/TimelineSeparator";
import TimelineConnector from "@mui/lab/TimelineConnector";
import TimelineContent from "@mui/lab/TimelineContent";
import TimelineDot from "@mui/lab/TimelineDot";
import Typography from "@mui/material/Typography";

import Comedians from "./Comedians";

function History({ history }) {
  return (
    <TimelineItem>
      <TimelineOppositeContent>{history[0]}</TimelineOppositeContent>
      <TimelineSeparator>
        <TimelineDot />
        <TimelineConnector />
      </TimelineSeparator>
      <TimelineContent>
        <Typography>
          <b>{history[1]}</b>
        </Typography>
        <Typography>@{history[2]}</Typography>
        {history[3] && <Comedians comedians={history[3]} />}
        <br />
      </TimelineContent>
    </TimelineItem>
  );
}

History.propTypes = {
  history: PropTypes.array.isRequired,
};

export default History;
