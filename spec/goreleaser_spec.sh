#!/usr/bin/env shellspec

Describe "printVersion()"
  printVersion() {
    goreleaser --version | grep "${GORELEASER_VERSION}"
  }

  It "validates tool is installed by checking version"
    When call printVersion
    The output should include "${GORELEASER_VERSION}"
    The status should eq 0
  End
End
