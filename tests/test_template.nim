import unittest

import nim_template

test "can add":
  check add(5, 5) == 10
