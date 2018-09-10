require ('minitest/autorun')
require ('minitest/rg')

require_relative('../codeclan_student')

class TestCodeclanStudent < Minitest::Test

  def setup
    @codeclan_student = Codeclan_student.new("Jordan", "G8")
  end

  def test_name
    result = @codeclan_student.name()
    assert_equal("Jordan", result)
  end

  def test_cohort
    result = @codeclan_student.cohort()
    assert_equal("G8", result)
  end

  def test_update_name
    result = @codeclan_student.set_name("Bowie")
    assert_equal("Bowie", result)
  end

  def test_set_cohort
    result = @codeclan_student.set_cohort("G1")
    assert_equal("G1", result)
  end

  def test_student_can_talk
    result = @codeclan_student.can_talk
    assert_equal("I can talk", result)
  end

  def test_fave_language
    result = @codeclan_student.fave_language("Ruby")
    assert_equal("I love Ruby!", result)
  end
end
