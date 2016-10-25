﻿Describe 'RemoveConfigurationData Tests' {

   Context 'Parameters for RemoveConfigurationData'{

        It 'Has a Parameter called Configuration' {
            $Function.Parameters.Keys.Contains('Configuration') | Should Be 'True'
            }
        It 'Configuration Parameter is Identified as Mandatory being True' {
            [String]$Function.Parameters.Configuration.Attributes.Mandatory | Should be 'True'
            }
        It 'Configuration Parameter is of String Type' {
            $Function.Parameters.Configuration.ParameterType.FullName | Should be 'System.String'
            }
        It 'Configuration Parameter is member of ParameterSets' {
            [String]$Function.Parameters.Configuration.ParameterSets.Keys | Should Be '__AllParameterSets'
            }
        It 'Configuration Parameter Position is defined correctly' {
            [String]$Function.Parameters.Configuration.Attributes.Position | Should be '0'
            }
        It 'Does Configuration Parameter Accept Pipeline Input?' {
            [String]$Function.Parameters.Configuration.Attributes.ValueFromPipeline | Should be 'False'
            }
        It 'Does Configuration Parameter Accept Pipeline Input by PropertyName?' {
            [String]$Function.Parameters.Configuration.Attributes.ValueFromPipelineByPropertyName | Should be 'False'
            }
        It 'Does Configuration Parameter use advanced parameter Validation? ' {
            $Function.Parameters.Configuration.Attributes.TypeID.Name -contains 'ValidateNotNullOrEmptyAttribute' | Should Be 'False'
            $Function.Parameters.Configuration.Attributes.TypeID.Name -contains 'ValidateNotNullAttribute' | Should Be 'False'
            $Function.Parameters.Configuration.Attributes.TypeID.Name -contains 'ValidateScript' | Should Be 'False'
            $Function.Parameters.Configuration.Attributes.TypeID.Name -contains 'ValidateRangeAttribute' | Should Be 'False'
            $Function.Parameters.Configuration.Attributes.TypeID.Name -contains 'ValidatePatternAttribute' | Should Be 'False'
            }
        It 'Has Parameter Help Text for Configuration '{
            $function.Definition.Contains('.PARAMETER Configuration') | Should Be 'True'
            }
    }
    Context "Function $($function.Name) - Help Section" {

            It "Function $($function.Name) Has show-help comment block" {

                $function.Definition.Contains('<#') | should be 'True'
                $function.Definition.Contains('#>') | should be 'True'
            }

            It "Function $($function.Name) Has show-help comment block has a.SYNOPSIS" {

                $function.Definition.Contains('.SYNOPSIS') -or $function.Definition.Contains('.Synopsis') | should be 'True'

            }

            It "Function $($function.Name) Has show-help comment block has an example" {

                $function.Definition.Contains('.EXAMPLE') | should be 'True'
            }

            It "Function $($function.Name) Is an advanced function" {

                $function.CmdletBinding | should be 'True'
                $function.Definition.Contains('param') -or  $function.Definition.Contains('Param') | should be 'True'
            }
    
    }

 }

