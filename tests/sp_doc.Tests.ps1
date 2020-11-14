. "$PSScriptRoot\constants.ps1"

Describe 'sp_doc' {
    Context 'tSQLt Tests' {    
        BeforeAll {
            $TestClass = "sp_doc"
            $Query = "EXEC tsqlt.Run '$TestClass'"
            
            $Hash = @{
                SqlInstance     = $SqlInstance
                Database        = $Database
                Query           = $Query
                Verbose         = $true
                EnableException = $true
            }  
        }
        It 'All tests' {

            If ($script:IsAzureSQL) {
                
                $SecPass = ConvertTo-SecureString -String $Pass -AsPlainText -Force
                $Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User, $SecPass
                $Hash.add("SqlCredential", $Credential)

                { Invoke-DbaQuery @Hash } | Should -Not -Throw -Because "tsqlt unit tests must pass"
            }

            Else {
                { Invoke-DbaQuery @Hash } | Should -Not -Throw -Because "tsqlt unit tests must pass"
            }
        }     
    }
    Context 'TSQLLint' {    
        BeforeAll {
            $Script = "sp_doc"
            # TSQLLint results are formatted as:
            <#
            sp_test.sql(1,1): error set-nocount : Expected SET NOCOUNT ON near top of file.
            sp_test.sql(1,1): error set-quoted-identifier : Expected SET QUOTED_IDENTIFIER ON near top of file.

            Linted 1 files in 0.3037423 seconds

            2 Errors.
            0 Warnings
            #>
            $LintResult = tsqllint "$Script.sql" --config $TSQLLintConfig 
            $LintSummary = $LintResult | Select-Object -Last 2
            $LintErrors = $LintSummary | Select-Object -First 1
            $LintWarnings = $LintSummary | Select-Object -Last 1
            tsqllint "$Script.sql" --config $TSQLLintConfig 
        }
        It 'Errors' {
            Try {
                $LintErrors[0] | Should -Be '0' -Because "Lint errors are a no-no"
            }

            Catch {
                Write-Host $LintResult
                Throw
            }
        }
        It 'Warnings' {
            $LintWarnings[0] | Should -Be '0' -Because "Lint warnings are a no-no"
        }
    }
}