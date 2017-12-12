# Clintrial Queries
These queries are some that I have found useful at times with using Clintrial. Most are for querying Clintrial's
metadata tables.

* **protocol_derivations.sql** - Gets a list of all derivations and their associated metadata 
(if it is compiled, last modified date, description, etc.) for a protocol. Change `WHERE protocol = 'ENTER PROTOCOL NAME'` 
to the name of the protocol you want to use.

* **protocol_item_count.sql** - Gets a count of items for a specific protocol. Change 
`WHERE protocol = 'ENTER PROTOCOL NAME'` to the name of the protocol you want to use. 
`WHERE panel NOT LIKE 'VCT_%` removes Clintrials VCT system panels from the count.

* **protocol_items.sql** - Gets a list of all the items and associated metadata (panel, SAS name,
data type, etc.) in a protocol. Change "ENTER PROTOCOL NAME" in 
`WHERE protocol = 'ENTER PROTOCOL NAME'` to the name of the protocol you want to use.

* **protocol_item_count_year.sql** - Gets a count of items in each protocol for the specified year.
Change the year in `WHERE create_date LIKE '%2018'` to the year you wan to use. `WHERE panel NOT LIKE 'VCT_%`
removes Clintrials VCT system panels from the count.

* **protocol_page_section_items.sql** - Gets a list of all pages sections and the field names with
their associated metadata for a protocol. Change `WHERE protocol = 'ENTER PROTOCOL NAME'` to the name 
of the protocol you want to use.

* **protocol_page_sections.sql** - Gets a list of all pages sections and associated metadata (associated
panel, has repeats, desctiption, etc) for a protocol. Change `WHERE protocol = 'ENTER PROTOCOL NAME'` 
to the name of the protocol you want to use.

* **protocol_panel_count_year.sql** - Gets a count of panels in each protocol for the specified year. Change
the year in `WHERE create_date LIKE '%2018'` to the year you want to use. `WHERE panel NOT LIKE 'VCT_%`
removes Clintrials VCT system panels from the count.

* **protocol_panels.sql** - Gets a list of all the panels in a protocol with associated metadata (panel type,
desctiption, if it is installed, etc.). Change "ENTER PROTOCOL NAME" in 
`WHERE protocol = 'ENTER PROTOCOL NAME'` to the name of the protocol you want to use.

* **protocol_rules.sql** - Gets a list of all rules and their associated metadata (if it is compiled, 
if the message is derived, message text, etc.) for a protocol. Change `WHERE protocol = 'ENTER PROTOCOL NAME'` 
to the name of the protocol you want to use.

* **protocol_templates.sql** - Gets a list of all the page templates in a protocol with associated metadata 
Change "ENTER PROTOCOL NAME" in `WHERE protocol = 'ENTER PROTOCOL NAME'` to the name of the protocol 
you want to use.

* **protocols.sql** - Gets a list of all protocols and the associated metadata.

* **protocols_created_in_year.sql** - Gets a lost of all protocols and associated metadata created in
a certain year. Change the 2017 in `WHERE created_date LIKE '%2017'` to the year for which you want
to search.

* **table_names.sql** - Gets a list of all table names for a specific user. Change `WHERE owner= 'CTSDD'`
to the name of the user you want to use. user_names.sql can be used to get a list of all available users.

* **user_names.sql** - This one is not Clintrial specific but Oracle related instead. It gets a list
of all Oracle users. For each protocol Clintrial creates a new user with the name of the protocol, so
using this query will give a list of all Oracle users, and will also contain all Clintrial protocols. in
addition Clintrial stores meta data under certain users so this query can be used to find these.
Clintrial users generally start with either CT or CTS (for example CTSDD is a user), so you can find 
these users and explor what is in them.
