package beeep

import "testing"

func TestExampleBeep(t *testing.T) {
	err := Beep(DefaultFreq, DefaultDuration)
	if err != nil {
		t.Error(err)
	}
}

func TestExampleNotify(t *testing.T) {
	err := Notify("Title", "MessageBody", "assets/information.png")
	if err != nil {
		t.Error(err)
	}
}

func TestExampleAlert(t *testing.T) {
	err := Alert("Title", "MessageBody", "assets/warning.png")
	if err != nil {
		t.Error(err)
	}
}
