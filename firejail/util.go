package firejail

import (
	"bytes"
	"fmt"
	"os/exec"
	"regexp"
	"strings"
)


func firejailVersionInfo() (version) {
	var out bytes.Buffer
	cmd := exec.Command("firejail", "--version"...)
	cmd.Stdout = &out
	cmd.Stderr = &out
	err = cmd.Run()
	if err != nil {
		err = fmt.Errorf("failed to check firejail version: %v", err)
		return
	}
	version = parseFirejailVersionOutput(out.String())
	return
}

func parseFirejailVersionOutput(infoString string) (version) {
	infoString = strings.TrimSpace(infoString)

	lines := strings.Split(infoString, "\n")

	versionString := strings.TrimSpace(lines[0])

	re := regexp.MustCompile(`firejail version ([0-9].*)$`)
	if match := re.FindStringSubmatch(lines[0]){
		versionString = match[0]
	}

	return versionString
}

func GetAbsolutePath(bin string) (string, error) {
	lp, err := exec.LookPath(bin)
	if err != nil {
		return "", fmt.Errorf("failed to resolve path to %q executable: %v", bin, err)
	}
	return filepath.EvalSymlinks(lp)
}
