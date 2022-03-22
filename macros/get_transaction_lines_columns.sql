{% macro get_transaction_lines_columns() %}

{% set columns = [
    {"name": "account_id", "datatype": dbt_utils.type_float()},
    {"name": "amount", "datatype": dbt_utils.type_float()},
    {"name": "class_id", "datatype": dbt_utils.type_float()},
    {"name": "company_id", "datatype": dbt_utils.type_float()},
    {"name": "department_id", "datatype": dbt_utils.type_float()},
    {"name": "item_id", "datatype": dbt_utils.type_float()},
    {"name": "location_id", "datatype": dbt_utils.type_float()},
    {"name": "memo", "datatype": dbt_utils.type_string()},
    {"name": "non_posting_line", "datatype": dbt_utils.type_string()},
    {"name": "subsidiary_id", "datatype": dbt_utils.type_float()},
    {"name": "transaction_id", "datatype": dbt_utils.type_float()},
    {"name": "transaction_line_id", "datatype": dbt_utils.type_float()}
] %}

{{ return(columns) }}

{% endmacro %}

{% macro get_netsuite2_transaction_lines_columns() %}

{% set columns = [
    {"name": "_fivetran_deleted", "datatype": "boolean"},
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "actualshipdate", "datatype": dbt_utils.type_timestamp()},
    {"name": "amortizationenddate", "datatype": dbt_utils.type_timestamp()},
    {"name": "amortizationresidual", "datatype": dbt_utils.type_string()},
    {"name": "amortizationsched", "datatype": dbt_utils.type_int()},
    {"name": "amortizstartdate", "datatype": dbt_utils.type_timestamp()},
    {"name": "amountlinked", "datatype": dbt_utils.type_float()},
    {"name": "assemblycomponent", "datatype": dbt_utils.type_string()},
    {"name": "billeddate", "datatype": dbt_utils.type_timestamp()},
    {"name": "billingschedule", "datatype": dbt_utils.type_int()},
    {"name": "billvariancestatus", "datatype": dbt_utils.type_string()},
    {"name": "bomquantity", "datatype": dbt_utils.type_float()},
    {"name": "buildvariance", "datatype": dbt_utils.type_float()},
    {"name": "category", "datatype": dbt_utils.type_int()},
    {"name": "chargetype", "datatype": dbt_utils.type_int()},
    {"name": "class", "datatype": dbt_utils.type_int()},
    {"name": "cleared", "datatype": dbt_utils.type_string()},
    {"name": "cleareddate", "datatype": dbt_utils.type_timestamp()},
    {"name": "commitinventory", "datatype": dbt_utils.type_int()},
    {"name": "commitmentfirm", "datatype": dbt_utils.type_string()},
    {"name": "componentyield", "datatype": dbt_utils.type_float()},
    {"name": "costestimate", "datatype": dbt_utils.type_float()},
    {"name": "costestimaterate", "datatype": dbt_utils.type_float()},
    {"name": "costestimatetype", "datatype": dbt_utils.type_string()},
    {"name": "createdfrom", "datatype": dbt_utils.type_int()},
    {"name": "createdpo", "datatype": dbt_utils.type_int()},
    {"name": "creditforeignamount", "datatype": dbt_utils.type_float()},
    {"name": "date_deleted", "datatype": dbt_utils.type_timestamp()},
    {"name": "debitforeignamount", "datatype": dbt_utils.type_float()},
    {"name": "department", "datatype": dbt_utils.type_int()},
    {"name": "documentnumber", "datatype": dbt_utils.type_string()},
    {"name": "donotdisplayline", "datatype": dbt_utils.type_string()},
    {"name": "dropship", "datatype": dbt_utils.type_string()},
    {"name": "eliminate", "datatype": dbt_utils.type_string()},
    {"name": "entity", "datatype": dbt_utils.type_int()},
    {"name": "estgrossprofit", "datatype": dbt_utils.type_float()},
    {"name": "estgrossprofitpercent", "datatype": dbt_utils.type_float()},
    {"name": "estimatedamount", "datatype": dbt_utils.type_float()},
    {"name": "expectedreceiptdate", "datatype": dbt_utils.type_timestamp()},
    {"name": "expectedshipdate", "datatype": dbt_utils.type_timestamp()},
    {"name": "expenseaccount", "datatype": dbt_utils.type_int()},
    {"name": "foreignamount", "datatype": dbt_utils.type_float()},
    {"name": "foreignamountpaid", "datatype": dbt_utils.type_float()},
    {"name": "foreignamountunpaid", "datatype": dbt_utils.type_float()},
    {"name": "foreignpaymentamountunused", "datatype": dbt_utils.type_float()},
    {"name": "foreignpaymentamountused", "datatype": dbt_utils.type_float()},
    {"name": "fulfillable", "datatype": dbt_utils.type_string()},
    {"name": "fxamountlinked", "datatype": dbt_utils.type_float()},
    {"name": "hasfulfillableitems", "datatype": dbt_utils.type_string()},
    {"name": "id", "datatype": dbt_utils.type_int()},
    {"name": "inventoryreportinglocation", "datatype": dbt_utils.type_int()},
    {"name": "isbillable", "datatype": dbt_utils.type_string()},
    {"name": "isclosed", "datatype": dbt_utils.type_string()},
    {"name": "iscogs", "datatype": dbt_utils.type_string()},
    {"name": "isfullyshipped", "datatype": dbt_utils.type_string()},
    {"name": "isfxvariance", "datatype": dbt_utils.type_string()},
    {"name": "isinventoryaffecting", "datatype": dbt_utils.type_string()},
    {"name": "isrevrectransaction", "datatype": dbt_utils.type_string()},
    {"name": "item", "datatype": dbt_utils.type_int()},
    {"name": "itemsource", "datatype": dbt_utils.type_string()},
    {"name": "itemtype", "datatype": dbt_utils.type_string()},
    {"name": "kitcomponent", "datatype": dbt_utils.type_string()},
    {"name": "kitmemberof", "datatype": dbt_utils.type_int()},
    {"name": "linelastmodifieddate", "datatype": dbt_utils.type_timestamp()},
    {"name": "linesequencenumber", "datatype": dbt_utils.type_int()},
    {"name": "location", "datatype": dbt_utils.type_int()},
    {"name": "mainline", "datatype": dbt_utils.type_string()},
    {"name": "matchbilltoreceipt", "datatype": dbt_utils.type_string()},
    {"name": "memo", "datatype": dbt_utils.type_string()},
    {"name": "needsrevenueelement", "datatype": dbt_utils.type_string()},
    {"name": "netamount", "datatype": dbt_utils.type_float()},
    {"name": "oldcommitmentfirm", "datatype": dbt_utils.type_string()},
    {"name": "orderpriority", "datatype": dbt_utils.type_float()},
    {"name": "paymentmethod", "datatype": dbt_utils.type_int()},
    {"name": "price", "datatype": dbt_utils.type_int()},
    {"name": "processedbyrevcommit", "datatype": dbt_utils.type_string()},
    {"name": "projecttask", "datatype": dbt_utils.type_int()},
    {"name": "quantity", "datatype": dbt_utils.type_float()},
    {"name": "quantitybackordered", "datatype": dbt_utils.type_float()},
    {"name": "quantitybilled", "datatype": dbt_utils.type_float()},
    {"name": "quantitycommitted", "datatype": dbt_utils.type_float()},
    {"name": "quantitypacked", "datatype": dbt_utils.type_float()},
    {"name": "quantitypicked", "datatype": dbt_utils.type_float()},
    {"name": "quantityrejected", "datatype": dbt_utils.type_float()},
    {"name": "quantityshiprecv", "datatype": dbt_utils.type_float()},
    {"name": "rate", "datatype": dbt_utils.type_float()},
    {"name": "rateamount", "datatype": dbt_utils.type_float()},
    {"name": "ratepercent", "datatype": dbt_utils.type_float()},
    {"name": "requestnote", "datatype": dbt_utils.type_string()},
    {"name": "revenueelement", "datatype": dbt_utils.type_int()},
    {"name": "specialorder", "datatype": dbt_utils.type_string()},
    {"name": "subsidiary", "datatype": dbt_utils.type_int()},
    {"name": "taxline", "datatype": dbt_utils.type_string()},
    {"name": "transaction", "datatype": dbt_utils.type_int()},
    {"name": "transactiondiscount", "datatype": dbt_utils.type_string()},
    {"name": "transactionlinetype", "datatype": dbt_utils.type_string()},
    {"name": "transferorderitemlineid", "datatype": dbt_utils.type_int()},
    {"name": "uniquekey", "datatype": dbt_utils.type_int()},
    {"name": "units", "datatype": dbt_utils.type_int()},
    {"name": "vsoedelivered", "datatype": dbt_utils.type_string()},
    {"name": "vsoeisestimate", "datatype": dbt_utils.type_string()},
    {"name": "vsoepermitdiscount", "datatype": dbt_utils.type_string()},
    {"name": "vsoesopgroup", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
