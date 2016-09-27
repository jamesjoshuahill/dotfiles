# load_lpass

This is how I load my private SSH key for GitHub on macOS for the day.

1. Create a new SSH key, e.g. [Generate an SSH key pair](https://help.github.com/articles/generating-an-ssh-key/)

1. Put the private key in a LastPass secure note e.g. "Personal/GitHub SSH key"

1. Save a copy of the [`load_lpass`](https://github.com/jamesjoshuahill/dotfiles/blob/master/ssh/load_lpass) script with your own variables

1. Put your `load_lpass` script in another LastPass secure note e.g. "Personal/Load GitHub SSH Key"

1. Load your SSH key until hometime!

    ```bash
    brew install lastpass-cli
    lpass login USERNAME
    bash <(lpass show 'Personal/Load GitHub SSH Key' --notes)
    ```

1. Or load your SSH key for 2 hours!

    ```bash
    brew install lastpass-cli
    lpass login USERNAME
    bash <(lpass show 'Personal/Load GitHub SSH Key' --notes) 2
    ```
