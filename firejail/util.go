package firejail

import (
	"fmt"
	"os/exec"
	"path/filepath"
	"regexp"
	"strings"
)

func parseFirejailVersionOutput(infoString string) (version string) {
	infoString = strings.TrimSpace(infoString)

	lines := strings.Split(infoString, "\n")

	versionString := strings.TrimSpace(lines[0])

	re := regexp.MustCompile(`firejail version ([0-9].*)$`)
	if match := re.FindStringSubmatch(lines[0]); len(match) > 0 {
		versionString = match[1]
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
