// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

pageextension 60100 CustomerList extends "Customer List"
{
    trigger OnOpenPage();
    begin
        Message('Assignment - Create a new extension');
    end;
}