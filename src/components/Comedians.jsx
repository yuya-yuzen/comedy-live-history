import PropTypes from "prop-types";

import Accordion from "@mui/material/Accordion";
import AccordionDetails from "@mui/material/AccordionDetails";
import AccordionSummary from "@mui/material/AccordionSummary";
import ArrowDropDownIcon from "@mui/icons-material/ArrowDropDown";
import Typography from "@mui/material/Typography";

function ComediansAccordion({ comedians }) {
  return (
    <Accordion>
      <AccordionSummary expandIcon={<ArrowDropDownIcon />}>
        <Typography>出演者</Typography>
      </AccordionSummary>
      <AccordionDetails>
        <ul>
          {comedians.split(",").map((performer, index) => (
            <li key={index}>{performer}</li>
          ))}
        </ul>
      </AccordionDetails>
    </Accordion>
  );
}

ComediansAccordion.propTypes = {
  comedians: PropTypes.string.isRequired,
};

export default ComediansAccordion;
