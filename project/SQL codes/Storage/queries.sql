

select a.area_name,i.item_name,w.ITEM_AMOUNT_IN_KG from 
   wholesale_Storage w 
      join 
   areas a on w.area_no = a.area_no
      join
   wholesale_items i on w.item_code = i.item_code 
  where a.area_name = 'Mirpur';
  
  
  
  
  select * from purchase_transaction;
delete from purchase_transaction where transaction_id = 'GT-12368097';
SELECT * FROM ALL_TRANSACTION;
delete from ALL_TRANSACTION where transaction_id = 'GT-12368097';

select * from gen_purchase;
delete from gen_purchase where PURCHASE_ID = 'GP-89047561';
select * from wholesale_purchase;



select a.area_name,i.item_name,w.ITEM_AMOUNT_IN_KG from 
   wholesale_Storage w 
      join 
   areas a on w.area_no = a.area_no
      join
   wholesale_items i on w.item_code = i.item_code 
  where a.area_name = 'Mirpur';


select a.area_name,i.item_name,nw.ITEM_AMOUNT_IN_KG from 
   non_wholesale_Storage nw 
      join 
   areas a on w.area_no = a.area_no
      join
   gen_items i on nw.item_code = i.item_code 
  where a.area_name = 'Mirpur';
  
  
  v_curr_code := :new.item_code;
  SELECT item_amount_in_piece 
           INTO v_curr_amount FROM non_wholesale_storage
  WHERE item_code = v_curr_code and area_no = v_curr_area;

  
    UPDATE non_wholesale_storage nws
           SET nws.item_amount_in_piece = v_curr_amount + :new.item_amount_in_piece 
  WHERE nws.item_code = :new.item_code and nws.area_no = v_curr_area;