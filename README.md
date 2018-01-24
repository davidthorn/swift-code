# swift-code
A linux command line tool to create packages, class, targets

## Commands

# Create

The create command is designed to help you create a type of file for swift

Either: 

* class
* struct
* enum


## View Controller Subcommand

The `create view-controller` command creates a swift file in the current directory
containing a class object file which extends ViewController and will suffix the name of the 
class provided with ViewVontroller.

The name of the file will also be suffixed with ViewController so the file name will be
`[NAME]ViewController.swift`

```bash

swift-code create view-controller NAME [options]

NAME: Is the name of the ViewController file which should be created

options:

--module-name: The name of the module which the view controller is within
                This actually does not do anything but put the name of the model under the filename in the comments of the file

--suffix:   By default all view controller names will be suffixed with ViewController, this can be override here

examples:

To create a Home class which extends UIViewController in a file named HomeViewController.swift the following command is required:

swift-code create view-controller Home

this will create a file name of HomeViewController.swift

```
## Class Subcommand

```bash

swift-code create class NAME [options]

options:

--module-name: The name of the module which the view controller is within
                This actually does not do anything but put the name of the model under the filename in the comments of the file

--suffix:   By default all class names will not be suffixed, this can be override here by providing the suffix name
            The suffix name with use TitleCase and upper case the first letter of the suffix name

        

```

```bash

    swift-code create FILETYPE NAME [FOLDER]

    swift-code create view-controller NAME [options]

    options:
    
        --module-name: The name of the module which the view controller is within
                       This actually does not do anything but put the name of the model under the filename in the comments of the file
    
        --suffix:   By default all view controller names will be suffixed with ViewController, this can be override here

    swift-code create class NAME --uikit --

    swift-code create struct NAME

    swift-code create enum NAME

```