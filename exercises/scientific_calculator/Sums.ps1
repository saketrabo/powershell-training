Function Sums {
    <#
	.SYNOPSIS
		Calculates two given numbers using a given operator
    .DESCRIPTION
        Generate Result object with Success, Calculation and when necessary Error
        Calculates two given number using a given operator and add result to Result.Calculation
        When function failed the error will be add to Result.Error
    .EXAMPLE
        Sums 8 3 +
        Expected result: 11
    .PARAMETER Value1
        The first number in the calculation
    .PARAMETER Value2
        The second number in the calculation
    .PARAMETER Operator
        The operator that will be used on Value1 and Value2
    .OUTPUTS
        Returns the Success and Sums
    .NOTES
        Version : 1.2
        Author  : André de Jong
        E-Mail  : Andre.de.Jong@rabobank.nl
        Date    : 13-01-2021
        History :
        12-11-2019 1.0 Initial version
        13-01-2021 1.2 Version for exercise
    #>

    [CmdletBinding()]
    Param(
        # First Integer Value
        [Parameter(Mandatory = $true)]
        [int]$Value1,

        # Second Integer to be calculated
        [Parameter(Mandatory = $true)]
        [int]$Value2,

        # Operator value
        [Parameter(Mandatory = $true)]
        [String]$Operator
    )

    Begin {
        $Result = @{ }
        $Result["Success"] = $false
        [int]$Sums = 0

    } # Begin

    Process {
        switch ($Operator) {
            Default {   if($Error.count -gt 0){
                            $Result["Error"] = "$($MyInvocation.MyCommand);Last error: " + $error[0]
                        }  
                        else{
                            $Result["Error"] = "Function isn't working correctly"
                        }
            }
        }
    } # Process

    End {

        return $Result

        Remove-Variable * -ErrorAction SilentlyContinue
        $error.Clear()
    } # End
}