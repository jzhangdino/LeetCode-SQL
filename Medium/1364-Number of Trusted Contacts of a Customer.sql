select i.invoice_id, t1.customer_name, i.price, t1.contacts_cnt, t1.trusted_contacts_cnt
from Invoices i,
(select c1.customer_id, c1.customer_name, ifnull(count(contact_name),0) contacts_cnt, ifnull(sum(c2.contact_email in (select distinct email from Customers)),0) trusted_contacts_cnt
from Customers c1 left join Contacts c2
on c1.customer_id=c2.user_id
group by c1.customer_id) t1
where i.user_id=t1.customer_id
order by i.invoice_id
