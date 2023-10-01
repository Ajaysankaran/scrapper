

insert into app_config values ('63d99289-6471-4fb7-910a-6413a489135f', 'eb95c3f0-9304-4e7e-abc6-afad8b098e4a', 'BASE_URL', 'ALL_PRODUCTS',
'https://www.amazon.com/All-Product/s?k=All+Product');

insert into category (id, "name", description, created_by, last_modified_by) values
('00ef066e-172b-46b4-b607-6da1621b22fa', 'ONLINE_SHOPPING', 'Description', 'SYSTEM', 'SYSTEM');

insert into application (id, category_id, app_name, description, created_by, last_modified_by)
values ('eb95c3f0-9304-4e7e-abc6-afad8b098e4a', '00ef066e-172b-46b4-b607-6da1621b22fa', 'AMAZON', 'amazon application', 'SYSTEM', 'SYSTEM');

insert into category_params (id, category_id, "name", description, data_type, created_by, last_modified_by)
values ('3ed6993f-84f8-4088-b282-596b7b88134e', '00ef066e-172b-46b4-b607-6da1621b22fa', 'PRODUCT_NAME', 'Product Name', 'TEXT',
'SYSTEM', 'SYSTEM');
insert into category_params (id, category_id, "name", description, data_type, created_by, last_modified_by)
values ('f65d74b5-3e42-40ae-b331-a6f0c2971399', '00ef066e-172b-46b4-b607-6da1621b22fa', 'PRICE', 'Price', 'CURRENCY',
'SYSTEM', 'SYSTEM');
insert into category_params (id, category_id, "name", description, data_type, created_by, last_modified_by)
values ('66c8e613-0bdd-4566-abc1-34e538b21f74', '00ef066e-172b-46b4-b607-6da1621b22fa', 'RATING', 'rating', 'NUMBER',
'SYSTEM', 'SYSTEM');
insert into category_params (id, category_id, "name", description, data_type, created_by, last_modified_by)
values ('aaa8552e-59c0-43fd-b375-66aa41430d3e', '00ef066e-172b-46b4-b607-6da1621b22fa', 'IMAGE', 'image', 'LINK',
'SYSTEM', 'SYSTEM');
insert into category_params (id, category_id, "name", description, data_type, created_by, last_modified_by)
values ('5d8536d4-80a2-4205-9781-9e857e8a4c2b', '00ef066e-172b-46b4-b607-6da1621b22fa', 'DELIVERY_BY', 'Delivery By', 'TEXT',
'SYSTEM', 'SYSTEM');
insert into category_params (id, category_id, "name", description, data_type, created_by, last_modified_by)
values ('1a32464d-3b40-4932-8487-892773e84e8b', '00ef066e-172b-46b4-b607-6da1621b22fa', 'DISCOUNT', 'discount', 'NUMBER',
'SYSTEM', 'SYSTEM');
insert into category_params (id, category_id, "name", description, data_type, created_by, last_modified_by)
values ('9f393d0d-ce05-4f4d-be10-cad5691dc34a', '00ef066e-172b-46b4-b607-6da1621b22fa', 'REDIRECT_URI', 'redirect uri', 'URI',
'SYSTEM', 'SYSTEM');


-- Image
insert into params_dom_config (id, app_id, param_id, dom_path, element_type, attribute_path, created_by, last_modified_by) values
('cc6386b0-b04d-44e6-b3e2-d7bd531c47ea', 'eb95c3f0-9304-4e7e-abc6-afad8b098e4a', 'aaa8552e-59c0-43fd-b375-66aa41430d3e',
'.s-product-image-container .s-image', 'img', 'src', 'SYSTEM', 'SYSTEM');

-- Product Name
insert into params_dom_config (id, app_id, param_id, dom_path, element_type, attribute_path, created_by, last_modified_by) values
('79f07123-f25d-4813-a6a7-3bc6087a5026', 'eb95c3f0-9304-4e7e-abc6-afad8b098e4a', '3ed6993f-84f8-4088-b282-596b7b88134e',
'.a-size-base-plus.a-color-base.a-text-normal', 'span', 'text', 'SYSTEM', 'SYSTEM');

-- Price
insert into params_dom_config (id, app_id, param_id, dom_path, element_type, attribute_path, created_by, last_modified_by) values
('17505eb1-dedd-412a-ba3e-2be1a7f05adf', 'eb95c3f0-9304-4e7e-abc6-afad8b098e4a', 'f65d74b5-3e42-40ae-b331-a6f0c2971399',
'.a-price .a-offscreen', 'span', 'text', 'SYSTEM', 'SYSTEM');

-- Rating
insert into params_dom_config (id, app_id, param_id, dom_path, element_type, attribute_path, created_by, last_modified_by) values
('d362326f-a59f-4900-85e9-296f2d0aefaf', 'eb95c3f0-9304-4e7e-abc6-afad8b098e4a', '66c8e613-0bdd-4566-abc1-34e538b21f74',
'.a-size-base.puis-normal-weight-text', 'span', 'text', 'SYSTEM', 'SYSTEM');

-- Redirect_URI
insert into params_dom_config (id, app_id, param_id, dom_path, element_type, attribute_path, created_by, last_modified_by) values
('6f2916f2-d5fe-4a40-8ed0-3b6fe8640783', 'eb95c3f0-9304-4e7e-abc6-afad8b098e4a', '9f393d0d-ce05-4f4d-be10-cad5691dc34a',
'.a-link-normal.s-underline-text.s-underline-link-text.s-link-style.a-text-normal', 'a', 'href', 'SYSTEM', 'SYSTEM');
