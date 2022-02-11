$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "Sums" {
    Context "Sums" {
        It "Sums" {
            $Result = Sums 0 0 "?"
            $Result.Success | Should Be $false
        }
    }
}

Remove-Variable * -ErrorAction SilentlyContinue
$error.Clear()