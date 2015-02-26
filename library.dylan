Module: dylan-user

define library custom-hash
  use common-dylan;
  use collections, import: { table-extensions };
  export
    custom-hash;
end library custom-hash;

define module custom-hash
  use common-dylan;
  use table-extensions;
  export
    custom-hash,
    <custom-hash-table>;
end module custom-hash;
