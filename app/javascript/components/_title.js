import Typed from 'typed.js';

const options = () => {
  strings: ["your night", "your day"],
  loop: true,
  typeSpeed: 40
}

const typed = () => new Typed(".typed", options);

export { typed };
