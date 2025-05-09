var express = require("express");
const AttendanceModel = require("../models/AttendanceModel");
var router = express.Router();

const processRequest = (req, res) => {
  var user_id = req.session.active_user[0].id;
  var lesson_id = req.body.lesson_id;

  new AttendanceModel().getUserAttendanceByLessonId(lesson_id, user_id).then((result) => {
    res.send(JSON.stringify(result));
  });
};

router.get("/", function (req, res) {
  processRequest(req, res);
});

router.post("/", function (req, res) {
  processRequest(req, res);
});

module.exports = router;
