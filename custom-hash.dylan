Module: custom-hash
Synopsis: Provides a generic basis for object subclasses to have a custom
          hashing method based on equality (=) rather than identity (==).

define open generic custom-hash
    (object, initial-state :: <hash-state>)
 => (id :: <integer>, result-state :: <hash-state>);

define method custom-hash
    (object, initial-state :: <hash-state>)
 => (id :: <integer>, result-state :: <hash-state>)
  object-hash(object, initial-state)
end method custom-hash;

define class <custom-hash-table> (<table>) end;

define method table-protocol
    (cht :: <custom-hash-table>)
 => (test :: <function>, hash :: <function>)
  values(\=, custom-hash)
end method table-protocol;
