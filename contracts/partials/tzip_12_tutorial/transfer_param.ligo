#include "storage.ligo"

type token_id is
  | Single of unit
  (* 
    This implementation will only support a `Single` token_id, 
    and will throw a runtime error otherwise 
  *)
  | Mac of nat

type transfer is record
    token_id : token_id;
    amount : token_balance;
    from_ : token_owner;
    to_ : token_owner;
end;

type transfer_param is list(transfer)