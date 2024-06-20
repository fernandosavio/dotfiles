function aws-login
    set -f valid_envs dev hml prd marketing-hml
    set -f env $argv[1]

    if not contains $env $valid_envs
        echo "Not a valid env. Valid envs: $valid_envs"
        return 1
    end

    
    set -gx AWS_SDK_LOAD_CONFIG 1
    set -gx AWS_PROFILE $env
    aws sso login --profile $env
end
