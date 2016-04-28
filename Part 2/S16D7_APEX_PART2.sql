set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.3.00.03'
,p_default_workspace_id=>29983703469519774991
,p_default_application_id=>107739
,p_default_owner=>'COMPANIES'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 107739 - S16_Project_PT2
--
-- Application Export:
--   Application:     107739
--   Name:            S16_Project_PT2
--   Date and Time:   03:46 Thursday April 28, 2016
--   Exported By:     SCOTTYJACKSON97@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.3.00.03
--   Instance ID:     63113759365424
--

-- Application Statistics:
--   Pages:                     23
--     Items:                  323
--     Processes:               22
--     Regions:                 50
--     Buttons:                 32
--   Shared Components:
--     Logic:
--       Web Services:          14
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--         Entries:              1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              13
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               9
--       LOVs:                   1
--       Shortcuts:              1
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,107739)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'CANNATA')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'S16_Project_PT2')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'S16_PROJECT_PT2')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'BB2EC5D7ABD77122DED42FAF4271262F320C85430210FFA366F2EF22F2017933'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(90038896590016283127)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:S16 Project Part II'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_substitution_string_01=>'LOGO'
,p_substitution_value_01=>'S16_PROJECT : PART II'
,p_last_updated_by=>'SCOTTYJACKSON97@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428034520'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(90038854006956283049)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(90038896776026283136)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(60696996590859725082)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Person'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,16,17,18,19,21,23,24,25,26,27,28,33,34,35,42,44,45'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(60833615037045824940)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Employees'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(60696996590859725082)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31430858097267306492)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Project-Employees'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(60696996590859725082)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31431625194833500216)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Managers'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(60696996590859725082)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'15'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31519379229997092339)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Interim-Managers'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(60696996590859725082)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'17'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31701738545809598817)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'President'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(60696996590859725082)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'33'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31705907945837376907)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Previous-Employees'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(60696996590859725082)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'35'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31841935838887300586)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Manager-Projects'
,p_list_item_link_target=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(60696996590859725082)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'45'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31545728767879592288)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Projects'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'29,37,39,46'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31716466293886741216)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Previous-Projects'
,p_list_item_link_target=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(31545728767879592288)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'37'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31736118938252039174)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Current-Projects'
,p_list_item_link_target=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(31545728767879592288)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'39'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31844753195500818310)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Employees working on Project'
,p_list_item_link_target=>'f?p=&APP_ID.:46:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(31545728767879592288)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'46'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31546993314591748133)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Departments'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'31'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(90038896260976283122)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(90038896443023283126)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_current_for_pages=>'&LOGOUT_URL.'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(90038853645783283049)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(90038853806241283049)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(90038853847724283049)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(31517435400481901914)
,p_lov_name=>'USERTYPES'
,p_lov_query=>'.'||wwv_flow_api.id(31517435400481901914)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(31517435734386901917)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Employee'
,p_lov_return_value=>'Employee'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(31517436112765901918)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Interim Manager'
,p_lov_return_value=>'Interim_Manager'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(31517436521879901918)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Manager'
,p_lov_return_value=>'Manager'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(31517436903503901918)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'President'
,p_lov_return_value=>'President'
);
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(90038896715755283132)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(90038897043789283138)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(90038854070330283050)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038854204020283051)
,p_page_template_id=>wwv_flow_api.id(90038854070330283050)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038854250711283051)
,p_page_template_id=>wwv_flow_api.id(90038854070330283050)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038854407750283051)
,p_page_template_id=>wwv_flow_api.id(90038854070330283050)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038854439739283051)
,p_page_template_id=>wwv_flow_api.id(90038854070330283050)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038854592251283051)
,p_page_template_id=>wwv_flow_api.id(90038854070330283050)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038854698747283051)
,p_page_template_id=>wwv_flow_api.id(90038854070330283050)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038854798306283051)
,p_page_template_id=>wwv_flow_api.id(90038854070330283050)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038854872187283051)
,p_page_template_id=>wwv_flow_api.id(90038854070330283050)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(90038854952164283054)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038855046507283054)
,p_page_template_id=>wwv_flow_api.id(90038854952164283054)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038855168339283054)
,p_page_template_id=>wwv_flow_api.id(90038854952164283054)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038855235138283054)
,p_page_template_id=>wwv_flow_api.id(90038854952164283054)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038855351492283054)
,p_page_template_id=>wwv_flow_api.id(90038854952164283054)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038855481070283054)
,p_page_template_id=>wwv_flow_api.id(90038854952164283054)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038855566733283054)
,p_page_template_id=>wwv_flow_api.id(90038854952164283054)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038855636169283054)
,p_page_template_id=>wwv_flow_api.id(90038854952164283054)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038855817831283054)
,p_page_template_id=>wwv_flow_api.id(90038854952164283054)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038855881423283054)
,p_page_template_id=>wwv_flow_api.id(90038854952164283054)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(90038855924672283054)
,p_theme_id=>42
,p_name=>'Login'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="html-login no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="html-login no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="html-login no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038856092125283055)
,p_page_template_id=>wwv_flow_api.id(90038855924672283054)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038856138919283055)
,p_page_template_id=>wwv_flow_api.id(90038855924672283054)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(90038856309853283055)
,p_theme_id=>42
,p_name=>'Master Detail'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038856371231283055)
,p_page_template_id=>wwv_flow_api.id(90038856309853283055)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038856487881283055)
,p_page_template_id=>wwv_flow_api.id(90038856309853283055)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038856548767283055)
,p_page_template_id=>wwv_flow_api.id(90038856309853283055)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038856643834283055)
,p_page_template_id=>wwv_flow_api.id(90038856309853283055)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038856743409283055)
,p_page_template_id=>wwv_flow_api.id(90038856309853283055)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038856845236283055)
,p_page_template_id=>wwv_flow_api.id(90038856309853283055)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038856975599283055)
,p_page_template_id=>wwv_flow_api.id(90038856309853283055)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038857061564283055)
,p_page_template_id=>wwv_flow_api.id(90038856309853283055)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038857214075283055)
,p_page_template_id=>wwv_flow_api.id(90038856309853283055)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(90038857279547283055)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038857419723283056)
,p_page_template_id=>wwv_flow_api.id(90038857279547283055)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038857512600283056)
,p_page_template_id=>wwv_flow_api.id(90038857279547283055)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038857557064283056)
,p_page_template_id=>wwv_flow_api.id(90038857279547283055)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038857713246283056)
,p_page_template_id=>wwv_flow_api.id(90038857279547283055)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038857808799283056)
,p_page_template_id=>wwv_flow_api.id(90038857279547283055)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038857828005283056)
,p_page_template_id=>wwv_flow_api.id(90038857279547283055)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038858014699283056)
,p_page_template_id=>wwv_flow_api.id(90038857279547283055)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(90038858101055283056)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-wrapper">',
'    <div class="t-Dialog-header">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'500'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--standard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038858126881283056)
,p_page_template_id=>wwv_flow_api.id(90038858101055283056)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038858241401283056)
,p_page_template_id=>wwv_flow_api.id(90038858101055283056)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038858372421283056)
,p_page_template_id=>wwv_flow_api.id(90038858101055283056)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(90038858469036283056)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038858615346283056)
,p_page_template_id=>wwv_flow_api.id(90038858469036283056)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038858688488283057)
,p_page_template_id=>wwv_flow_api.id(90038858469036283056)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038858736616283057)
,p_page_template_id=>wwv_flow_api.id(90038858469036283056)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038858906285283057)
,p_page_template_id=>wwv_flow_api.id(90038858469036283056)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038858933074283057)
,p_page_template_id=>wwv_flow_api.id(90038858469036283056)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038859107595283057)
,p_page_template_id=>wwv_flow_api.id(90038858469036283056)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038859126099283057)
,p_page_template_id=>wwv_flow_api.id(90038858469036283056)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038859266748283057)
,p_page_template_id=>wwv_flow_api.id(90038858469036283056)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(90038859410763283057)
,p_theme_id=>42
,p_name=>'Standard'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038859487797283057)
,p_page_template_id=>wwv_flow_api.id(90038859410763283057)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038859600868283057)
,p_page_template_id=>wwv_flow_api.id(90038859410763283057)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038859701194283057)
,p_page_template_id=>wwv_flow_api.id(90038859410763283057)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038859766492283057)
,p_page_template_id=>wwv_flow_api.id(90038859410763283057)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038859878953283057)
,p_page_template_id=>wwv_flow_api.id(90038859410763283057)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038860021433283057)
,p_page_template_id=>wwv_flow_api.id(90038859410763283057)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038860060303283057)
,p_page_template_id=>wwv_flow_api.id(90038859410763283057)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(90038860220055283057)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Wizard t-Wizard--modal">',
'    <div class=" t-Wizard-steps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Wizard-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Wizard-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--wizard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038860258392283058)
,p_page_template_id=>wwv_flow_api.id(90038860220055283057)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038860385368283058)
,p_page_template_id=>wwv_flow_api.id(90038860220055283057)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038860441858283058)
,p_page_template_id=>wwv_flow_api.id(90038860220055283057)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(90038891059211283093)
,p_template_name=>'Icon'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(90038891179635283093)
,p_template_name=>'Text'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(90038891267637283094)
,p_template_name=>'Text with Icon'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(90038860619447283058)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #BODY#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038860636142283060)
,p_plug_template_id=>wwv_flow_api.id(90038860619447283058)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(90038862112872283064)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(90038862210334283064)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038862267883283064)
,p_plug_template_id=>wwv_flow_api.id(90038862210334283064)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038862359704283064)
,p_plug_template_id=>wwv_flow_api.id(90038862210334283064)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(90038863050567283064)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038863183737283065)
,p_plug_template_id=>wwv_flow_api.id(90038863050567283064)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038863273675283065)
,p_plug_template_id=>wwv_flow_api.id(90038863050567283064)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(90038866470561283067)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038866548583283068)
,p_plug_template_id=>wwv_flow_api.id(90038866470561283067)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038866692418283068)
,p_plug_template_id=>wwv_flow_api.id(90038866470561283067)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(90038868608715283070)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h2 class="t-HeroRegion-title">#TITLE#</h2>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038868649082283070)
,p_plug_template_id=>wwv_flow_api.id(90038868608715283070)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(90038868758083283070)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-body js-regionDialog-body">',
'#BODY#',
'  </div>',
'  <div class="t-DialogRegion-buttons js-regionDialog-buttons">',
'     <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'       <div class="t-ButtonRegion-wrap">',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'       </div>',
'     </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038868893764283070)
,p_plug_template_id=>wwv_flow_api.id(90038868758083283070)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(90038869633567283070)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(90038869987602283071)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038870118075283071)
,p_plug_template_id=>wwv_flow_api.id(90038869987602283071)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(90038870170114283071)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038870276082283071)
,p_plug_template_id=>wwv_flow_api.id(90038870170114283071)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038870350438283071)
,p_plug_template_id=>wwv_flow_api.id(90038870170114283071)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(90038872258003283073)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038872361607283073)
,p_plug_template_id=>wwv_flow_api.id(90038872258003283073)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038872469270283073)
,p_plug_template_id=>wwv_flow_api.id(90038872258003283073)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(90038873468861283074)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(90038873992357283075)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038874036517283075)
,p_plug_template_id=>wwv_flow_api.id(90038873992357283075)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(90038882383756283084)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_theme_id=>42
,p_theme_class_id=>3
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(90038884074001283086)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(90038886128387283088)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(90038886950432283088)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(90038887870014283089)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(90038888326325283089)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({ slide: e.hasClass("js-slide")});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(90038888486661283089)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(90038888606546283090)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(''body'').addClass(''t-PageBody--leftNav'');',
''))
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(90038888716830283090)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_theme_id=>42
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(90038889564306283090)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(90038890083789283091)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(90038874622251283075)
,p_row_template_name=>'Alerts'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(90038874632230283077)
,p_row_template_name=>'Badge List'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(90038876402763283078)
,p_row_template_name=>'Cards'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(90038878446873283081)
,p_row_template_name=>'Comments'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(90038878891773283081)
,p_row_template_name=>'Search Results'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(90038879000876283082)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(90038879000876283082)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(90038880247988283083)
,p_row_template_name=>'Timeline'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline">',
''))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(90038880430756283083)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(90038881447653283084)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(90038890527342283091)
,p_template_name=>'Hidden'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(90038890687259283092)
,p_template_name=>'Optional'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(90038890758371283092)
,p_template_name=>'Optional - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(90038890918432283092)
,p_template_name=>'Required'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(90038890979669283092)
,p_template_name=>'Required - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(90038891650594283094)
,p_name=>'Breadcrumb'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><span class="t-Breadcrumb-label">#NAME#</span></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(90038891912928283096)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(90038891807933283095)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal">',
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>'))
,p_cust_day_of_week_format=>'<th scope="col" class="uCalDayCol" id="#DY#">#IDAY#</th>'
,p_cust_month_open_format=>'<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="uDay today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="uDay nonday" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="uDayTitle weekendday">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="uDay" headers="#DY#">'
,p_cust_weekend_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uDayData">#DATA#</span>',
'</td>'))
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="uCalHour" id="#TIME#">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly">',
'<h1 class="uMonth">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="uCalDayCol" id="#DY#">',
'  <span class="visible-desktop">#DD# #IDAY#</span>',
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">'
,p_cust_wk_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_wk_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_open_format=>'<td class="uDay weekend" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_close_format=>'</div></td>'
,p_agenda_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(90038892292475283100)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(90038859410763283057)
,p_default_dialog_template=>wwv_flow_api.id(90038858101055283056)
,p_error_template=>wwv_flow_api.id(90038855924672283054)
,p_printer_friendly_template=>wwv_flow_api.id(90038859410763283057)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(90038855924672283054)
,p_default_button_template=>wwv_flow_api.id(90038891179635283093)
,p_default_region_template=>wwv_flow_api.id(90038870170114283071)
,p_default_chart_template=>wwv_flow_api.id(90038870170114283071)
,p_default_form_template=>wwv_flow_api.id(90038870170114283071)
,p_default_reportr_template=>wwv_flow_api.id(90038870170114283071)
,p_default_tabform_template=>wwv_flow_api.id(90038870170114283071)
,p_default_wizard_template=>wwv_flow_api.id(90038870170114283071)
,p_default_menur_template=>wwv_flow_api.id(90038873468861283074)
,p_default_listr_template=>wwv_flow_api.id(90038870170114283071)
,p_default_irr_template=>wwv_flow_api.id(90038869633567283070)
,p_default_report_template=>wwv_flow_api.id(90038879000876283082)
,p_default_label_template=>wwv_flow_api.id(90038890687259283092)
,p_default_menu_template=>wwv_flow_api.id(90038891650594283094)
,p_default_calendar_template=>wwv_flow_api.id(90038891807933283095)
,p_default_list_template=>wwv_flow_api.id(90038886128387283088)
,p_default_nav_list_template=>wwv_flow_api.id(90038889564306283090)
,p_default_top_nav_list_temp=>wwv_flow_api.id(90038889564306283090)
,p_default_side_nav_list_temp=>wwv_flow_api.id(90038888606546283090)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(90038862210334283064)
,p_default_dialogr_template=>wwv_flow_api.id(90038862112872283064)
,p_default_option_label=>wwv_flow_api.id(90038890687259283092)
,p_default_required_label=>wwv_flow_api.id(90038890918432283092)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(90038888486661283089)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.0/')
,p_files_version=>62
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.regionDisplaySelector#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#tooltipManager#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/hammer/2.0.3/hammer#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.0/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(90038892001067283097)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(90038892109649283097)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(90038892196732283097)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038860918024283061)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038861105439283062)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038861299990283062)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038862440593283064)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038862676192283064)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038863359334283065)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038863769089283065)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038864394745283066)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038864985812283066)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038865182087283066)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038866041216283067)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038867677153283068)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038869113395283070)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038872600613283073)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038872733322283074)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038873130482283074)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038873525380283074)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038874177451283075)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038874808738283077)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038874955415283077)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038876581057283078)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the amount of text to display for the Card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038877246400283079)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the style and design of the cards in the report.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038877591724283080)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038878253301283081)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038878566637283081)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038879049611283082)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038879369821283082)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038879583130283082)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038880574230283083)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038882484758283085)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038883254703283086)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038884321191283086)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038885013709283087)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038885278711283087)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038885999476283087)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038886712406283088)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038889080595283090)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038890220719283091)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038891369523283094)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038892386792283118)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038892528589283118)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038892772680283118)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038892932455283118)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038893124612283119)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038893569540283119)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038894272311283119)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038894675232283120)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038894887457283121)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038895116115283121)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038895268028283121)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038895527511283121)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90038895864749283121)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038860763209283060)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(90038860619447283058)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038860946806283061)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90038860619447283058)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(90038860918024283061)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038861223404283062)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038860619447283058)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(90038861105439283062)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038861368826283062)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038860619447283058)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(90038861299990283062)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038861451344283062)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(90038860619447283058)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(90038860918024283061)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038861578716283063)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(90038860619447283058)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(90038861105439283062)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038861718288283063)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(90038860619447283058)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(90038860918024283061)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038861817470283063)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90038860619447283058)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(90038861105439283062)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038861890456283063)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038860619447283058)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(90038860918024283061)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038861949850283063)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90038860619447283058)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(90038861299990283062)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038862608405283064)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(90038862210334283064)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(90038862440593283064)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038862757187283064)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(90038862210334283064)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(90038862676192283064)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038862858476283064)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(90038862210334283064)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(90038862440593283064)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038863021715283064)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(90038862210334283064)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(90038862676192283064)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038863437251283065)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90038863050567283064)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(90038863359334283065)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038863599130283065)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(90038863050567283064)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(90038863359334283065)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038863701421283065)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(90038863050567283064)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(90038863359334283065)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038863843659283065)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038863050567283064)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(90038863769089283065)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038864008630283066)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90038863050567283064)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(90038863769089283065)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038864108252283066)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(90038863050567283064)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(90038863769089283065)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038864201820283066)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038863050567283064)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(90038863359334283065)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038864272094283066)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(90038863050567283064)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(90038863769089283065)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038864513463283066)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038863050567283064)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(90038864394745283066)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038864576820283066)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90038863050567283064)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(90038864394745283066)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038864648331283066)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(90038863050567283064)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(90038864394745283066)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038864729889283066)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(90038863050567283064)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(90038864394745283066)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038864904832283066)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(90038863050567283064)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(90038864394745283066)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038865056080283066)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038863050567283064)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(90038864985812283066)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038865320439283066)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038863050567283064)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(90038865182087283066)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038865383605283067)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90038863050567283064)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(90038864985812283066)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038865489619283067)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038863050567283064)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038865601862283067)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038863050567283064)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(90038862440593283064)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038865663403283067)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90038863050567283064)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038865748588283067)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90038863050567283064)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(90038865182087283066)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038865922667283067)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(90038863050567283064)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038865942729283067)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(90038863050567283064)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038866128806283067)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038863050567283064)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(90038866041216283067)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038866310745283067)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90038863050567283064)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(90038866041216283067)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038866372357283067)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90038863050567283064)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(90038862440593283064)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038866729926283068)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038866470561283067)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(90038863769089283065)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038866864472283068)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90038866470561283067)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(90038863769089283065)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038867011242283068)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(90038866470561283067)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(90038863769089283065)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038867106823283068)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(90038866470561283067)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(90038863769089283065)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038867163212283068)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038866470561283067)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(90038864394745283066)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038867237455283068)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90038866470561283067)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(90038864394745283066)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038867339374283068)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(90038866470561283067)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(90038864394745283066)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038867518566283068)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(90038866470561283067)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(90038864394745283066)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038867598350283068)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(90038866470561283067)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(90038864394745283066)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038867749083283068)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90038866470561283067)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(90038867677153283068)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038867831702283069)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038866470561283067)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(90038867677153283068)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038867997451283069)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90038866470561283067)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(90038865182087283066)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038868043046283069)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038866470561283067)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038868184734283069)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038866470561283067)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(90038862440593283064)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038868258339283070)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(90038866470561283067)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(90038862440593283064)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038868408571283070)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038866470561283067)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(90038865182087283066)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038868449095283070)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90038866470561283067)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(90038862440593283064)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038868938525283070)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90038868758083283070)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038869211851283070)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(90038868758083283070)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(90038869113395283070)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038869284478283070)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90038868758083283070)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(90038869113395283070)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038869370827283070)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038868758083283070)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038869484673283070)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(90038868758083283070)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038869580822283070)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038868758083283070)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(90038869113395283070)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038869776734283071)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038869633567283070)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038869847809283071)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90038869633567283070)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038870435360283071)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038870170114283071)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(90038863769089283065)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038870563954283071)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90038870170114283071)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(90038863769089283065)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038870657214283071)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(90038870170114283071)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(90038863769089283065)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038870811219283071)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(90038870170114283071)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(90038863769089283065)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038870886852283071)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038870170114283071)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(90038864394745283066)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038870924982283072)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90038870170114283071)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(90038864394745283066)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038871082057283072)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(90038870170114283071)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(90038864394745283066)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038871154461283072)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(90038870170114283071)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(90038864394745283066)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038871294187283073)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(90038870170114283071)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(90038864394745283066)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038871345986283073)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038870170114283071)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(90038864985812283066)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038871518836283073)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90038870170114283071)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(90038865182087283066)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038871604503283073)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90038870170114283071)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(90038864985812283066)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038871680986283073)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038870170114283071)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038871806843283073)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038870170114283071)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(90038862440593283064)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038871881155283073)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(90038870170114283071)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(90038862440593283064)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038871968647283073)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038870170114283071)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(90038865182087283066)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038872053460283073)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90038870170114283071)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038872136924283073)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90038870170114283071)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(90038862440593283064)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038872710964283074)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038872258003283073)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(90038872600613283073)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038872895096283074)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90038872258003283073)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(90038872733322283074)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038872980739283074)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038872258003283073)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038873086961283074)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038872258003283073)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(90038872733322283074)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038873320138283074)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90038872258003283073)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(90038873130482283074)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038873350752283074)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038872258003283073)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(90038873130482283074)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038873701480283074)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(90038873468861283074)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(90038873525380283074)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038873752507283074)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(90038873468861283074)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038873916719283075)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(90038873468861283074)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(90038873525380283074)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038874259019283075)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90038873992357283075)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(90038874177451283075)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038874410702283075)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038873992357283075)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(90038874177451283075)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038874453859283075)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038873992357283075)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038874918207283077)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(90038874632230283077)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(90038874808738283077)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038875121900283077)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(90038874632230283077)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(90038874955415283077)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038875212479283077)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(90038874632230283077)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(90038874808738283077)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038875235623283077)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(90038874632230283077)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(90038874955415283077)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038875343433283077)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(90038874632230283077)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(90038874808738283077)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038875455336283077)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(90038874632230283077)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(90038874955415283077)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038875542657283078)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(90038874632230283077)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(90038874955415283077)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038875624915283078)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(90038874632230283077)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(90038874808738283077)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038875788362283078)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(90038874632230283077)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(90038874808738283077)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038875843551283078)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(90038874632230283077)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(90038874955415283077)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038875924867283078)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(90038874632230283077)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(90038874955415283077)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038876083845283078)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(90038874632230283077)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(90038874955415283077)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038876217388283078)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(90038874632230283077)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038876265439283078)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(90038874632230283077)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(90038874955415283077)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038876437369283078)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(90038876402763283078)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(90038874955415283077)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038876644848283078)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(90038876402763283078)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(90038876581057283078)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038876730922283079)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(90038876402763283078)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(90038874955415283077)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038876856866283079)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(90038876402763283078)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(90038876581057283078)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038876976797283079)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(90038876402763283078)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(90038874955415283077)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038877088988283079)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(90038876402763283078)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(90038876581057283078)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038877199684283079)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(90038876402763283078)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(90038874955415283077)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038877397411283079)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(90038876402763283078)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(90038877246400283079)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038877468664283079)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(90038876402763283078)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(90038877246400283079)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038877719922283080)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(90038876402763283078)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(90038877591724283080)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038877823455283080)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(90038876402763283078)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(90038877591724283080)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038877919478283080)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(90038876402763283078)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(90038877246400283079)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038878011522283080)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(90038876402763283078)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(90038874955415283077)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038878065816283080)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(90038876402763283078)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(90038876581057283078)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038878186953283081)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(90038876402763283078)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(90038874955415283077)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038878416253283081)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(90038876402763283078)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(90038878253301283081)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038878711887283081)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(90038878446873283081)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(90038878566637283081)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038878792040283081)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(90038878446873283081)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(90038878566637283081)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038879133199283082)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(90038879000876283082)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(90038879049611283082)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038879259926283082)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(90038879000876283082)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(90038879049611283082)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038879519814283082)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(90038879000876283082)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(90038879369821283082)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038879635690283082)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(90038879000876283082)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(90038879583130283082)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038879765569283082)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(90038879000876283082)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(90038879583130283082)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038879888876283082)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(90038879000876283082)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(90038879583130283082)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038879957552283082)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(90038879000876283082)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(90038879369821283082)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038880095886283083)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(90038879000876283082)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038880154580283083)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(90038879000876283082)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(90038879583130283082)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038880374741283083)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(90038880247988283083)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(90038877246400283079)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact video of timeline with smaller font-sizes and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038880641820283083)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(90038880430756283083)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(90038880574230283083)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038880780978283083)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(90038880430756283083)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(90038880574230283083)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038880867579283083)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(90038880430756283083)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(90038880574230283083)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038881008826283083)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(90038880430756283083)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(90038874955415283077)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038881050890283083)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(90038880430756283083)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(90038874955415283077)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038881209435283083)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(90038880430756283083)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(90038880574230283083)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038881280427283083)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(90038880430756283083)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(90038880574230283083)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038881389465283084)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(90038880430756283083)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(90038880574230283083)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038881592156283084)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(90038881447653283084)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(90038880574230283083)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038881685273283084)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(90038881447653283084)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(90038880574230283083)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038881819092283084)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(90038881447653283084)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(90038880574230283083)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038881895434283084)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(90038881447653283084)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(90038874955415283077)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038882012631283084)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(90038881447653283084)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(90038874955415283077)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038882113093283084)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(90038881447653283084)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(90038880574230283083)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038882148449283084)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(90038881447653283084)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(90038880574230283083)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038882286769283084)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(90038881447653283084)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(90038880574230283083)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038882568101283085)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(90038882383756283084)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(90038882484758283085)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038882709941283085)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(90038882383756283084)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(90038882484758283085)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038882817729283085)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(90038882383756283084)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(90038882484758283085)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038882918794283086)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(90038882383756283084)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(90038882484758283085)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038882953591283086)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(90038882383756283084)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(90038882484758283085)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038883055501283086)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(90038882383756283084)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(90038882484758283085)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038883156012283086)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(90038882383756283084)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(90038882484758283085)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038883412553283086)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(90038882383756283084)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(90038883254703283086)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038883472070283086)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(90038882383756283084)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(90038883254703283086)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038883619580283086)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90038882383756283084)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038883700196283086)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90038882383756283084)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(90038883254703283086)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038883725957283086)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90038882383756283084)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(90038882484758283085)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038883901115283086)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(90038882383756283084)
,p_css_classes=>'.t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(90038883254703283086)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038883979438283086)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(90038882383756283084)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(90038883254703283086)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038884199557283086)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90038884074001283086)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(90038882484758283085)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038884327590283086)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90038884074001283086)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(90038884321191283086)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038884506615283087)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(90038884074001283086)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(90038882484758283085)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038884555529283087)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(90038884074001283086)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(90038884321191283086)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038884708972283087)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(90038884074001283086)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(90038882484758283085)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038884796395283087)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(90038884074001283086)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(90038884321191283086)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038884853192283087)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(90038884074001283086)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(90038882484758283085)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038885092574283087)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90038884074001283086)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(90038885013709283087)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038885166743283087)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(90038884074001283086)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(90038885013709283087)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038885372708283087)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90038884074001283086)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(90038885278711283087)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038885503947283087)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(90038884074001283086)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(90038885278711283087)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038885606677283087)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(90038884074001283086)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(90038885013709283087)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038885681754283087)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(90038884074001283086)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(90038882484758283085)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038885749627283087)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(90038884074001283086)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(90038884321191283086)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038885866336283087)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(90038884074001283086)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(90038882484758283085)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038886057681283088)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90038884074001283086)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(90038885999476283087)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038886282899283088)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90038886128387283088)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(90038885013709283087)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038886416568283088)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(90038886128387283088)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038886475966283088)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90038886128387283088)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038886611444283088)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(90038886128387283088)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038886749358283088)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(90038886128387283088)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(90038886712406283088)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038886865757283088)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90038886128387283088)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(90038886712406283088)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038887096477283088)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90038886950432283088)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(90038882484758283085)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038887156277283088)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(90038886950432283088)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(90038882484758283085)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038887228190283088)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(90038886950432283088)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(90038882484758283085)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038887348754283088)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(90038886950432283088)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(90038882484758283085)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038887425087283088)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(90038886950432283088)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038887575715283088)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(90038886950432283088)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038887655591283089)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90038886950432283088)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Shows an icon for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038887736547283089)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(90038886950432283088)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(90038882484758283085)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038887967915283089)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(90038887870014283089)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038888077092283089)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90038887870014283089)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038888134552283089)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(90038887870014283089)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038888298721283089)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(90038887870014283089)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038888817762283090)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(90038888716830283090)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(90038885278711283087)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038888832476283090)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(90038888716830283090)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(90038882484758283085)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038889004501283090)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90038888716830283090)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(90038885278711283087)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038889151925283090)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90038888716830283090)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(90038889080595283090)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038889260566283090)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(90038888716830283090)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(90038885013709283087)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038889420128283090)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90038888716830283090)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(90038885013709283087)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038889427538283090)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(90038888716830283090)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(90038889080595283090)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038889712023283091)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(90038889564306283090)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038889751834283091)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(90038889564306283090)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038889834918283091)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(90038889564306283090)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038889947007283091)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(90038889564306283090)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038890318933283091)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90038890083789283091)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(90038890220719283091)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038890389489283091)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(90038890083789283091)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(90038890220719283091)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038890473731283091)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(90038890083789283091)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(90038890220719283091)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038891461685283094)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(90038891267637283094)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(90038891369523283094)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038891614725283094)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(90038891267637283094)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(90038891369523283094)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038892429718283118)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(90038892386792283118)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038892635053283118)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large Left Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(90038892528589283118)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038892888373283118)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large Right Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(90038892772680283118)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038893043603283118)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(90038892932455283118)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038893226458283119)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(90038893124612283119)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038893381888283119)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small Left Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(90038892528589283118)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038893447458283119)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small Right Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(90038892772680283118)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038893707191283119)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(90038893569540283119)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038893767054283119)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(90038893569540283119)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038893923541283119)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(90038893569540283119)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038894016808283119)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(90038892386792283118)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038894053905283119)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(90038893124612283119)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038894127494283119)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(90038892932455283118)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038894379831283119)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(90038894272311283119)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038894467113283120)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(90038892386792283118)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038894623833283120)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(90038892386792283118)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038894786753283120)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(90038894675232283120)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038894989026283121)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(90038894887457283121)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038895175516283121)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(90038895116115283121)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038895383754283121)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(90038895268028283121)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038895437610283121)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(90038895268028283121)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038895662873283121)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(90038895527511283121)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038895735731283121)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(90038894887457283121)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038896018893283122)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(90038895864749283121)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038896096057283122)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038896153978283122)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(90038895864749283121)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(90067114523850119593)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(90038896590016283127)
,p_name=>'No Authentication'
,p_scheme_type=>'NATIVE_DAD'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(90038896404340283122)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_navigation_list_id=>wwv_flow_api.id(90038854006956283049)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(90038888606546283090)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(90038896260976283122)
,p_nav_bar_list_template_id=>wwv_flow_api.id(90038888486661283089)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(90038896404340283122)
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCOTTYJACKSON97@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427034744'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31706173997627026630)
,p_plug_name=>'Login'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90038870170114283071)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(90038897154172283139)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90038873468861283074)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(90038896715755283132)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(90038891650594283094)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31431694322470506530)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31706173997627026630)
,p_button_name=>'Login'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(90038891179635283093)
,p_button_image_alt=>'Login'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31431694205556506529)
,p_name=>'P1_USERTYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31706173997627026630)
,p_prompt=>'Usertype'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'USERTYPES'
,p_lov=>'.'||wwv_flow_api.id(31517435400481901914)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(90038896404340283122)
,p_name=>'Person'
,p_page_mode=>'NORMAL'
,p_step_title=>'Person'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCOTTYJACKSON97@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160421204832'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(60696997026069725082)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90038870170114283071)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(60697006011885725095)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(90038870170114283071)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P2_PERSONJSON''',
'',
'--select				',
'--jt1.first_name	first_name,			',
'--jt2.last_name	last_name',
'--from	apex_collections	t,',
'--json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'--json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2',
'--where	t.collection_name	=	''P2_PERSONJSON''	',
'',
'--select				',
'--jt2.sal	sal',
'--from	apex_collections	t,',
'--json_table(t.clob001,	''$.SAL[*]''	COLUMNS	rid	for	ordinality,	sal	number	path	''$'')	jt2',
'--where	t.collection_name	=	''P2_DOREST_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(90038879000876283082)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(60697688629552875646)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(60697639378695869775)
,p_plug_name=>'Person'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90038869633567283070)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.first_name	first_name,			',
'jt2.last_name	last_name,			',
'jt3.person_id	person_id,			',
'jt4.home_address	home_address,			',
'jt5.zipcode	zipcode,			',
'jt6.home_phone	home_phone,			',
'jt7.us_citizen	us_citizen',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7',
'where	t.collection_name	=	''P2_PERSONJSON''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid',
'',
'--{"person_id":[1, 2, 3, 4, 5, 9, 6, 7, 8],"first_name":["Bill", "Diane", "Jennifer", "Alice", "George", "Mike", "Susan", "Steven", "Henry"],"last_name":["Dawer", "Wall", "Brown", "Dawer", "Layton", "Dawer", "Petro", "Williams", "Silverstone"],"home_'
||'address":["432 Hill Rd", "32 Cannon Dr", "35 Palm Lane", "432 Hill Rd", "347 Nueces St", "432 Hill Rd", "323 Country Lane", "3 Seton St", "100 Gates St"],"zipcode":[78705, 78705, 73014, 78021, 78705, 78705, 73421, 78705, 70007],"home_phone":[7891903,'
||' 7891903, 2360884, 6541658, 8798798, 7891903, 6541238, 8798712, 4565404],"us_citizen":["true", "true", "true", "false", "true", "true", "true", "false", "true"]}'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(60697639492997869775)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'PHIL.CANNATA@ORACLE.COM'
,p_internal_uid=>29830773734913338901
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60697639808956869778)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60697640166127869779)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60698232419229591491)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Person Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60698233149448591496)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Home Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60698243798540591498)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60698244459003591499)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Home Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60698245220006591499)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Us Citizen'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(60697641033742870255)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'298307753'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(60696997260781725083)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(60697639378695869775)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(90038891179635283093)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(60696997659189725084)
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60696998479474725086)
,p_name=>'P2_LASTNAME'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(60696997026069725082)
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60696999333631725088)
,p_name=>'P2_DB'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(60696997026069725082)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60697000100053725088)
,p_name=>'P2_USER'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(60696997026069725082)
,p_item_default=>'WDBD7'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60697000878389725089)
,p_name=>'P2_PASS'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(60696997026069725082)
,p_item_default=>'localhost:7041'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60697001714577725090)
,p_name=>'P2_MODE'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(60696997026069725082)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60697002518501725091)
,p_name=>'P2_MODEL'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(60696997026069725082)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60697003288899725092)
,p_name=>'P2_RETURNDIMENSIONS'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(60696997026069725082)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60697004085640725092)
,p_name=>'P2_RETURNFOR'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(60696997026069725082)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60697004930462725093)
,p_name=>'P2_QUERY'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(60696997026069725082)
,p_item_default=>'"from person retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(60696998085093725084)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'59172036190322391033:59172036377331391039'
,p_attribute_01=>wwv_flow_api.id(90038902135415921913)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P2_PERSONJSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(90038896404340283122)
,p_name=>'Employee'
,p_page_mode=>'NORMAL'
,p_step_title=>'Employee'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCOTTYJACKSON97@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427204552'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(60702753429029122578)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90038870170114283071)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(60702783850279122579)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(60702753429029122578)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(90038891179635283093)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(60702784182331122580)
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(60702783850279122579)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60702784960266122581)
,p_name=>'P4_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(60702753429029122578)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60702785834109122582)
,p_name=>'P4_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(60702753429029122578)
,p_item_default=>'WDBD7'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60702786565304122583)
,p_name=>'P4_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(60702753429029122578)
,p_item_default=>'localhost:7041'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60702787378614122583)
,p_name=>'P4_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(60702753429029122578)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60702788171035122584)
,p_name=>'P4_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(60702753429029122578)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60702789053639122585)
,p_name=>'P4_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(60702753429029122578)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60702789776709122585)
,p_name=>'P4_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(60702753429029122578)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60702790625143122586)
,p_name=>'P4_EMPLOYEEID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(60702753429029122578)
,p_item_default=>'0'
,p_prompt=>'Employeeid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60702791429799122587)
,p_name=>'P4_SALARY'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(60702753429029122578)
,p_item_default=>'0'
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60702792236666122588)
,p_name=>'P4_SALARYEXCEPTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(60702753429029122578)
,p_item_default=>'"false"'
,p_prompt=>'Salaryexception'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60702792974558122589)
,p_name=>'P4_PERSONID'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(60702753429029122578)
,p_item_default=>'0'
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60702793783282122589)
,p_name=>'P4_FIRSTNAME'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(60702753429029122578)
,p_item_default=>'""'
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60702794582520122590)
,p_name=>'P4_LASTNAME'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(60702753429029122578)
,p_item_default=>'""'
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60702795418179122591)
,p_name=>'P4_HOMEADDRESS'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(60702753429029122578)
,p_item_default=>'""'
,p_prompt=>'Homeaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60702796174795122591)
,p_name=>'P4_ZIPCODE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(60702753429029122578)
,p_item_default=>'0'
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60702796958746122592)
,p_name=>'P4_HOMEPHONE'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(60702753429029122578)
,p_item_default=>'0'
,p_prompt=>'Homephone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60702797846185122593)
,p_name=>'P4_USCITIZEN'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(60702753429029122578)
,p_item_default=>'"true"'
,p_prompt=>'Uscitizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60702798647716122593)
,p_name=>'P4_QUERY'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(60702753429029122578)
,p_item_default=>'''insert employee (employee-id := ''employeeid'', salary := ''salary'', salary-exception := ''salaryexception'', person-id := ''personid'', first-name := ''firstname'', last-name := ''lastname'', home_address := ''homeaddress'', zipcode := ''zipcode'', home-phone := '
||'''homephone'', us-citizen := ''uscitizen'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>400
,p_cMaxlength=>400
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(60702784560167122580)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'29834239716284726510:29834239959095726514'
,p_attribute_01=>wwv_flow_api.id(60701105717180257388)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P4_EMPLOYEEJSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(60702783850279122579)
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(90038896404340283122)
,p_name=>'Employee'
,p_page_mode=>'NORMAL'
,p_step_title=>'Employee'
,p_step_sub_title=>'Employee'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCOTTYJACKSON97@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427204455'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(60833512917548804566)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90038870170114283071)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(60833530489553804579)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(90038870170114283071)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P5_EMPLOYEEJSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(90038879000876283082)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(60833530912569804580)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(60833531333312804583)
,p_plug_name=>'Employees'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90038869633567283070)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.first_name	first_name,			',
'jt2.last_name	last_name,			',
'jt3.person_id	person_id,			',
'jt4.home_address	home_address,			',
'jt5.zipcode	zipcode,			',
'jt6.home_phone	home_phone,			',
'jt7.us_citizen	us_citizen,			',
'jt8.employee_id	employee_id,			',
'jt9.salary	salary,			',
'jt10.salary_exception salary_exception',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar path ''$'') jt8,',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt9,',
'json_table(t.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar path ''$'') jt10',
'where	t.collection_name	=	''P5_EMPLOYEEJSON''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid and jt8.rid = jt9.rid and jt9.rid = jt10.rid',
'',
'--{"person_id":[1, 2, 3, 4, 5, 9, 6, 7, 8],"first_name":["Bill", "Diane", "Jennifer", "Alice", "George", "Mike", "Susan", "Steven", "Henry"],"last_name":["Dawer", "Wall", "Brown", "Dawer", "Layton", "Dawer", "Petro", "Williams", "Silverstone"],"home_'
||'address":["432 Hill Rd", "32 Cannon Dr", "35 Palm Lane", "432 Hill Rd", "347 Nueces St", "432 Hill Rd", "323 Country Lane", "3 Seton St", "100 Gates St"],"zipcode":[78705, 78705, 73014, 78021, 78705, 78705, 73421, 78705, 70007],"home_phone":[7891903,'
||' 7891903, 2360884, 6541658, 8798798, 7891903, 6541238, 8798712, 4565404],"us_citizen":["true", "true", "true", "false", "true", "true", "true", "false", "true"]}'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(60833531715625804586)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'PHIL.CANNATA@ORACLE.COM'
,p_internal_uid=>29966665957541273712
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60833531809342804589)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60833532165779804591)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60833532610911804594)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Person Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60833533027870804595)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Home Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60833533398684804596)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60833533779111804597)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Home Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60833534191620804598)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Us Citizen'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60833534558339804599)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Employee Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60833534977461804600)
,p_db_column_name=>'SALARY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60833535440654804601)
,p_db_column_name=>'SALARY_EXCEPTION'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Salary Exception'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(60833535787195804602)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'299666701'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:EMPLOYEE_ID:SALARY:SALARY_EXCEPTION'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(60833536563288804606)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(60833531333312804583)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(90038891179635283093)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(60833536164139804604)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(60833531333312804583)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(90038891179635283093)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Employee'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_button_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
':P1_USERTYPE = ''President'' OR',
':P1_USERTYPE = ''Manager'''))
,p_button_condition_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(60833544699295804619)
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60833513320601804568)
,p_name=>'P5_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(60833512917548804566)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60833513678540804570)
,p_name=>'P5_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(60833512917548804566)
,p_item_default=>'WDBD7'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60833524102413804571)
,p_name=>'P5_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(60833512917548804566)
,p_item_default=>'localhost:7041'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60833524507886804571)
,p_name=>'P5_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(60833512917548804566)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60833524952180804571)
,p_name=>'P5_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(60833512917548804566)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60833525309638804572)
,p_name=>'P5_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(60833512917548804566)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60833525695258804572)
,p_name=>'P5_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(60833512917548804566)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60833526082354804573)
,p_name=>'P5_EMPLOYEEID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(60833512917548804566)
,p_prompt=>'Employeeid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60833526514605804573)
,p_name=>'P5_SALARY'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(60833512917548804566)
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60833526953230804574)
,p_name=>'P5_SALARYEXCEPTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(60833512917548804566)
,p_prompt=>'Salaryexception'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60833527355924804574)
,p_name=>'P5_PERSONID'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(60833512917548804566)
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60833527705977804574)
,p_name=>'P5_FIRSTNAME'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(60833512917548804566)
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60833528123249804575)
,p_name=>'P5_LASTNAME'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(60833512917548804566)
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60833528475080804576)
,p_name=>'P5_HOMEADDRESS'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(60833512917548804566)
,p_prompt=>'Homeaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60833528906427804576)
,p_name=>'P5_ZIPCODE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(60833512917548804566)
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60833529275510804576)
,p_name=>'P5_HOMEPHONE'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(60833512917548804566)
,p_prompt=>'Homephone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60833529705271804577)
,p_name=>'P5_USCITIZEN'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(60833512917548804566)
,p_prompt=>'Uscitizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60833530081366804577)
,p_name=>'P5_QUERY'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(60833512917548804566)
,p_item_default=>'"from employee retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(60833537038764804609)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'29834239716284726510:29834239959095726514'
,p_attribute_01=>wwv_flow_api.id(60701105717180257388)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P5_EMPLOYEEJSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(90038896404340283122)
,p_name=>'Manager'
,p_page_mode=>'NORMAL'
,p_step_title=>'Manager'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCOTTYJACKSON97@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427204355'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31144889784061920801)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90038870170114283071)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31144890111764920801)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31144889784061920801)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(90038891179635283093)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31144890564053920802)
,p_branch_action=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31144890111764920801)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31144891344126920805)
,p_name=>'P7_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31144889784061920801)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31144892145433920807)
,p_name=>'P7_PERSONID'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31144889784061920801)
,p_item_default=>'0'
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31144892940081920807)
,p_name=>'P7_FIRSTNAME'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31144889784061920801)
,p_item_default=>'""'
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31144893767202920811)
,p_name=>'P7_LASTNAME'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31144889784061920801)
,p_item_default=>'""'
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31144894536260920811)
,p_name=>'P7_HOMEADDRESS'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31144889784061920801)
,p_item_default=>'""'
,p_prompt=>'Homeaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31144895372210920813)
,p_name=>'P7_ZIPCODE'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31144889784061920801)
,p_item_default=>'0'
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31144896159825920814)
,p_name=>'P7_HOMEPHONE'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31144889784061920801)
,p_item_default=>'0'
,p_prompt=>'Homephone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31144896925756920815)
,p_name=>'P7_USCITIZEN'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31144889784061920801)
,p_item_default=>'true'
,p_prompt=>'Uscitizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31144897708079920816)
,p_name=>'P7_EMPLOYEEID'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31144889784061920801)
,p_item_default=>'0'
,p_prompt=>'Employeeid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31144908509936920817)
,p_name=>'P7_SALARY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31144889784061920801)
,p_item_default=>'0'
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31144909382643920818)
,p_name=>'P7_SALARYEXCEPTION'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31144889784061920801)
,p_item_default=>'false'
,p_prompt=>'Salaryexception '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31144910140965920818)
,p_name=>'P7_BONUS'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31144889784061920801)
,p_item_default=>'0'
,p_prompt=>'Bonus'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31144910994811920819)
,p_name=>'P7_MANAGER-DEPT'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31144889784061920801)
,p_item_default=>'null'
,p_prompt=>'Manager-Dept'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31144911788500920820)
,p_name=>'P7_USER'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31144889784061920801)
,p_item_default=>'WDBD7'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31144912530298920821)
,p_name=>'P7_PASS'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(31144889784061920801)
,p_item_default=>'localhost:7041'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31144913312139920822)
,p_name=>'P7_MODE'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(31144889784061920801)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31144914181118920822)
,p_name=>'P7_MODEL'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(31144889784061920801)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31144914927736920823)
,p_name=>'P7_RETURNDIMENSIONS'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(31144889784061920801)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31144915712238920824)
,p_name=>'P7_RETURNFOR'
,p_item_sequence=>19
,p_item_plug_id=>wwv_flow_api.id(31144889784061920801)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31144916546816920824)
,p_name=>'P7_QUERY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31144889784061920801)
,p_item_default=>'''insert manager (employee-id := ''employeeid'', salary := ''salary'', person-id := ''personid'', first-name := ''firstname'', last-name := ''lastname'', home_address := ''homeaddress'', zipcode := ''zipcode'', home-phone := ''homephone'', us-citizen := ''uscitizen'', '
||'bonus := ''bonus'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>400
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31144890993799920802)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31143712519020306892:31143712735917306895'
,p_attribute_01=>wwv_flow_api.id(31143712735917306895)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'S16_MANAGER_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31144890111764920801)
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(90038896404340283122)
,p_name=>'Project-Employees'
,p_page_mode=>'NORMAL'
,p_step_title=>'Project-Employees'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCOTTYJACKSON97@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427211616'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31144061944842742528)
,p_plug_name=>'Project-Employees'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90038869633567283070)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.first_name	first_name,			',
'jt2.last_name	last_name,			',
'jt3.person_id	person_id,			',
'jt4.home_address	home_address,			',
'jt5.zipcode	zipcode,			',
'jt6.home_phone	home_phone,			',
'jt7.us_citizen	us_citizen,			',
'jt8.employee_id	employee_id,			',
'jt9.salary	salary,			',
'jt10.salary_exception salary_exception',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar path ''$'') jt8,',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt9,',
'json_table(t.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar path ''$'') jt10',
'where	t.collection_name	=	''S16_PEMPLOYEE_JSON''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid and jt8.rid = jt9.rid and jt9.rid = jt10.rid',
'',
'',
'--{"employee_id":[101, 102, 103, 106, 107],"salary":[70200, 80210, 80210, 70210, 70210],',
'--"salary_exception":["true", "false", "null", "null", "null"],"person_id":[1, 2, 3, 6, 7],',
'--"first_name":["Bill", "Diane", "Jennifer", "Susan", "Steven"],',
'--"last_name":["Dawer", "Wall", "Brown", "Petro", "Williams"],',
'--"home_address":["432 Hill Rd", "32 Cannon Dr", "35 Palm Lane", "323 Country Lane", "3 Seton St"],',
'--"zipcode":[78705, 78705, 73014, 73421, 78705],"home_phone":[7891903, 7891903, 2360884, 6541238, 8798712],',
'--"us_citizen":["true", "true", "true", "true", "false"]}'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31144062036549742529)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'SCOTTYJACKSON97@GMAIL.COM'
,p_internal_uid=>31144062036549742529
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31431693094869506517)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>10
,p_column_identifier=>'BO'
,p_column_label=>'First name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31431693175212506518)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>20
,p_column_identifier=>'BP'
,p_column_label=>'Last name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31431693242204506519)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>30
,p_column_identifier=>'BQ'
,p_column_label=>'Person id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31431693309563506520)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>40
,p_column_identifier=>'BR'
,p_column_label=>'Home address'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31431693443880506521)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>50
,p_column_identifier=>'BS'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31431693507284506522)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>60
,p_column_identifier=>'BT'
,p_column_label=>'Home phone'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31431693637320506523)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>70
,p_column_identifier=>'BU'
,p_column_label=>'Us citizen'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31431693785644506524)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>80
,p_column_identifier=>'BV'
,p_column_label=>'Employee id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31431693815838506525)
,p_db_column_name=>'SALARY'
,p_display_order=>90
,p_column_identifier=>'BW'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31431693917938506526)
,p_db_column_name=>'SALARY_EXCEPTION'
,p_display_order=>100
,p_column_identifier=>'BX'
,p_column_label=>'Salary exception'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31431033281785354714)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'314310333'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:EMPLOYEE_ID:SALARY:SALARY_EXCEPTION'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31430858382230306494)
,p_plug_name=>'Project-Employees'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90038870170114283071)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31430874646142306515)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(90038870170114283071)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''S16_PEMPLOYEE_JSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(90038879000876283082)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31430875393437306518)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31430893550453317346)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31144061944842742528)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(90038891179635283093)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31430893749393317348)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31144061944842742528)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(90038891179635283093)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Project-Employee'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP::'
,p_button_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
':P1_USERTYPE = ''President'' OR',
':P1_USERTYPE = ''Manager'''))
,p_button_condition_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31430859109533306496)
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430859906317306498)
,p_name=>'P11_DB'
,p_item_sequence=>92
,p_item_plug_id=>wwv_flow_api.id(31430858382230306494)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430860783815306500)
,p_name=>'P11_PERSONID'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31430858382230306494)
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430861540633306502)
,p_name=>'P11_FIRSTNAME'
,p_item_sequence=>22
,p_item_plug_id=>wwv_flow_api.id(31430858382230306494)
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430862335231306502)
,p_name=>'P11_LASTNAME'
,p_item_sequence=>32
,p_item_plug_id=>wwv_flow_api.id(31430858382230306494)
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430863199772306503)
,p_name=>'P11_HOMEADDRESS'
,p_item_sequence=>42
,p_item_plug_id=>wwv_flow_api.id(31430858382230306494)
,p_prompt=>'Homeaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430863929153306504)
,p_name=>'P11_ZIPCODE'
,p_item_sequence=>52
,p_item_plug_id=>wwv_flow_api.id(31430858382230306494)
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430864709484306504)
,p_name=>'P11_HOMEPHONE'
,p_item_sequence=>62
,p_item_plug_id=>wwv_flow_api.id(31430858382230306494)
,p_prompt=>'Homephone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430865534095306506)
,p_name=>'P11_USCITIZEN'
,p_item_sequence=>72
,p_item_plug_id=>wwv_flow_api.id(31430858382230306494)
,p_prompt=>'Uscitizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430866390032306506)
,p_name=>'P11_EMPLOYEEID'
,p_item_sequence=>82
,p_item_plug_id=>wwv_flow_api.id(31430858382230306494)
,p_prompt=>'Employeeid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430867122377306507)
,p_name=>'P11_USER'
,p_item_sequence=>102
,p_item_plug_id=>wwv_flow_api.id(31430858382230306494)
,p_item_default=>'WDBD7'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430867958031306508)
,p_name=>'P11_PASS'
,p_item_sequence=>152
,p_item_plug_id=>wwv_flow_api.id(31430858382230306494)
,p_item_default=>'localhost:7041'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430868720927306509)
,p_name=>'P11_MODE'
,p_item_sequence=>162
,p_item_plug_id=>wwv_flow_api.id(31430858382230306494)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430869597052306509)
,p_name=>'P11_MODEL'
,p_item_sequence=>172
,p_item_plug_id=>wwv_flow_api.id(31430858382230306494)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430870369038306510)
,p_name=>'P11_RETURNDIMENSIONS'
,p_item_sequence=>182
,p_item_plug_id=>wwv_flow_api.id(31430858382230306494)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430871138717306511)
,p_name=>'P11_RETURNFOR'
,p_item_sequence=>192
,p_item_plug_id=>wwv_flow_api.id(31430858382230306494)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430871912643306512)
,p_name=>'P11_SALARY'
,p_item_sequence=>132
,p_item_plug_id=>wwv_flow_api.id(31430858382230306494)
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430872765782306513)
,p_name=>'P11_SALARYEXCEPTION'
,p_item_sequence=>142
,p_item_plug_id=>wwv_flow_api.id(31430858382230306494)
,p_prompt=>'Salaryexception'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430873585142306513)
,p_name=>'P11_QUERY'
,p_item_sequence=>202
,p_item_plug_id=>wwv_flow_api.id(31430858382230306494)
,p_item_default=>'"from project-employee retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31430859518984306496)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31142977829270216065:31142998035191216066'
,p_attribute_01=>wwv_flow_api.id(31142998035191216066)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'S16_PEMPLOYEE_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(90038896404340283122)
,p_name=>'Project-Employee'
,p_page_mode=>'NORMAL'
,p_step_title=>'Project-Employee'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCOTTYJACKSON97@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427042955'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31430956266109340159)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90038870170114283071)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31430956649303340160)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31430956266109340159)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(90038891179635283093)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31430957086160340160)
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31430956649303340160)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430957876683340162)
,p_name=>'P12_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31430956266109340159)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430968668378340164)
,p_name=>'P12_PERSONID'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31430956266109340159)
,p_item_default=>'0'
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430969418385340165)
,p_name=>'P12_FIRSTNAME'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31430956266109340159)
,p_item_default=>'""'
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430970268605340165)
,p_name=>'P12_LASTNAME'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31430956266109340159)
,p_item_default=>'""'
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430971057488340167)
,p_name=>'P12_HOMEADDRESS'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31430956266109340159)
,p_item_default=>'""'
,p_prompt=>'Homeaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430971839737340168)
,p_name=>'P12_ZIPCODE'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31430956266109340159)
,p_item_default=>'0'
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430972611068340170)
,p_name=>'P12_HOMEPHONE'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31430956266109340159)
,p_item_default=>'0'
,p_prompt=>'Homephone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430973424655340170)
,p_name=>'P12_USCITIZEN'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31430956266109340159)
,p_item_default=>'TRUE'
,p_prompt=>'Uscitizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430974236395340171)
,p_name=>'P12_EMPLOYEEID'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31430956266109340159)
,p_item_default=>'0'
,p_prompt=>'Employeeid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430975048710340172)
,p_name=>'P12_USER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31430956266109340159)
,p_item_default=>'WDBD7'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430975812608340173)
,p_name=>'P12_PASS'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31430956266109340159)
,p_item_default=>'localhost:7041'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430976654889340173)
,p_name=>'P12_MODE'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31430956266109340159)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430977473750340174)
,p_name=>'P12_MODEL'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31430956266109340159)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430978240110340175)
,p_name=>'P12_RETURNDIMENSIONS'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31430956266109340159)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430979068107340175)
,p_name=>'P12_RETURNFOR'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(31430956266109340159)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430979812609340176)
,p_name=>'P12_SALARY'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(31430956266109340159)
,p_item_default=>'0'
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430980648359340177)
,p_name=>'P12_SALARYEXCEPTION'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(31430956266109340159)
,p_item_default=>'FALSE'
,p_prompt=>'Salaryexception'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31430981447486340177)
,p_name=>'P12_QUERY'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(31430956266109340159)
,p_item_default=>'''insert project-employee (employee-id := ''employeeid'', salary := ''salary'', salary-exception := ''salaryexception'', person-id := ''personid'', first-name := ''firstname'', last-name := ''lastname'', home_address := ''homeaddress'', zipcode := ''zipcode'', home-p'
||'hone := ''homephone'', us-citizen := ''uscitizen'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>400
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31430957480993340161)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31142977829270216065:31142998035191216066'
,p_attribute_01=>wwv_flow_api.id(31142998035191216066)
,p_attribute_02=>'ITEMS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31430956649303340160)
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_api.create_page(
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(90038896404340283122)
,p_name=>'Manager'
,p_page_mode=>'NORMAL'
,p_step_title=>'Manager'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCOTTYJACKSON97@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428001110'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31431553919399476937)
,p_plug_name=>'Managers'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90038869633567283070)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.first_name	first_name,',
'jt2.last_name	last_name,			',
'jt3.person_id	person_id,			',
'jt4.home_address	home_address,			',
'jt5.zipcode	zipcode,			',
'jt6.home_phone	home_phone,			',
'jt7.us_citizen	us_citizen,			',
'jt8.employee_id	employee_id,			',
'jt9.salary	salary,			',
'jt10.salary_exception salary_exception,',
'jt11.bonus    bonus,',
'jt12.dept_name    dept_name',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar path ''$'') jt8,',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt9,',
'json_table(t.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar path ''$'') jt10,',
'json_table(t.clob001, ''$.bonus[*]'' COLUMNS rid for ordinality, bonus varchar path ''$'') jt11,',
'json_table(t.clob001, ''$.dept_name[*]'' COLUMNS rid for ordinality, dept_name varchar path ''$'') jt12',
'',
'where	t.collection_name	=	''S16_MANAGER_JSON'' and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid and jt8.rid = jt9.rid and jt9.rid = jt10.rid and jt10.rid = jt11.rid and jt11.rid = jt12.rid',
'',
'',
'--{"bonus":[200000, 10000, "null"],"employee_id":[108, 101, 107],',
'--"salary":[570201, 70200, 70210],"salary_exception":["null", "true", "null"],',
'--"person_id":[8, 1, 7],"first_name":["Henry", "Bill", "Steven"],"last_name":["Silverstone", "Dawer", "Williams"],',
'--"home_address":["100 Gates St", "432 Hill Rd", "3 Seton St"],"zipcode":[70007, 78705, 78705],',
'--"home_phone":[4565404, 7891903, 8798712],"us_citizen":["true", "true", "false"]}'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31431554035162476938)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'SCOTTYJACKSON97@GMAIL.COM'
,p_internal_uid=>31431554035162476938
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31431691960203506506)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>10
,p_column_identifier=>'BO'
,p_column_label=>'First name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31706174379128026634)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>20
,p_column_identifier=>'BP'
,p_column_label=>'Last name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31706174414489026635)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>30
,p_column_identifier=>'BQ'
,p_column_label=>'Person id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31706174592101026636)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>40
,p_column_identifier=>'BR'
,p_column_label=>'Home address'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31706174678475026637)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>50
,p_column_identifier=>'BS'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31706174735007026638)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>60
,p_column_identifier=>'BT'
,p_column_label=>'Home phone'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31706174835905026639)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>70
,p_column_identifier=>'BU'
,p_column_label=>'Us citizen'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31706174972317026640)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>80
,p_column_identifier=>'BV'
,p_column_label=>'Employee id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31706175065008026641)
,p_db_column_name=>'SALARY'
,p_display_order=>90
,p_column_identifier=>'BW'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31706175160472026642)
,p_db_column_name=>'SALARY_EXCEPTION'
,p_display_order=>100
,p_column_identifier=>'BX'
,p_column_label=>'Salary exception'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31706175262678026643)
,p_db_column_name=>'BONUS'
,p_display_order=>110
,p_column_identifier=>'BY'
,p_column_label=>'Bonus'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31706175314269026644)
,p_db_column_name=>'DEPT_NAME'
,p_display_order=>120
,p_column_identifier=>'BZ'
,p_column_label=>'Dept name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31431662563939134638)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'314316626'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:EMPLOYEE_ID:SALARY:SALARY_EXCEPTION:BONUS:DEPT_NAME'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31431625541575500219)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90038870170114283071)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31431683462904500238)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(90038870170114283071)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''S16_MANAGER_JSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(90038879000876283082)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31431684165953500241)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31431694081136506527)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31431553919399476937)
,p_button_name=>'Create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(90038891179635283093)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Manager'
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP::'
,p_button_condition=>':P1_USERTYPE = ''President'''
,p_button_condition_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31431691881466506505)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31431553919399476937)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(90038891179635283093)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31431626332869500220)
,p_branch_action=>'f?p=&APP_ID.:15:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31431627172436500222)
,p_name=>'P15_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31431625541575500219)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31431627910258500224)
,p_name=>'P15_PERSONID'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31431625541575500219)
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31431668745297500225)
,p_name=>'P15_FIRSTNAME'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31431625541575500219)
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31431669531543500226)
,p_name=>'P15_LASTNAME'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31431625541575500219)
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31431670356531500226)
,p_name=>'P15_HOMEADDRESS'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31431625541575500219)
,p_prompt=>'Homeaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31431671102500500227)
,p_name=>'P15_ZIPCODE'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31431625541575500219)
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31431671971892500228)
,p_name=>'P15_HOMEPHONE'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31431625541575500219)
,p_prompt=>'Homephone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31431672770753500228)
,p_name=>'P15_USCITIZEN'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31431625541575500219)
,p_prompt=>'Uscitizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31431673587236500229)
,p_name=>'P15_EMPLOYEEID'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31431625541575500219)
,p_prompt=>'Employeeid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31431674385791500230)
,p_name=>'P15_SALARY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31431625541575500219)
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31431675169739500230)
,p_name=>'P15_SALARYEXCEPTION'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31431625541575500219)
,p_prompt=>'Salaryexception '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31431675944924500231)
,p_name=>'P15_BONUS'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31431625541575500219)
,p_prompt=>'Bonus'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31431676731360500232)
,p_name=>'P15_USER'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31431625541575500219)
,p_item_default=>'WDBD7'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31431677545750500232)
,p_name=>'P15_PASS'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31431625541575500219)
,p_item_default=>'localhost:7041'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31431678374747500233)
,p_name=>'P15_MODE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(31431625541575500219)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31431679162213500234)
,p_name=>'P15_MODEL'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(31431625541575500219)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31431679928897500234)
,p_name=>'P15_RETURNDIMENSIONS'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(31431625541575500219)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31431680772229500235)
,p_name=>'P15_RETURNFOR'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(31431625541575500219)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31431681505714500236)
,p_name=>'P15_MANAGERDEPT'
,p_item_sequence=>19
,p_item_plug_id=>wwv_flow_api.id(31431625541575500219)
,p_prompt=>'Managerdept'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31431682371953500237)
,p_name=>'P15_QUERY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31431625541575500219)
,p_item_default=>'"from manager retrieve *, dept-name of manager-dept;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31431626799991500221)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31143712519020306892:31143712735917306895'
,p_attribute_01=>wwv_flow_api.id(31143712735917306895)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'S16_MANAGER_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(90038896404340283122)
,p_name=>'Interim-Manager'
,p_page_mode=>'NORMAL'
,p_step_title=>'Interim-Manager'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCOTTYJACKSON97@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427211707'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31431696079478506547)
,p_plug_name=>'Interim-Managers'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90038869633567283070)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.first_name	first_name,			',
'jt2.last_name	last_name,			',
'jt3.person_id	person_id,			',
'jt4.home_address	home_address,			',
'jt5.zipcode	zipcode,			',
'jt6.home_phone	home_phone,			',
'jt7.us_citizen	us_citizen,			',
'jt8.employee_id	employee_id,			',
'jt9.salary	salary,			',
'jt10.salary_exception salary_exception,',
'jt11.bonus    bonus',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar path ''$'') jt8,',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt9,',
'json_table(t.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar path ''$'') jt10,',
'json_table(t.clob001, ''$.bonus[*]'' COLUMNS rid for ordinality, bonus varchar path ''$'') jt11',
'where	t.collection_name	=	''S16_IMANAGER_JSON'' and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid and jt8.rid = jt9.rid and jt9.rid = jt10.rid and jt10.rid = jt11.rid',
'',
'',
'--{"bonus":[200000, 10000, "null"],"employee_id":[108, 101, 107],',
'--"salary":[570201, 70200, 70210],"salary_exception":["null", "true", "null"],',
'--"person_id":[8, 1, 7],"first_name":["Henry", "Bill", "Steven"],"last_name":["Silverstone", "Dawer", "Williams"],',
'--"home_address":["100 Gates St", "432 Hill Rd", "3 Seton St"],"zipcode":[70007, 78705, 78705],',
'--"home_phone":[4565404, 7891903, 8798712],"us_citizen":["true", "true", "false"]}'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31431696134326506548)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'SCOTTYJACKSON97@GMAIL.COM'
,p_internal_uid=>31431696134326506548
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31431696289572506549)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'First name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31431696346753506550)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Last name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31519514421102099701)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Person id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31519514563656099702)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Home address'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31519514675369099703)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31519514733317099704)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Home phone'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31519514860726099705)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Us citizen'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31519514925055099706)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Employee id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31519515076750099707)
,p_db_column_name=>'SALARY'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31519515146767099708)
,p_db_column_name=>'SALARY_EXCEPTION'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Salary exception'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31519515205705099709)
,p_db_column_name=>'BONUS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Bonus'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31519712783414116070)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'315197128'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:EMPLOYEE_ID:SALARY:SALARY_EXCEPTION:BONUS'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31519379862247092340)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90038870170114283071)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31519397742511092364)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(90038870170114283071)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''S16_IMANAGER_JSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(90038879000876283082)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31519398996730092366)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31519515446964099711)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31431696079478506547)
,p_button_name=>'Create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(90038891179635283093)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Interim-Manager'
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:RP::'
,p_button_condition=>':P1_USERTYPE = ''President'''
,p_button_condition_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31519515391935099710)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31431696079478506547)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(90038891179635283093)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31519380630209092341)
,p_branch_action=>'f?p=&APP_ID.:17:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519381414670092343)
,p_name=>'P17_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31519379862247092340)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519382457576092344)
,p_name=>'P17_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31519379862247092340)
,p_item_default=>'WDBD7'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519383138082092345)
,p_name=>'P17_MODE'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31519379862247092340)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519383986774092346)
,p_name=>'P17_MODEL'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31519379862247092340)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519384798928092348)
,p_name=>'P17_RETURNDIMENSIONS'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31519379862247092340)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519385593141092349)
,p_name=>'P17_RETURNFOR'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31519379862247092340)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519386455871092350)
,p_name=>'P17_BONUS'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31519379862247092340)
,p_prompt=>'Bonus'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519387391028092352)
,p_name=>'P17_PERSONID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31519379862247092340)
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519388139297092353)
,p_name=>'P17_EMPLOYEEID'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31519379862247092340)
,p_prompt=>'Employeeid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519389167937092354)
,p_name=>'P17_SALARYEXCEPTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31519379862247092340)
,p_prompt=>'Salaryexception'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519389917531092354)
,p_name=>'P17_FIRSTNAME'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31519379862247092340)
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519390741485092355)
,p_name=>'P17_LASTNAME'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31519379862247092340)
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519391533223092356)
,p_name=>'P17_ADDRESS'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31519379862247092340)
,p_prompt=>'Address'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519392399223092356)
,p_name=>'P17_SALARY'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31519379862247092340)
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519393199399092357)
,p_name=>'P17_ZIPCODE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(31519379862247092340)
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519393917703092358)
,p_name=>'P17_PHONE'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(31519379862247092340)
,p_prompt=>'Phone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519394794998092358)
,p_name=>'P17_USCITIZEN'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(31519379862247092340)
,p_prompt=>'Uscitizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519395509666092359)
,p_name=>'P17_PASS'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(31519379862247092340)
,p_item_default=>'localhost:7041'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519396533033092363)
,p_name=>'P17_QUERY'
,p_item_sequence=>19
,p_item_plug_id=>wwv_flow_api.id(31519379862247092340)
,p_item_default=>'"from interim-manager retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31519381058271092341)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31518284175657376259:31518284303305376259'
,p_attribute_01=>wwv_flow_api.id(31518284303305376259)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'S16_IMANAGER_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(90038896404340283122)
,p_name=>'Interim-Manager-Form'
,p_page_mode=>'NORMAL'
,p_step_title=>'Interim-Manager-Form'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCOTTYJACKSON97@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427054144'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31519933233311143747)
,p_plug_name=>'Interim-Manager-Form'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90038870170114283071)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31519933640998143748)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31519933233311143747)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(90038891179635283093)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31519934010022143748)
,p_branch_action=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31519933640998143748)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519934883477143749)
,p_name=>'P20_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31519933233311143747)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519935640335143751)
,p_name=>'P20_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31519933233311143747)
,p_item_default=>'WDBD7'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519936475622143751)
,p_name=>'P20_MODE'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31519933233311143747)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519937231416143752)
,p_name=>'P20_MODEL'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31519933233311143747)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519938042270143753)
,p_name=>'P20_RETURNDIMENSIONS'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31519933233311143747)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519938866059143754)
,p_name=>'P20_RETURNFOR'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31519933233311143747)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519939643428143754)
,p_name=>'P20_BONUS'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31519933233311143747)
,p_item_default=>'0'
,p_prompt=>'Bonus'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519940458544143755)
,p_name=>'P20_PERSONID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31519933233311143747)
,p_item_default=>'0'
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519941252833143757)
,p_name=>'P20_EMPLOYEEID'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31519933233311143747)
,p_item_default=>'0'
,p_prompt=>'Employeeid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519942044594143757)
,p_name=>'P20_SALARYEXCEPTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31519933233311143747)
,p_prompt=>'Salaryexception'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519942851859143758)
,p_name=>'P20_FIRSTNAME'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31519933233311143747)
,p_item_default=>'""'
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519943654446143759)
,p_name=>'P20_LASTNAME'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31519933233311143747)
,p_item_default=>'""'
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519944481726143759)
,p_name=>'P20_ADDRESS'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31519933233311143747)
,p_item_default=>'""'
,p_prompt=>'Address'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519945236309143760)
,p_name=>'P20_SALARY'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31519933233311143747)
,p_item_default=>'0'
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519946020977143761)
,p_name=>'P20_ZIPCODE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(31519933233311143747)
,p_item_default=>'0'
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519946897540143762)
,p_name=>'P20_PHONE'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(31519933233311143747)
,p_item_default=>'0'
,p_prompt=>'Phone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519947681775143763)
,p_name=>'P20_USCITIZEN'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(31519933233311143747)
,p_item_default=>'true'
,p_prompt=>'Uscitizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519948443182143765)
,p_name=>'P20_PASS'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(31519933233311143747)
,p_item_default=>'localhost:7041'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31519949238736143766)
,p_name=>'P20_QUERY'
,p_item_sequence=>19
,p_item_plug_id=>wwv_flow_api.id(31519933233311143747)
,p_item_default=>'''insert interim-manager (employee-id := ''employeeid'', salary := ''salary'', salary-exception := ''salaryexception'', person-id := ''personid'', first-name := ''firstname'', last-name := ''lastname'', home_address := ''address'', zipcode := ''zipcode'', home-phone '
||':= ''phone'', us-citizen := ''uscitizen'', bonus := ''bonus'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>500
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31519934466892143749)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31518284175657376259:31518284303305376259'
,p_attribute_01=>wwv_flow_api.id(31518284303305376259)
,p_attribute_02=>'ITEMS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31519933640998143748)
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_api.create_page(
 p_id=>29
,p_user_interface_id=>wwv_flow_api.id(90038896404340283122)
,p_name=>'Project'
,p_page_mode=>'NORMAL'
,p_step_title=>'Project'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCOTTYJACKSON97@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427205848'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31544716775813890010)
,p_plug_name=>'Projects'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90038869633567283070)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.project_no	project_no,			',
'jt2.project_title	project_title',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.project_no[*]'' COLUMNS rid for ordinality, project_no varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.project_title[*]'' COLUMNS rid for ordinality, project_title varchar path ''$'') jt2',
'',
'where	t.collection_name	=	''S16_PROJECT_JSON''and ',
'jt1.rid = jt2.rid',
'',
'--{"person_id":[1, 2, 3, 4, 5, 9, 6, 7, 8],"first_name":["Bill", "Diane", "Jennifer", "Alice", "George", "Mike", "Susan", "Steven", "Henry"],"last_name":["Dawer", "Wall", "Brown", "Dawer", "Layton", "Dawer", "Petro", "Williams", "Silverstone"],"home_'
||'address":["432 Hill Rd", "32 Cannon Dr", "35 Palm Lane", "432 Hill Rd", "347 Nueces St", "432 Hill Rd", "323 Country Lane", "3 Seton St", "100 Gates St"],"zipcode":[78705, 78705, 73014, 78021, 78705, 78705, 73421, 78705, 70007],"home_phone":[7891903,'
||' 7891903, 2360884, 6541658, 8798798, 7891903, 6541238, 8798712, 4565404],"us_citizen":["true", "true", "true", "false", "true", "true", "true", "false", "true"]}'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31544716893349890011)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'SCOTTYJACKSON97@GMAIL.COM'
,p_internal_uid=>31544716893349890011
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31545968051132610939)
,p_db_column_name=>'PROJECT_NO'
,p_display_order=>10
,p_column_identifier=>'BO'
,p_column_label=>'Project no'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31545968121964610940)
,p_db_column_name=>'PROJECT_TITLE'
,p_display_order=>20
,p_column_identifier=>'BP'
,p_column_label=>'Project title'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31546033500635989724)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'315460336'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PROJECT_NO:PROJECT_TITLE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31545729153971592288)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90038870170114283071)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31545749002963592303)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(90038870170114283071)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''S16_PROJECT_JSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(90038879000876283082)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31545749767164592306)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31545968237187610941)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31544716775813890010)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(90038891179635283093)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Project'
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:RP::'
,p_button_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
':P1_USERTYPE = ''President'' OR',
':P1_USERTYPE = ''Manager'''))
,p_button_condition_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31545907952329610938)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31544716775813890010)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(90038891179635283093)
,p_button_image_alt=>'Refresh Report '
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31545729924398592290)
,p_branch_action=>'f?p=&APP_ID.:29:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31545730718855592293)
,p_name=>'P29_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31545729153971592288)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31545731545406592296)
,p_name=>'P29_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31545729153971592288)
,p_item_default=>'WDBD7'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31545732379426592297)
,p_name=>'P29_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31545729153971592288)
,p_item_default=>'localhost:7041'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31545733153810592298)
,p_name=>'P29_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31545729153971592288)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31545733945710592299)
,p_name=>'P29_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31545729153971592288)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31545734790990592299)
,p_name=>'P29_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31545729153971592288)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31545735521842592300)
,p_name=>'P29_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31545729153971592288)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31545736372286592300)
,p_name=>'P29_PROJECTNO'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31545729153971592288)
,p_prompt=>'Projectno'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31545737143516592301)
,p_name=>'P29_PROJECTTITLE'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31545729153971592288)
,p_prompt=>'Projecttitle'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31545737986711592302)
,p_name=>'P29_QUERY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31545729153971592288)
,p_item_default=>'"from project retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31545730387188592291)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31545550659390955608:31545550804970955609'
,p_attribute_01=>wwv_flow_api.id(31545550804970955609)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'S16_PROJECT_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_api.create_page(
 p_id=>30
,p_user_interface_id=>wwv_flow_api.id(90038896404340283122)
,p_name=>'Project'
,p_page_mode=>'NORMAL'
,p_step_title=>'Project'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCOTTYJACKSON97@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427073014'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31546447102299664186)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90038870170114283071)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31546447595792664186)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31546447102299664186)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(90038891179635283093)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31546447903796664186)
,p_branch_action=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31546447595792664186)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31546448765411664189)
,p_name=>'P30_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31546447102299664186)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31546449541138664190)
,p_name=>'P30_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31546447102299664186)
,p_item_default=>'WDBD7'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31546450380759664190)
,p_name=>'P30_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31546447102299664186)
,p_item_default=>'localhost:7041'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31546451139948664192)
,p_name=>'P30_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31546447102299664186)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31546451916506664193)
,p_name=>'P30_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31546447102299664186)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31546452732023664194)
,p_name=>'P30_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31546447102299664186)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31546453550582664194)
,p_name=>'P30_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31546447102299664186)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31546454334074664195)
,p_name=>'P30_PROJECTNO'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31546447102299664186)
,p_item_default=>'0'
,p_prompt=>'Projectno'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31546455189251664196)
,p_name=>'P30_PROJECTTITLE'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31546447102299664186)
,p_item_default=>'""'
,p_prompt=>'Projecttitle'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31546455991452664198)
,p_name=>'P30_QUERY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31546447102299664186)
,p_item_default=>'''INSERT Project (project-no := ''projectno'', project-title := ''projecttitle'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>450
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31546448325569664187)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31545550659390955608:31545550804970955609'
,p_attribute_01=>wwv_flow_api.id(31545550804970955609)
,p_attribute_02=>'ITEMS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31546447595792664186)
);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_api.create_page(
 p_id=>31
,p_user_interface_id=>wwv_flow_api.id(90038896404340283122)
,p_name=>'Department '
,p_page_mode=>'NORMAL'
,p_step_title=>'Department '
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCOTTYJACKSON97@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427203927'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31545968373954610942)
,p_plug_name=>'Departments'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90038869633567283070)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'jt1.dept_no	dept_no,			',
'jt2.dept_name	dept_name',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.dept_no[*]'' COLUMNS rid for ordinality, dept_no varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.dept_name[*]'' COLUMNS rid for ordinality, dept_name varchar path ''$'') jt2',
'',
'where	t.collection_name	=	''S16_DEPARTMENT_JSON'' and ',
'jt1.rid = jt2.rid',
'',
'--{"person_id":[1, 2, 3, 4, 5, 9, 6, 7, 8],"first_name":["Bill", "Diane", "Jennifer", "Alice", "George", "Mike", "Susan", "Steven", "Henry"],"last_name":["Dawer", "Wall", "Brown", "Dawer", "Layton", "Dawer", "Petro", "Williams", "Silverstone"],"home_'
||'address":["432 Hill Rd", "32 Cannon Dr", "35 Palm Lane", "432 Hill Rd", "347 Nueces St", "432 Hill Rd", "323 Country Lane", "3 Seton St", "100 Gates St"],"zipcode":[78705, 78705, 73014, 78021, 78705, 78705, 73421, 78705, 70007],"home_phone":[7891903,'
||' 7891903, 2360884, 6541658, 8798798, 7891903, 6541238, 8798712, 4565404],"us_citizen":["true", "true", "true", "false", "true", "true", "true", "false", "true"]}'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31545968448177610943)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'SCOTTYJACKSON97@GMAIL.COM'
,p_internal_uid=>31545968448177610943
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31547252267684764913)
,p_db_column_name=>'DEPT_NO'
,p_display_order=>10
,p_column_identifier=>'BO'
,p_column_label=>'Dept no'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31547252378041764914)
,p_db_column_name=>'DEPT_NAME'
,p_display_order=>20
,p_column_identifier=>'BP'
,p_column_label=>'Dept name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31547265637305769323)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'315472657'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'DEPT_NO:DEPT_NAME'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31546993798214748134)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90038870170114283071)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'SQL_EXPRESSION'
,p_plug_display_when_condition=>'false'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31547003646828748148)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(90038870170114283071)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''S16_DEPARTMENT_JSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'false'
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(90038879000876283082)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31547004316455748150)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31547252434684764915)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31545968373954610942)
,p_button_name=>'Create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(90038891179635283093)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Department '
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:RP::'
,p_button_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
':P1_USERTYPE = ''President'' OR',
':P1_USERTYPE = ''Manager'''))
,p_button_condition_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31547252109689764912)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31545968373954610942)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(90038891179635283093)
,p_button_image_alt=>'Refresh Report '
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31546994574590748135)
,p_branch_action=>'f?p=&APP_ID.:31:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31546995397695748136)
,p_name=>'P31_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31546993798214748134)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31546996108287748137)
,p_name=>'P31_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31546993798214748134)
,p_item_default=>'WDBD7'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31546996999920748138)
,p_name=>'P31_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31546993798214748134)
,p_item_default=>'localhost:7041'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31546997715384748139)
,p_name=>'P31_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31546993798214748134)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31546998571182748141)
,p_name=>'P31_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31546993798214748134)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31546999378992748142)
,p_name=>'P31_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31546993798214748134)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31547000158106748143)
,p_name=>'P31_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31546993798214748134)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31547000904347748144)
,p_name=>'P31_DEPTNO'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31546993798214748134)
,p_prompt=>'Deptno'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31547001746680748145)
,p_name=>'P31_DEPTNAME'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31546993798214748134)
,p_prompt=>'Deptname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31547002514206748147)
,p_name=>'P31_QUERY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31546993798214748134)
,p_item_default=>'"from department retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31546994962154748136)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31546907029498115418:31546907298047115419'
,p_attribute_01=>wwv_flow_api.id(31546907298047115419)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'S16_DEPARTMENT_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00032
begin
wwv_flow_api.create_page(
 p_id=>32
,p_user_interface_id=>wwv_flow_api.id(90038896404340283122)
,p_name=>'Department '
,p_page_mode=>'NORMAL'
,p_step_title=>'Department '
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCOTTYJACKSON97@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427075530'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31547340671478163243)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90038870170114283071)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31547341052213163244)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31547340671478163243)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(90038891179635283093)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31547341446456163245)
,p_branch_action=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31547341052213163244)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31547342299593163246)
,p_name=>'P32_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31547340671478163243)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31547343021360163248)
,p_name=>'P32_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31547340671478163243)
,p_item_default=>'WDBD7'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31547343804589163249)
,p_name=>'P32_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31547340671478163243)
,p_item_default=>'localhost:7041'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31547344642676163250)
,p_name=>'P32_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31547340671478163243)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31547345495333163252)
,p_name=>'P32_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31547340671478163243)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31547346283977163253)
,p_name=>'P32_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31547340671478163243)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31547347111439163254)
,p_name=>'P32_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31547340671478163243)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31547347951650163254)
,p_name=>'P32_DEPTNO'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31547340671478163243)
,p_item_default=>'0'
,p_prompt=>'Deptno'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31547408720229163255)
,p_name=>'P32_DEPTNAME'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31547340671478163243)
,p_item_default=>'""'
,p_prompt=>'Deptname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31547409594039163256)
,p_name=>'P32_QUERY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31547340671478163243)
,p_item_default=>'''INSERT department (dept-no := ''deptno'', dept-name := ''deptname'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31547341878664163246)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31546907029498115418:31546907298047115419'
,p_attribute_01=>wwv_flow_api.id(31546907298047115419)
,p_attribute_02=>'ITEMS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31547341052213163244)
);
end;
/
prompt --application/pages/page_00033
begin
wwv_flow_api.create_page(
 p_id=>33
,p_user_interface_id=>wwv_flow_api.id(90038896404340283122)
,p_name=>'President'
,p_page_mode=>'NORMAL'
,p_step_title=>'President'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'APEX_PUBLIC_USER'
,p_last_upd_yyyymmddhh24miss=>'20160426190749'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31202213725616069417)
,p_plug_name=>'President'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90038869633567283070)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.first_name	first_name,			',
'jt2.last_name	last_name,			',
'jt3.person_id	person_id,			',
'jt4.home_address	home_address,			',
'jt5.zipcode	zipcode,			',
'jt6.home_phone	home_phone,			',
'jt7.us_citizen	us_citizen,			',
'jt8.employee_id	employee_id,			',
'jt9.salary	salary,			',
'jt10.salary_exception salary_exception,',
'jt11.bonus    bonus',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar path ''$'') jt8,',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt9,',
'json_table(t.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar path ''$'') jt10,',
'json_table(t.clob001, ''$.bonus[*]'' COLUMNS rid for ordinality, bonus varchar path ''$'') jt11',
'where	t.collection_name	=	''S16_PRESIDENT_JSON'' and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid and jt8.rid = jt9.rid and jt9.rid = jt10.rid and jt10.rid = jt11.rid',
'',
'',
'--{"bonus":[200000, 10000, "null"],"employee_id":[108, 101, 107],',
'--"salary":[570201, 70200, 70210],"salary_exception":["null", "true", "null"],',
'--"person_id":[8, 1, 7],"first_name":["Henry", "Bill", "Steven"],"last_name":["Silverstone", "Dawer", "Williams"],',
'--"home_address":["100 Gates St", "432 Hill Rd", "3 Seton St"],"zipcode":[70007, 78705, 78705],',
'--"home_phone":[4565404, 7891903, 8798712],"us_citizen":["true", "true", "false"]}'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31202213821198069418)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'SCOTTYJACKSON97@GMAIL.COM'
,p_internal_uid=>31202213821198069418
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31202213910658069419)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'First name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31202214015562069420)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Last name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31202214111800069421)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Person id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31202214290151069422)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Home address'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31202214324504069423)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31202214452057069424)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Home phone'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31202214593239069425)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Us citizen'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31202214656275069426)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Employee id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31202214751290069427)
,p_db_column_name=>'SALARY'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31202214824563069428)
,p_db_column_name=>'SALARY_EXCEPTION'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Salary exception'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31202214952960069429)
,p_db_column_name=>'BONUS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Bonus'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31701882945161993815)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'317018830'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:EMPLOYEE_ID:SALARY:SALARY_EXCEPTION:BONUS'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31701739157305598820)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90038870170114283071)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31701756293323598845)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(90038870170114283071)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''S16_PRESIDENT_JSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(90038879000876283082)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31701756991530598850)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31202215063488069430)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31202213725616069417)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(90038891179635283093)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31701739991734598822)
,p_branch_action=>'f?p=&APP_ID.:33:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31701740740626598826)
,p_name=>'P33_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31701739157305598820)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31701741597471598828)
,p_name=>'P33_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31701739157305598820)
,p_item_default=>'WDBD7'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31701742325129598829)
,p_name=>'P33_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31701739157305598820)
,p_item_default=>'localhost:7041'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31701743162499598830)
,p_name=>'P33_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31701739157305598820)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31701743976912598831)
,p_name=>'P33_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31701739157305598820)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31701744747350598832)
,p_name=>'P33_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31701739157305598820)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31701745581823598833)
,p_name=>'P33_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31701739157305598820)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31701746360370598833)
,p_name=>'P33_SALARY'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31701739157305598820)
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31701747105142598834)
,p_name=>'P33_SALARYEXCEPTION'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31701739157305598820)
,p_prompt=>'Salaryexception'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31701747955483598838)
,p_name=>'P33_BONUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31701739157305598820)
,p_prompt=>'Bonus'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31701748720906598839)
,p_name=>'P33_EMPLOYEEID'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31701739157305598820)
,p_prompt=>'Employeeid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31701749592009598839)
,p_name=>'P33_PERSONID'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31701739157305598820)
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31701750368248598840)
,p_name=>'P33_FIRSTNAME'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31701739157305598820)
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31701751156967598841)
,p_name=>'P33_LASTNAME'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31701739157305598820)
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31701751928400598841)
,p_name=>'P33_HOMEADDRESS'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(31701739157305598820)
,p_prompt=>'Homeaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31701752783775598842)
,p_name=>'P33_ZIPCODE'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(31701739157305598820)
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31701753582487598843)
,p_name=>'P33_HOMEPHONE'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(31701739157305598820)
,p_prompt=>'Homephone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31701754312163598844)
,p_name=>'P33_USCITIZEN'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(31701739157305598820)
,p_prompt=>'Uscitizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31701755166795598844)
,p_name=>'P33_QUERY'
,p_item_sequence=>19
,p_item_plug_id=>wwv_flow_api.id(31701739157305598820)
,p_item_default=>'"from president retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31701740379275598822)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31701636393960588967:31701636562322588968'
,p_attribute_01=>wwv_flow_api.id(31701636562322588968)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'S16_PRESIDENT_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00035
begin
wwv_flow_api.create_page(
 p_id=>35
,p_user_interface_id=>wwv_flow_api.id(90038896404340283122)
,p_name=>'Previous-Employee'
,p_page_mode=>'NORMAL'
,p_step_title=>'Previous-Employee'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCOTTYJACKSON97@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427211732'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31202216894074069448)
,p_plug_name=>'Previous-Employees'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90038869633567283070)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.first_name	first_name,			',
'jt2.last_name	last_name,			',
'jt3.person_id	person_id,			',
'jt4.home_address	home_address,			',
'jt5.zipcode	zipcode,			',
'jt6.home_phone	home_phone,			',
'jt7.us_citizen	us_citizen,',
'jt8.isfired    isfired,',
'jt9.salary    salary',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.isfired[*]'' COLUMNS rid for ordinality, isfired varchar path ''$'') jt8,',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt9',
'where	t.collection_name	=	''S16_PREVEMPS_JSON''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid and jt8.rid = jt9.rid',
'',
'--{"person_id":[1, 2, 3, 4, 5, 9, 6, 7, 8],"first_name":["Bill", "Diane", "Jennifer", "Alice", "George", "Mike", "Susan", "Steven", "Henry"],"last_name":["Dawer", "Wall", "Brown", "Dawer", "Layton", "Dawer", "Petro", "Williams", "Silverstone"],"home_'
||'address":["432 Hill Rd", "32 Cannon Dr", "35 Palm Lane", "432 Hill Rd", "347 Nueces St", "432 Hill Rd", "323 Country Lane", "3 Seton St", "100 Gates St"],"zipcode":[78705, 78705, 73014, 78021, 78705, 78705, 73421, 78705, 70007],"home_phone":[7891903,'
||' 7891903, 2360884, 6541658, 8798798, 7891903, 6541238, 8798712, 4565404],"us_citizen":["true", "true", "true", "false", "true", "true", "true", "false", "true"]}'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31202216901269069449)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'SCOTTYJACKSON97@GMAIL.COM'
,p_internal_uid=>31202216901269069449
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31202217005144069450)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'First name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31706171038397026601)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Last name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31706171176285026602)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Person id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31706171267170026603)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Home address'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31706171378319026604)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31706171479260026605)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Home phone'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31706171541813026606)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Us citizen'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31706171671553026607)
,p_db_column_name=>'ISFIRED'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Isfired'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31706171796183026608)
,p_db_column_name=>'SALARY'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31710282392985271827)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'317102824'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:ISFIRED:SALARY'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31705908552470376908)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90038870170114283071)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31705924014602376931)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(90038870170114283071)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''S16_PREVEMPS_JSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(90038879000876283082)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31705924711129376934)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31706171805491026609)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31202216894074069448)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(90038891179635283093)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31706171993019026610)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31202216894074069448)
,p_button_name=>'Create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(90038891179635283093)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Previous-Employee'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:RP::'
,p_button_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
':P1_USERTYPE = ''President'' OR',
':P1_USERTYPE = ''Manager'''))
,p_button_condition_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31705909386773376909)
,p_branch_action=>'f?p=&APP_ID.:35:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31705910134124376913)
,p_name=>'P35_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31705908552470376908)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31705910991952376914)
,p_name=>'P35_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31705908552470376908)
,p_item_default=>'WDBD7'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31705911720886376915)
,p_name=>'P35_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31705908552470376908)
,p_item_default=>'localhost:7041'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31705912588357376916)
,p_name=>'P35_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31705908552470376908)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31705913313497376917)
,p_name=>'P35_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31705908552470376908)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31705914177006376917)
,p_name=>'P35_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31705908552470376908)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31705914927136376918)
,p_name=>'P35_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31705908552470376908)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31705915731251376919)
,p_name=>'P35_PERSONID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31705908552470376908)
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31705916526547376921)
,p_name=>'P35_FIRSTNAME'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31705908552470376908)
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31705917376357376922)
,p_name=>'P35_LASTNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31705908552470376908)
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31705918179319376923)
,p_name=>'P35_HOMEADDRESS'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31705908552470376908)
,p_prompt=>'Homeaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31705918993221376924)
,p_name=>'P35_USCITIZEN'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31705908552470376908)
,p_prompt=>'Uscitizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31705919761213376924)
,p_name=>'P35_ZIPCODE'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31705908552470376908)
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31705920500881376925)
,p_name=>'P35_HOMEPHONE'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31705908552470376908)
,p_prompt=>'Homephone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31705921323445376926)
,p_name=>'P35_ISFIRED'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(31705908552470376908)
,p_prompt=>'Isfired'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31705922104016376926)
,p_name=>'P35_SALARY'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(31705908552470376908)
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31705922943928376927)
,p_name=>'P35_QUERY'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(31705908552470376908)
,p_item_default=>'"from previous-employee retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31705909730012376910)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31705659696762363490:31705659805585363491'
,p_attribute_01=>wwv_flow_api.id(31705659805585363491)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'S16_PREVEMPS_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00036
begin
wwv_flow_api.create_page(
 p_id=>36
,p_user_interface_id=>wwv_flow_api.id(90038896404340283122)
,p_name=>'Previous-Employee'
,p_page_mode=>'NORMAL'
,p_step_title=>'Previous-Employee'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCOTTYJACKSON97@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427055412'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31712358829505449247)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90038870170114283071)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31712359207288449248)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31712358829505449247)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(90038891179635283093)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31712359687486449248)
,p_branch_action=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31712359207288449248)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31712360450799449251)
,p_name=>'P36_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31712358829505449247)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31712361266117449252)
,p_name=>'P36_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31712358829505449247)
,p_item_default=>'WDBD7'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31712362081241449253)
,p_name=>'P36_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31712358829505449247)
,p_item_default=>'localhost:7041'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31712362832482449254)
,p_name=>'P36_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31712358829505449247)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31712363604959449255)
,p_name=>'P36_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31712358829505449247)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31712364449203449256)
,p_name=>'P36_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31712358829505449247)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31712365230480449256)
,p_name=>'P36_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31712358829505449247)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31712366035775449257)
,p_name=>'P36_PERSONID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31712358829505449247)
,p_item_default=>'0'
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31712366809542449258)
,p_name=>'P36_FIRSTNAME'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31712358829505449247)
,p_item_default=>'""'
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31712367631546449258)
,p_name=>'P36_LASTNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31712358829505449247)
,p_item_default=>'""'
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31712368444998449259)
,p_name=>'P36_HOMEADDRESS'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31712358829505449247)
,p_item_default=>'""'
,p_prompt=>'Homeaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31712369284019449260)
,p_name=>'P36_USCITIZEN'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31712358829505449247)
,p_item_default=>'true'
,p_prompt=>'Uscitizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31712370038360449260)
,p_name=>'P36_ZIPCODE'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31712358829505449247)
,p_item_default=>'0'
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31712370842420449261)
,p_name=>'P36_HOMEPHONE'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31712358829505449247)
,p_item_default=>'0'
,p_prompt=>'Homephone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31712371673389449262)
,p_name=>'P36_ISFIRED'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(31712358829505449247)
,p_item_default=>'true'
,p_prompt=>'Isfired'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31712372460641449263)
,p_name=>'P36_SALARY'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(31712358829505449247)
,p_item_default=>'0'
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31712373225617449264)
,p_name=>'P36_QUERY'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(31712358829505449247)
,p_item_default=>'''insert previous-employee (person-id := ''personid'', first-name := ''firstname'', last-name := ''lastname'', home_address := ''homeaddress'', us-citizen := ''uscitizen'', zipcode := ''zipcode'', home-phone := ''homephone'', isFired := ''isfired'', salary := ''salary'
||''');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31712360021107449249)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31705659696762363490:31705659805585363491'
,p_attribute_01=>wwv_flow_api.id(31705659805585363491)
,p_attribute_02=>'ITEMS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31712359207288449248)
);
end;
/
prompt --application/pages/page_00037
begin
wwv_flow_api.create_page(
 p_id=>37
,p_user_interface_id=>wwv_flow_api.id(90038896404340283122)
,p_name=>'Previous-project'
,p_page_mode=>'NORMAL'
,p_step_title=>'Previous-project'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCOTTYJACKSON97@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427211745'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31706172270003026613)
,p_plug_name=>'Previous-Projects'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90038869633567283070)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.project_no	project_no,			',
'jt2.project_title	project_title,',
'jt3.end_date_month    end_date_month,',
'jt4.end_date_day    end_date_day,',
'jt5.end_date_year    end_date_year,',
'jt6.est_person_hours    est_person_hours',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.project_no[*]'' COLUMNS rid for ordinality, project_no varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.project_title[*]'' COLUMNS rid for ordinality, project_title varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.end_date_month[*]'' COLUMNS rid for ordinality, end_date_month varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.end_date_day[*]'' COLUMNS rid for ordinality, end_date_day varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.end_date_year[*]'' COLUMNS rid for ordinality, end_date_year varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.est_person_hours[*]'' COLUMNS rid for ordinality,est_person_hours varchar path ''$'') jt6',
'',
'where	t.collection_name	=	''S16_PREVPROJ_JSON'' and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid',
'',
'--{"person_id":[1, 2, 3, 4, 5, 9, 6, 7, 8],"first_name":["Bill", "Diane", "Jennifer", "Alice", "George", "Mike", "Susan", "Steven", "Henry"],"last_name":["Dawer", "Wall", "Brown", "Dawer", "Layton", "Dawer", "Petro", "Williams", "Silverstone"],"home_'
||'address":["432 Hill Rd", "32 Cannon Dr", "35 Palm Lane", "432 Hill Rd", "347 Nueces St", "432 Hill Rd", "323 Country Lane", "3 Seton St", "100 Gates St"],"zipcode":[78705, 78705, 73014, 78021, 78705, 78705, 73421, 78705, 70007],"home_phone":[7891903,'
||' 7891903, 2360884, 6541658, 8798798, 7891903, 6541238, 8798712, 4565404],"us_citizen":["true", "true", "true", "false", "true", "true", "true", "false", "true"]}'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31706172351963026614)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'SCOTTYJACKSON97@GMAIL.COM'
,p_internal_uid=>31706172351963026614
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31706172423485026615)
,p_db_column_name=>'PROJECT_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Project no'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31706172528095026616)
,p_db_column_name=>'PROJECT_TITLE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Project title'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31706172706256026618)
,p_db_column_name=>'END_DATE_MONTH'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'End date month'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31706172898230026619)
,p_db_column_name=>'END_DATE_DAY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'End date day'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31706172946443026620)
,p_db_column_name=>'END_DATE_YEAR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'End date year'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31706173157716026622)
,p_db_column_name=>'EST_PERSON_HOURS'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Est person hours'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31735795150955995900)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'317357952'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PROJECT_NO:PROJECT_TITLE:END_DATE_MONTH:END_DATE_DAY:END_DATE_YEAR:EST_PERSON_HOURS'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31716466849231741218)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90038870170114283071)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31716479841882741238)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(90038870170114283071)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''S16_PREVPROJ_JSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(90038879000876283082)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31716480508575741243)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31706173264959026623)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31706172270003026613)
,p_button_name=>'Create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(90038891179635283093)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Previous-Project'
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:RP::'
,p_button_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
':P1_USERTYPE = ''President'' OR',
':P1_USERTYPE = ''Manager'''))
,p_button_condition_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31706172622904026617)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31706172270003026613)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(90038891179635283093)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31716467663696741220)
,p_branch_action=>'f?p=&APP_ID.:37:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31716468456225741223)
,p_name=>'P37_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31716466849231741218)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31716469293118741226)
,p_name=>'P37_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31716466849231741218)
,p_item_default=>'WDBD7'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31716470055186741226)
,p_name=>'P37_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31716466849231741218)
,p_item_default=>'localhost:7041'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31716470827165741227)
,p_name=>'P37_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31716466849231741218)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31716471662591741228)
,p_name=>'P37_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31716466849231741218)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31716472415910741228)
,p_name=>'P37_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31716466849231741218)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31716473218524741230)
,p_name=>'P37_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31716466849231741218)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31716473947793741230)
,p_name=>'P37_PROJECTNO'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31716466849231741218)
,p_prompt=>'Projectno'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31716474718469741231)
,p_name=>'P37_PROJECTNAME'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31716466849231741218)
,p_prompt=>'Projectname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31716475561941741231)
,p_name=>'P37_ENDMONTH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31716466849231741218)
,p_prompt=>'Endmonth'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31716476375717741232)
,p_name=>'P37_ENDDAY'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31716466849231741218)
,p_prompt=>'Endday'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31716477120981741233)
,p_name=>'P37_ENDYEAR'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31716466849231741218)
,p_prompt=>'Endyear'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31716477921058741233)
,p_name=>'P37_HOURS'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31716466849231741218)
,p_prompt=>'Hours'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31716478776861741234)
,p_name=>'P37_QUERY'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31716466849231741218)
,p_item_default=>'"from previous-project retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31716468096832741220)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31702383795221684397:31702383951387684397'
,p_attribute_01=>wwv_flow_api.id(31702383951387684397)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'S16_PREVPROJ_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00038
begin
wwv_flow_api.create_page(
 p_id=>38
,p_user_interface_id=>wwv_flow_api.id(90038896404340283122)
,p_name=>'Previous-project'
,p_page_mode=>'NORMAL'
,p_step_title=>'Previous-project'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCOTTYJACKSON97@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427073837'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31735984055222028077)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90038870170114283071)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31735984464610028079)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31735984055222028077)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(90038891179635283093)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31735984814539028079)
,p_branch_action=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31735984464610028079)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735985665521028082)
,p_name=>'P38_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31735984055222028077)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735986446024028084)
,p_name=>'P38_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31735984055222028077)
,p_item_default=>'WDBD7'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735987221917028085)
,p_name=>'P38_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31735984055222028077)
,p_item_default=>'localhost:7041'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735988062387028088)
,p_name=>'P38_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31735984055222028077)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735988813471028089)
,p_name=>'P38_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31735984055222028077)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735989606473028089)
,p_name=>'P38_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31735984055222028077)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735990421853028090)
,p_name=>'P38_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31735984055222028077)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735991249167028091)
,p_name=>'P38_PROJECTNO'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31735984055222028077)
,p_item_default=>'0'
,p_prompt=>'Projectno'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735992004397028092)
,p_name=>'P38_PROJECTNAME'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31735984055222028077)
,p_item_default=>'""'
,p_prompt=>'Projectname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735992839935028093)
,p_name=>'P38_ENDMONTH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31735984055222028077)
,p_item_default=>'0'
,p_prompt=>'Endmonth'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735993637816028093)
,p_name=>'P38_ENDDAY'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31735984055222028077)
,p_item_default=>'0'
,p_prompt=>'Endday'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735994458119028094)
,p_name=>'P38_ENDYEAR'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31735984055222028077)
,p_item_default=>'0'
,p_prompt=>'Endyear'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735995271087028095)
,p_name=>'P38_HOURS'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31735984055222028077)
,p_item_default=>'0'
,p_prompt=>'Hours'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735996010528028096)
,p_name=>'P38_QUERY'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31735984055222028077)
,p_item_default=>'''INSERT previous-project (project-no := ''projectno'', project-title := ''projectname'', est-person-hours := ''hours'', end-date-month := ''endmonth'', end-date-day := ''endday'', end-date-year := ''endyear'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31735985237383028080)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31702383795221684397:31702383951387684397'
,p_attribute_01=>wwv_flow_api.id(31702383951387684397)
,p_attribute_02=>'ITEMS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31735984464610028079)
);
end;
/
prompt --application/pages/page_00039
begin
wwv_flow_api.create_page(
 p_id=>39
,p_user_interface_id=>wwv_flow_api.id(90038896404340283122)
,p_name=>'Current-project'
,p_page_mode=>'NORMAL'
,p_step_title=>'Current-project'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCOTTYJACKSON97@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427205941'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31706173312706026624)
,p_plug_name=>'Current-Projects'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90038869633567283070)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.project_no	project_no,			',
'jt2.project_title	project_title,',
'jt3.project_active    project_active',
'',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.project_no[*]'' COLUMNS rid for ordinality, project_no varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.project_title[*]'' COLUMNS rid for ordinality, project_title varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.project_active[*]'' COLUMNS rid for ordinality, project_active varchar path ''$'') jt3',
'',
'where	t.collection_name	=	''S16_CURPROJ_JSON''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid',
'',
'--{"person_id":[1, 2, 3, 4, 5, 9, 6, 7, 8],"first_name":["Bill", "Diane", "Jennifer", "Alice", "George", "Mike", "Susan", "Steven", "Henry"],"last_name":["Dawer", "Wall", "Brown", "Dawer", "Layton", "Dawer", "Petro", "Williams", "Silverstone"],"home_'
||'address":["432 Hill Rd", "32 Cannon Dr", "35 Palm Lane", "432 Hill Rd", "347 Nueces St", "432 Hill Rd", "323 Country Lane", "3 Seton St", "100 Gates St"],"zipcode":[78705, 78705, 73014, 78021, 78705, 78705, 73421, 78705, 70007],"home_phone":[7891903,'
||' 7891903, 2360884, 6541658, 8798798, 7891903, 6541238, 8798712, 4565404],"us_citizen":["true", "true", "true", "false", "true", "true", "true", "false", "true"]}'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31706173455723026625)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'SCOTTYJACKSON97@GMAIL.COM'
,p_internal_uid=>31706173455723026625
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31706173553128026626)
,p_db_column_name=>'PROJECT_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Project no'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31706173616438026627)
,p_db_column_name=>'PROJECT_TITLE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Project title'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31706173801227026629)
,p_db_column_name=>'PROJECT_ACTIVE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Project active'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31736373150309057981)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'317363732'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PROJECT_NO:PROJECT_TITLE:PROJECT_ACTIVE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31736119588661039177)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90038870170114283071)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31736130274450039193)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(90038870170114283071)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''S16_CURPROJ_JSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(90038879000876283082)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31736130974376039197)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31706174194771026632)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31706173312706026624)
,p_button_name=>'Create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(90038891179635283093)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Current-project'
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:RP::'
,p_button_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
':P1_USERTYPE = ''President'' OR',
':P1_USERTYPE = ''Manager'''))
,p_button_condition_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31706173729625026628)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31706173312706026624)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(90038891179635283093)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31736120319332039178)
,p_branch_action=>'f?p=&APP_ID.:39:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736121132948039181)
,p_name=>'P39_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31736119588661039177)
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736121945894039184)
,p_name=>'P39_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31736119588661039177)
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736122700381039185)
,p_name=>'P39_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31736119588661039177)
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736123533686039186)
,p_name=>'P39_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31736119588661039177)
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736124335210039186)
,p_name=>'P39_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31736119588661039177)
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736125155567039187)
,p_name=>'P39_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31736119588661039177)
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736125940567039188)
,p_name=>'P39_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31736119588661039177)
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736126754974039189)
,p_name=>'P39_PROJECTNO'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31736119588661039177)
,p_prompt=>'Projectno'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736127532260039190)
,p_name=>'P39_PROJECTNAME'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31736119588661039177)
,p_prompt=>'Projectname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736128318791039191)
,p_name=>'P39_PROJECTACTIVE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31736119588661039177)
,p_prompt=>'Projectactive'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736129108825039192)
,p_name=>'P39_QUERY'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31736119588661039177)
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31736120759142039178)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31702286142243038973:31702286333328038976'
,p_attribute_01=>wwv_flow_api.id(31702286333328038976)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'S16_CURPROJ_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00041
begin
wwv_flow_api.create_page(
 p_id=>41
,p_user_interface_id=>wwv_flow_api.id(90038896404340283122)
,p_name=>'Current-project'
,p_page_mode=>'NORMAL'
,p_step_title=>'Current-project'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCOTTYJACKSON97@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427075208'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31751780724751170368)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90038870170114283071)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31751781170511170369)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31751780724751170368)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(90038891179635283093)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31751781579031170369)
,p_branch_action=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31751781170511170369)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31751782376939170371)
,p_name=>'P41_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31751780724751170368)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31751783106403170373)
,p_name=>'P41_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31751780724751170368)
,p_item_default=>'WDBD7'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31751783965246170374)
,p_name=>'P41_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31751780724751170368)
,p_item_default=>'localhost:7041'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31751784759223170375)
,p_name=>'P41_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31751780724751170368)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31751785586512170377)
,p_name=>'P41_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31751780724751170368)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31751786344167170378)
,p_name=>'P41_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31751780724751170368)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31751787149277170379)
,p_name=>'P41_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31751780724751170368)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31751787989218170380)
,p_name=>'P41_PROJECTNO'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31751780724751170368)
,p_item_default=>'0'
,p_prompt=>'Projectno'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31751788787893170381)
,p_name=>'P41_PROJECTNAME'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31751780724751170368)
,p_item_default=>'""'
,p_prompt=>'Projectname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31751789514100170382)
,p_name=>'P41_PROJECTACTIVE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31751780724751170368)
,p_item_default=>'true'
,p_prompt=>'Projectactive'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31751790337233170382)
,p_name=>'P41_QUERY'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31751780724751170368)
,p_item_default=>'''INSERT Current-Project (project-no := ''projectno'', project-title := ''projectname'', project-active := ''projectactive'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31751781910708170370)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31702286142243038973:31702286333328038976'
,p_attribute_01=>wwv_flow_api.id(31702286333328038976)
,p_attribute_02=>'ITEMS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31751781170511170369)
);
end;
/
prompt --application/pages/page_00045
begin
wwv_flow_api.create_page(
 p_id=>45
,p_user_interface_id=>wwv_flow_api.id(90038896404340283122)
,p_name=>'Manager-Projects'
,p_page_mode=>'NORMAL'
,p_step_title=>'Manager-Projects'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCOTTYJACKSON97@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428010303'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31840518589342523806)
,p_plug_name=>'Manager-Projects'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90038869633567283070)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.project_title project_title,			',
'jt2.project_no project_no',
'',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.project_title[*]'' COLUMNS rid for ordinality, project_title varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.project_no[*]'' COLUMNS rid for ordinality, project_no varchar path ''$'') jt2',
'where	t.collection_name	=	''S16_MANPROJ_JSON''and ',
'jt1.rid = jt2.rid ',
'',
'--{"person_id":[1, 2, 3, 4, 5, 9, 6, 7, 8],"first_name":["Bill", "Diane", "Jennifer", "Alice", "George", "Mike", "Susan", "Steven", "Henry"],"last_name":["Dawer", "Wall", "Brown", "Dawer", "Layton", "Dawer", "Petro", "Williams", "Silverstone"],"home_'
||'address":["432 Hill Rd", "32 Cannon Dr", "35 Palm Lane", "432 Hill Rd", "347 Nueces St", "432 Hill Rd", "323 Country Lane", "3 Seton St", "100 Gates St"],"zipcode":[78705, 78705, 73014, 78021, 78705, 78705, 73421, 78705, 70007],"home_phone":[7891903,'
||' 7891903, 2360884, 6541658, 8798798, 7891903, 6541238, 8798712, 4565404],"us_citizen":["true", "true", "true", "false", "true", "true", "true", "false", "true"]}'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31840518631223523807)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'SCOTTYJACKSON97@GMAIL.COM'
,p_internal_uid=>31840518631223523807
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31840518781913523808)
,p_db_column_name=>'PROJECT_TITLE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Project title'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31840518818632523809)
,p_db_column_name=>'PROJECT_NO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Project no'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31842125293329350444)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'318421253'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PROJECT_TITLE:PROJECT_NO'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31841936418629300587)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90038870170114283071)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31841947186673300600)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(90038870170114283071)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''S16_MANPROJ_JSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(90038879000876283082)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31841947834932300602)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31841936832913300589)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31841936418629300587)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(90038891179635283093)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31841937264345300589)
,p_branch_action=>'f?p=&APP_ID.:45:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841938012735300590)
,p_name=>'P45_MANAGERID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31841936418629300587)
,p_item_default=>'0'
,p_prompt=>'Managerid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841938806241300591)
,p_name=>'P45_DB'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31841936418629300587)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841939676560300592)
,p_name=>'P45_USER'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31841936418629300587)
,p_item_default=>'WDBD7'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841940483989300593)
,p_name=>'P45_PROJECTTITLE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31841936418629300587)
,p_prompt=>'Projecttitle'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841941297890300593)
,p_name=>'P45_PROJECTNO'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31841936418629300587)
,p_prompt=>'Projectno'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841942091267300594)
,p_name=>'P45_PASS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31841936418629300587)
,p_item_default=>'localhost:7041'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841942891171300595)
,p_name=>'P45_MODE'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31841936418629300587)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841943611558300596)
,p_name=>'P45_MODEL'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31841936418629300587)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841944459231300596)
,p_name=>'P45_RETURNDIMENSIONS'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31841936418629300587)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841945229136300597)
,p_name=>'P45_RETURNFOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31841936418629300587)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841946076074300598)
,p_name=>'P45_QUERY'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31841936418629300587)
,p_item_default=>'''FROM manager RETRIEVE project-title OF projects-managing, project-no OF projects-managing WHERE employee-id = ''managerid'';'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31841937603518300589)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31841806648469663175:31841806824741663176'
,p_attribute_01=>wwv_flow_api.id(31841806824741663176)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'S16_MANPROJ_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00046
begin
wwv_flow_api.create_page(
 p_id=>46
,p_user_interface_id=>wwv_flow_api.id(90038896404340283122)
,p_name=>'Project-employees'
,p_page_mode=>'NORMAL'
,p_step_title=>'Project-employees'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCOTTYJACKSON97@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428012607'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31840519114560523812)
,p_plug_name=>'Employees of Project'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90038869633567283070)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.employee_id    employee_id,			',
'jt2.first_name    first_name,',
'jt3.last_name    last_name',
'',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt3',
'',
'where	t.collection_name	=	''S16_PROJEMPS_JSON''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid',
'',
'--{"person_id":[1, 2, 3, 4, 5, 9, 6, 7, 8],"first_name":["Bill", "Diane", "Jennifer", "Alice", "George", "Mike", "Susan", "Steven", "Henry"],"last_name":["Dawer", "Wall", "Brown", "Dawer", "Layton", "Dawer", "Petro", "Williams", "Silverstone"],"home_'
||'address":["432 Hill Rd", "32 Cannon Dr", "35 Palm Lane", "432 Hill Rd", "347 Nueces St", "432 Hill Rd", "323 Country Lane", "3 Seton St", "100 Gates St"],"zipcode":[78705, 78705, 73014, 78021, 78705, 78705, 73421, 78705, 70007],"home_phone":[7891903,'
||' 7891903, 2360884, 6541658, 8798798, 7891903, 6541238, 8798712, 4565404],"us_citizen":["true", "true", "true", "false", "true", "true", "true", "false", "true"]}'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31840519239782523813)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'SCOTTYJACKSON97@GMAIL.COM'
,p_internal_uid=>31840519239782523813
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31840519350709523814)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Employee id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31840519449301523815)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'First name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31840519567333523816)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Last name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31847943626979895021)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'318479437'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'EMPLOYEE_ID:FIRST_NAME:LAST_NAME'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31844753785104818312)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90038870170114283071)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31844762806260818325)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(90038870170114283071)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''S16_PROJEMPS_JSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(90038879000876283082)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31844763565885818329)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31844754183173818312)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31844753785104818312)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(90038891179635283093)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31844754508558818313)
,p_branch_action=>'f?p=&APP_ID.:46:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31844755381277818316)
,p_name=>'P46_PROJECTNO'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31844753785104818312)
,p_item_default=>'0'
,p_prompt=>'Projectno'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31844756152144818318)
,p_name=>'P46_DB'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31844753785104818312)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31844756985973818319)
,p_name=>'P46_USER'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31844753785104818312)
,p_item_default=>'WDBD7'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31844757791216818320)
,p_name=>'P46_PASS'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31844753785104818312)
,p_item_default=>'localhost:7041'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31844758594731818320)
,p_name=>'P46_MODE'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31844753785104818312)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31844759338494818321)
,p_name=>'P46_MODEL'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31844753785104818312)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31844760187575818321)
,p_name=>'P46_RETURNDIMENSIONS'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31844753785104818312)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31844760904847818322)
,p_name=>'P46_RETURNFOR'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31844753785104818312)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31844761752571818323)
,p_name=>'P46_QUERY'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31844753785104818312)
,p_item_default=>'''FROM current-project RETRIEVE employee-id OF project-members, first-name OF project-members, last-name OF project-members WHERE project-no = ''projectno'';'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90038890687259283092)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31844754999074818314)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31842481509922429641:31842481708287429642'
,p_attribute_01=>wwv_flow_api.id(31842481708287429642)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'S16_PROJEMPS_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/shared_components/logic/webservices/project_employee
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31142977829270216065)
,p_name=>'Project-Employee'
,p_url=>'aevum.cs.utexas.edu:7040/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31142998035191216066)
,p_ws_id=>wwv_flow_api.id(31142977829270216065)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31142998329617216070)
,p_ws_opers_id=>wwv_flow_api.id(31142998035191216066)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430860315420306499)
,p_parameter_id=>wwv_flow_api.id(31142998329617216070)
,p_process_id=>wwv_flow_api.id(31430859518984306496)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430968249233340164)
,p_parameter_id=>wwv_flow_api.id(31142998329617216070)
,p_process_id=>wwv_flow_api.id(31430957480993340161)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31142998677597216071)
,p_ws_opers_id=>wwv_flow_api.id(31142998035191216066)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430861110732306501)
,p_parameter_id=>wwv_flow_api.id(31142998677597216071)
,p_process_id=>wwv_flow_api.id(31430859518984306496)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430969034288340164)
,p_parameter_id=>wwv_flow_api.id(31142998677597216071)
,p_process_id=>wwv_flow_api.id(31430957480993340161)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_PERSONID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31142998979835216071)
,p_ws_opers_id=>wwv_flow_api.id(31142998035191216066)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430861926746306502)
,p_parameter_id=>wwv_flow_api.id(31142998979835216071)
,p_process_id=>wwv_flow_api.id(31430859518984306496)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430969850422340165)
,p_parameter_id=>wwv_flow_api.id(31142998979835216071)
,p_process_id=>wwv_flow_api.id(31430957480993340161)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_FIRSTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31142999241991216071)
,p_ws_opers_id=>wwv_flow_api.id(31142998035191216066)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430862744370306503)
,p_parameter_id=>wwv_flow_api.id(31142999241991216071)
,p_process_id=>wwv_flow_api.id(31430859518984306496)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430970661780340167)
,p_parameter_id=>wwv_flow_api.id(31142999241991216071)
,p_process_id=>wwv_flow_api.id(31430957480993340161)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_LASTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31142999560404216071)
,p_ws_opers_id=>wwv_flow_api.id(31142998035191216066)
,p_name=>'homeaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430863500139306503)
,p_parameter_id=>wwv_flow_api.id(31142999560404216071)
,p_process_id=>wwv_flow_api.id(31430859518984306496)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430971433199340167)
,p_parameter_id=>wwv_flow_api.id(31142999560404216071)
,p_process_id=>wwv_flow_api.id(31430957480993340161)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_HOMEADDRESS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31142999855701216071)
,p_ws_opers_id=>wwv_flow_api.id(31142998035191216066)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430864396140306504)
,p_parameter_id=>wwv_flow_api.id(31142999855701216071)
,p_process_id=>wwv_flow_api.id(31430859518984306496)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430972284779340169)
,p_parameter_id=>wwv_flow_api.id(31142999855701216071)
,p_process_id=>wwv_flow_api.id(31430957480993340161)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_ZIPCODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143000168280216072)
,p_ws_opers_id=>wwv_flow_api.id(31142998035191216066)
,p_name=>'homephone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430865197832306505)
,p_parameter_id=>wwv_flow_api.id(31143000168280216072)
,p_process_id=>wwv_flow_api.id(31430859518984306496)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430973049817340170)
,p_parameter_id=>wwv_flow_api.id(31143000168280216072)
,p_process_id=>wwv_flow_api.id(31430957480993340161)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_HOMEPHONE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143000445188216072)
,p_ws_opers_id=>wwv_flow_api.id(31142998035191216066)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430865941657306506)
,p_parameter_id=>wwv_flow_api.id(31143000445188216072)
,p_process_id=>wwv_flow_api.id(31430859518984306496)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430973877564340171)
,p_parameter_id=>wwv_flow_api.id(31143000445188216072)
,p_process_id=>wwv_flow_api.id(31430957480993340161)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_USCITIZEN'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143000725092216072)
,p_ws_opers_id=>wwv_flow_api.id(31142998035191216066)
,p_name=>'employeeid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430866719969306507)
,p_parameter_id=>wwv_flow_api.id(31143000725092216072)
,p_process_id=>wwv_flow_api.id(31430859518984306496)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_EMPLOYEEID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430974622442340172)
,p_parameter_id=>wwv_flow_api.id(31143000725092216072)
,p_process_id=>wwv_flow_api.id(31430957480993340161)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_EMPLOYEEID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143001063297216072)
,p_ws_opers_id=>wwv_flow_api.id(31142998035191216066)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430867558189306508)
,p_parameter_id=>wwv_flow_api.id(31143001063297216072)
,p_process_id=>wwv_flow_api.id(31430859518984306496)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430975405617340172)
,p_parameter_id=>wwv_flow_api.id(31143001063297216072)
,p_process_id=>wwv_flow_api.id(31430957480993340161)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143001362497216073)
,p_ws_opers_id=>wwv_flow_api.id(31142998035191216066)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430868339672306508)
,p_parameter_id=>wwv_flow_api.id(31143001362497216073)
,p_process_id=>wwv_flow_api.id(31430859518984306496)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430976221046340173)
,p_parameter_id=>wwv_flow_api.id(31143001362497216073)
,p_process_id=>wwv_flow_api.id(31430957480993340161)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143001676005216073)
,p_ws_opers_id=>wwv_flow_api.id(31142998035191216066)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430869169326306509)
,p_parameter_id=>wwv_flow_api.id(31143001676005216073)
,p_process_id=>wwv_flow_api.id(31430859518984306496)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430977070627340174)
,p_parameter_id=>wwv_flow_api.id(31143001676005216073)
,p_process_id=>wwv_flow_api.id(31430957480993340161)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143001975674216073)
,p_ws_opers_id=>wwv_flow_api.id(31142998035191216066)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430869991915306510)
,p_parameter_id=>wwv_flow_api.id(31143001975674216073)
,p_process_id=>wwv_flow_api.id(31430859518984306496)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430977829797340174)
,p_parameter_id=>wwv_flow_api.id(31143001975674216073)
,p_process_id=>wwv_flow_api.id(31430957480993340161)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143002205786216074)
,p_ws_opers_id=>wwv_flow_api.id(31142998035191216066)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430870756485306511)
,p_parameter_id=>wwv_flow_api.id(31143002205786216074)
,p_process_id=>wwv_flow_api.id(31430859518984306496)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430978675595340175)
,p_parameter_id=>wwv_flow_api.id(31143002205786216074)
,p_process_id=>wwv_flow_api.id(31430957480993340161)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143002586208216074)
,p_ws_opers_id=>wwv_flow_api.id(31142998035191216066)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430871587817306511)
,p_parameter_id=>wwv_flow_api.id(31143002586208216074)
,p_process_id=>wwv_flow_api.id(31430859518984306496)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430979477355340176)
,p_parameter_id=>wwv_flow_api.id(31143002586208216074)
,p_process_id=>wwv_flow_api.id(31430957480993340161)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143002835493216074)
,p_ws_opers_id=>wwv_flow_api.id(31142998035191216066)
,p_name=>'salary'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430872380725306512)
,p_parameter_id=>wwv_flow_api.id(31143002835493216074)
,p_process_id=>wwv_flow_api.id(31430859518984306496)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_SALARY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430980212902340176)
,p_parameter_id=>wwv_flow_api.id(31143002835493216074)
,p_process_id=>wwv_flow_api.id(31430957480993340161)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_SALARY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143003112249216074)
,p_ws_opers_id=>wwv_flow_api.id(31142998035191216066)
,p_name=>'salaryexception'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430873133277306513)
,p_parameter_id=>wwv_flow_api.id(31143003112249216074)
,p_process_id=>wwv_flow_api.id(31430859518984306496)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430981073983340177)
,p_parameter_id=>wwv_flow_api.id(31143003112249216074)
,p_process_id=>wwv_flow_api.id(31430957480993340161)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143003479471216076)
,p_ws_opers_id=>wwv_flow_api.id(31142998035191216066)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430873979781306514)
,p_parameter_id=>wwv_flow_api.id(31143003479471216076)
,p_process_id=>wwv_flow_api.id(31430859518984306496)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31430981814847340178)
,p_parameter_id=>wwv_flow_api.id(31143003479471216076)
,p_process_id=>wwv_flow_api.id(31430957480993340161)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143062574875223822)
,p_ws_opers_id=>wwv_flow_api.id(31142998035191216066)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/manager
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31143712519020306892)
,p_name=>'Manager'
,p_url=>'aevum.cs.utexas.edu:7040/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31143712735917306895)
,p_ws_id=>wwv_flow_api.id(31143712519020306892)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143713021797306896)
,p_ws_opers_id=>wwv_flow_api.id(31143712735917306895)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31144891742632920806)
,p_parameter_id=>wwv_flow_api.id(31143713021797306896)
,p_process_id=>wwv_flow_api.id(31144890993799920802)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31431627516378500224)
,p_parameter_id=>wwv_flow_api.id(31143713021797306896)
,p_process_id=>wwv_flow_api.id(31431626799991500221)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143713365596306897)
,p_ws_opers_id=>wwv_flow_api.id(31143712735917306895)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31144892545360920807)
,p_parameter_id=>wwv_flow_api.id(31143713365596306897)
,p_process_id=>wwv_flow_api.id(31144890993799920802)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31431668373582500225)
,p_parameter_id=>wwv_flow_api.id(31143713365596306897)
,p_process_id=>wwv_flow_api.id(31431626799991500221)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_PERSONID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143713623609306897)
,p_ws_opers_id=>wwv_flow_api.id(31143712735917306895)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31144893394094920810)
,p_parameter_id=>wwv_flow_api.id(31143713623609306897)
,p_process_id=>wwv_flow_api.id(31144890993799920802)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31431669146597500226)
,p_parameter_id=>wwv_flow_api.id(31143713623609306897)
,p_process_id=>wwv_flow_api.id(31431626799991500221)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_FIRSTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143713967352306897)
,p_ws_opers_id=>wwv_flow_api.id(31143712735917306895)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31144894121893920811)
,p_parameter_id=>wwv_flow_api.id(31143713967352306897)
,p_process_id=>wwv_flow_api.id(31144890993799920802)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31431669984356500226)
,p_parameter_id=>wwv_flow_api.id(31143713967352306897)
,p_process_id=>wwv_flow_api.id(31431626799991500221)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_LASTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143714210930306897)
,p_ws_opers_id=>wwv_flow_api.id(31143712735917306895)
,p_name=>'homeaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31144894956840920813)
,p_parameter_id=>wwv_flow_api.id(31143714210930306897)
,p_process_id=>wwv_flow_api.id(31144890993799920802)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31431670746752500227)
,p_parameter_id=>wwv_flow_api.id(31143714210930306897)
,p_process_id=>wwv_flow_api.id(31431626799991500221)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_HOMEADDRESS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143714539158306898)
,p_ws_opers_id=>wwv_flow_api.id(31143712735917306895)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31144895721325920814)
,p_parameter_id=>wwv_flow_api.id(31143714539158306898)
,p_process_id=>wwv_flow_api.id(31144890993799920802)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31431671521741500227)
,p_parameter_id=>wwv_flow_api.id(31143714539158306898)
,p_process_id=>wwv_flow_api.id(31431626799991500221)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_ZIPCODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143714868431306898)
,p_ws_opers_id=>wwv_flow_api.id(31143712735917306895)
,p_name=>'homephone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31144896534256920814)
,p_parameter_id=>wwv_flow_api.id(31143714868431306898)
,p_process_id=>wwv_flow_api.id(31144890993799920802)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31431672342729500228)
,p_parameter_id=>wwv_flow_api.id(31143714868431306898)
,p_process_id=>wwv_flow_api.id(31431626799991500221)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_HOMEPHONE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143715160890306898)
,p_ws_opers_id=>wwv_flow_api.id(31143712735917306895)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31144897369733920815)
,p_parameter_id=>wwv_flow_api.id(31143715160890306898)
,p_process_id=>wwv_flow_api.id(31144890993799920802)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31431673113236500229)
,p_parameter_id=>wwv_flow_api.id(31143715160890306898)
,p_process_id=>wwv_flow_api.id(31431626799991500221)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_USCITIZEN'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143715494574306899)
,p_ws_opers_id=>wwv_flow_api.id(31143712735917306895)
,p_name=>'employeeid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31144908170465920816)
,p_parameter_id=>wwv_flow_api.id(31143715494574306899)
,p_process_id=>wwv_flow_api.id(31144890993799920802)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_EMPLOYEEID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31431673923247500229)
,p_parameter_id=>wwv_flow_api.id(31143715494574306899)
,p_process_id=>wwv_flow_api.id(31431626799991500221)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_EMPLOYEEID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143715710098306899)
,p_ws_opers_id=>wwv_flow_api.id(31143712735917306895)
,p_name=>'salary'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31144908969660920817)
,p_parameter_id=>wwv_flow_api.id(31143715710098306899)
,p_process_id=>wwv_flow_api.id(31144890993799920802)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_SALARY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31431674772993500230)
,p_parameter_id=>wwv_flow_api.id(31143715710098306899)
,p_process_id=>wwv_flow_api.id(31431626799991500221)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_SALARY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143716091036306900)
,p_ws_opers_id=>wwv_flow_api.id(31143712735917306895)
,p_name=>'salaryexception '
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31144909763716920818)
,p_parameter_id=>wwv_flow_api.id(31143716091036306900)
,p_process_id=>wwv_flow_api.id(31144890993799920802)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_SALARYEXCEPTION '
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31431675513845500231)
,p_parameter_id=>wwv_flow_api.id(31143716091036306900)
,p_process_id=>wwv_flow_api.id(31431626799991500221)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_SALARYEXCEPTION '
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143716353708306900)
,p_ws_opers_id=>wwv_flow_api.id(31143712735917306895)
,p_name=>'bonus'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31144910510478920819)
,p_parameter_id=>wwv_flow_api.id(31143716353708306900)
,p_process_id=>wwv_flow_api.id(31144890993799920802)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_BONUS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31431676381200500231)
,p_parameter_id=>wwv_flow_api.id(31143716353708306900)
,p_process_id=>wwv_flow_api.id(31431626799991500221)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_BONUS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143716937151306900)
,p_ws_opers_id=>wwv_flow_api.id(31143712735917306895)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31144912156061920821)
,p_parameter_id=>wwv_flow_api.id(31143716937151306900)
,p_process_id=>wwv_flow_api.id(31144890993799920802)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31431677161747500232)
,p_parameter_id=>wwv_flow_api.id(31143716937151306900)
,p_process_id=>wwv_flow_api.id(31431626799991500221)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143717255732306900)
,p_ws_opers_id=>wwv_flow_api.id(31143712735917306895)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31144912905348920821)
,p_parameter_id=>wwv_flow_api.id(31143717255732306900)
,p_process_id=>wwv_flow_api.id(31144890993799920802)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31431677919507500233)
,p_parameter_id=>wwv_flow_api.id(31143717255732306900)
,p_process_id=>wwv_flow_api.id(31431626799991500221)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143717587091306901)
,p_ws_opers_id=>wwv_flow_api.id(31143712735917306895)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31144913700474920822)
,p_parameter_id=>wwv_flow_api.id(31143717587091306901)
,p_process_id=>wwv_flow_api.id(31144890993799920802)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31431678711016500233)
,p_parameter_id=>wwv_flow_api.id(31143717587091306901)
,p_process_id=>wwv_flow_api.id(31431626799991500221)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143717844118306901)
,p_ws_opers_id=>wwv_flow_api.id(31143712735917306895)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31144914584666920823)
,p_parameter_id=>wwv_flow_api.id(31143717844118306901)
,p_process_id=>wwv_flow_api.id(31144890993799920802)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31431679514494500234)
,p_parameter_id=>wwv_flow_api.id(31143717844118306901)
,p_process_id=>wwv_flow_api.id(31431626799991500221)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143718102993306901)
,p_ws_opers_id=>wwv_flow_api.id(31143712735917306895)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31144915397868920823)
,p_parameter_id=>wwv_flow_api.id(31143718102993306901)
,p_process_id=>wwv_flow_api.id(31144890993799920802)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31431680385494500235)
,p_parameter_id=>wwv_flow_api.id(31143718102993306901)
,p_process_id=>wwv_flow_api.id(31431626799991500221)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143718440364306901)
,p_ws_opers_id=>wwv_flow_api.id(31143712735917306895)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31144916185961920824)
,p_parameter_id=>wwv_flow_api.id(31143718440364306901)
,p_process_id=>wwv_flow_api.id(31144890993799920802)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31431681198634500235)
,p_parameter_id=>wwv_flow_api.id(31143718440364306901)
,p_process_id=>wwv_flow_api.id(31431626799991500221)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143718779253306903)
,p_ws_opers_id=>wwv_flow_api.id(31143712735917306895)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31144916995010920825)
,p_parameter_id=>wwv_flow_api.id(31143718779253306903)
,p_process_id=>wwv_flow_api.id(31144890993799920802)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31431682785391500237)
,p_parameter_id=>wwv_flow_api.id(31143718779253306903)
,p_process_id=>wwv_flow_api.id(31431626799991500221)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31143719012372306903)
,p_ws_opers_id=>wwv_flow_api.id(31143712735917306895)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31209563969077651231)
,p_ws_opers_id=>wwv_flow_api.id(31143712735917306895)
,p_name=>'managerdept'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31431681998396500236)
,p_parameter_id=>wwv_flow_api.id(31209563969077651231)
,p_process_id=>wwv_flow_api.id(31431626799991500221)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_MANAGERDEPT'
);
end;
/
prompt --application/shared_components/logic/webservices/interim_manager
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31518284175657376259)
,p_name=>'Interim-Manager'
,p_url=>'aevum.cs.utexas.edu:7040/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31518284303305376259)
,p_ws_id=>wwv_flow_api.id(31518284175657376259)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31518284660898376260)
,p_ws_opers_id=>wwv_flow_api.id(31518284303305376259)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519381840112092344)
,p_parameter_id=>wwv_flow_api.id(31518284660898376260)
,p_process_id=>wwv_flow_api.id(31519381058271092341)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519935265358143750)
,p_parameter_id=>wwv_flow_api.id(31518284660898376260)
,p_process_id=>wwv_flow_api.id(31519934466892143749)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31518284996733376260)
,p_ws_opers_id=>wwv_flow_api.id(31518284303305376259)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519382883218092345)
,p_parameter_id=>wwv_flow_api.id(31518284996733376260)
,p_process_id=>wwv_flow_api.id(31519381058271092341)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519936053429143751)
,p_parameter_id=>wwv_flow_api.id(31518284996733376260)
,p_process_id=>wwv_flow_api.id(31519934466892143749)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31518285291639376261)
,p_ws_opers_id=>wwv_flow_api.id(31518284303305376259)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519383567188092345)
,p_parameter_id=>wwv_flow_api.id(31518285291639376261)
,p_process_id=>wwv_flow_api.id(31519381058271092341)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519936844752143752)
,p_parameter_id=>wwv_flow_api.id(31518285291639376261)
,p_process_id=>wwv_flow_api.id(31519934466892143749)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31518285568553376262)
,p_ws_opers_id=>wwv_flow_api.id(31518284303305376259)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519384330631092346)
,p_parameter_id=>wwv_flow_api.id(31518285568553376262)
,p_process_id=>wwv_flow_api.id(31519381058271092341)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519937652502143753)
,p_parameter_id=>wwv_flow_api.id(31518285568553376262)
,p_process_id=>wwv_flow_api.id(31519934466892143749)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31518285878484376262)
,p_ws_opers_id=>wwv_flow_api.id(31518284303305376259)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519385131167092349)
,p_parameter_id=>wwv_flow_api.id(31518285878484376262)
,p_process_id=>wwv_flow_api.id(31519381058271092341)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519938431027143753)
,p_parameter_id=>wwv_flow_api.id(31518285878484376262)
,p_process_id=>wwv_flow_api.id(31519934466892143749)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31518286132964376263)
,p_ws_opers_id=>wwv_flow_api.id(31518284303305376259)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519385960260092350)
,p_parameter_id=>wwv_flow_api.id(31518286132964376263)
,p_process_id=>wwv_flow_api.id(31519381058271092341)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519939283109143754)
,p_parameter_id=>wwv_flow_api.id(31518286132964376263)
,p_process_id=>wwv_flow_api.id(31519934466892143749)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31518286445664376263)
,p_ws_opers_id=>wwv_flow_api.id(31518284303305376259)
,p_name=>'bonus'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519386955240092351)
,p_parameter_id=>wwv_flow_api.id(31518286445664376263)
,p_process_id=>wwv_flow_api.id(31519381058271092341)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_BONUS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519940049728143755)
,p_parameter_id=>wwv_flow_api.id(31518286445664376263)
,p_process_id=>wwv_flow_api.id(31519934466892143749)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_BONUS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31518286783612376263)
,p_ws_opers_id=>wwv_flow_api.id(31518284303305376259)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519387786005092353)
,p_parameter_id=>wwv_flow_api.id(31518286783612376263)
,p_process_id=>wwv_flow_api.id(31519381058271092341)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519940874438143755)
,p_parameter_id=>wwv_flow_api.id(31518286783612376263)
,p_process_id=>wwv_flow_api.id(31519934466892143749)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_PERSONID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31518287029770376263)
,p_ws_opers_id=>wwv_flow_api.id(31518284303305376259)
,p_name=>'employeeid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519388563027092353)
,p_parameter_id=>wwv_flow_api.id(31518287029770376263)
,p_process_id=>wwv_flow_api.id(31519381058271092341)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_EMPLOYEEID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519941650907143757)
,p_parameter_id=>wwv_flow_api.id(31518287029770376263)
,p_process_id=>wwv_flow_api.id(31519934466892143749)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_EMPLOYEEID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31518287372505376263)
,p_ws_opers_id=>wwv_flow_api.id(31518284303305376259)
,p_name=>'salaryException'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519389535016092354)
,p_parameter_id=>wwv_flow_api.id(31518287372505376263)
,p_process_id=>wwv_flow_api.id(31519381058271092341)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519942440993143758)
,p_parameter_id=>wwv_flow_api.id(31518287372505376263)
,p_process_id=>wwv_flow_api.id(31519934466892143749)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31518287698427376264)
,p_ws_opers_id=>wwv_flow_api.id(31518284303305376259)
,p_name=>'firstName'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519390396356092355)
,p_parameter_id=>wwv_flow_api.id(31518287698427376264)
,p_process_id=>wwv_flow_api.id(31519381058271092341)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519943265189143758)
,p_parameter_id=>wwv_flow_api.id(31518287698427376264)
,p_process_id=>wwv_flow_api.id(31519934466892143749)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_FIRSTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31518287916302376264)
,p_ws_opers_id=>wwv_flow_api.id(31518284303305376259)
,p_name=>'lastName'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519391196161092355)
,p_parameter_id=>wwv_flow_api.id(31518287916302376264)
,p_process_id=>wwv_flow_api.id(31519381058271092341)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519944015790143759)
,p_parameter_id=>wwv_flow_api.id(31518287916302376264)
,p_process_id=>wwv_flow_api.id(31519934466892143749)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_LASTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31518328281848376264)
,p_ws_opers_id=>wwv_flow_api.id(31518284303305376259)
,p_name=>'address'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519391949442092356)
,p_parameter_id=>wwv_flow_api.id(31518328281848376264)
,p_process_id=>wwv_flow_api.id(31519381058271092341)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_ADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519944890481143760)
,p_parameter_id=>wwv_flow_api.id(31518328281848376264)
,p_process_id=>wwv_flow_api.id(31519934466892143749)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_ADDRESS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31518328532982376265)
,p_ws_opers_id=>wwv_flow_api.id(31518284303305376259)
,p_name=>'salary'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519392745509092357)
,p_parameter_id=>wwv_flow_api.id(31518328532982376265)
,p_process_id=>wwv_flow_api.id(31519381058271092341)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_SALARY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519945660241143761)
,p_parameter_id=>wwv_flow_api.id(31518328532982376265)
,p_process_id=>wwv_flow_api.id(31519934466892143749)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_SALARY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31518328800405376265)
,p_ws_opers_id=>wwv_flow_api.id(31518284303305376259)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519393533296092357)
,p_parameter_id=>wwv_flow_api.id(31518328800405376265)
,p_process_id=>wwv_flow_api.id(31519381058271092341)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519946426413143761)
,p_parameter_id=>wwv_flow_api.id(31518328800405376265)
,p_process_id=>wwv_flow_api.id(31519934466892143749)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_ZIPCODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31518329145168376265)
,p_ws_opers_id=>wwv_flow_api.id(31518284303305376259)
,p_name=>'phone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519394308285092358)
,p_parameter_id=>wwv_flow_api.id(31518329145168376265)
,p_process_id=>wwv_flow_api.id(31519381058271092341)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_PHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519947247169143762)
,p_parameter_id=>wwv_flow_api.id(31518329145168376265)
,p_process_id=>wwv_flow_api.id(31519934466892143749)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_PHONE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31518329435945376265)
,p_ws_opers_id=>wwv_flow_api.id(31518284303305376259)
,p_name=>'usCitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519395134948092359)
,p_parameter_id=>wwv_flow_api.id(31518329435945376265)
,p_process_id=>wwv_flow_api.id(31519381058271092341)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519948087666143763)
,p_parameter_id=>wwv_flow_api.id(31518329435945376265)
,p_process_id=>wwv_flow_api.id(31519934466892143749)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_USCITIZEN'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31518329779669376266)
,p_ws_opers_id=>wwv_flow_api.id(31518284303305376259)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519396982423092364)
,p_parameter_id=>wwv_flow_api.id(31518329779669376266)
,p_process_id=>wwv_flow_api.id(31519381058271092341)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519949684670143766)
,p_parameter_id=>wwv_flow_api.id(31518329779669376266)
,p_process_id=>wwv_flow_api.id(31519934466892143749)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31518330049545376266)
,p_ws_opers_id=>wwv_flow_api.id(31518284303305376259)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31519136809319068220)
,p_ws_opers_id=>wwv_flow_api.id(31518284303305376259)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519395966652092361)
,p_parameter_id=>wwv_flow_api.id(31519136809319068220)
,p_process_id=>wwv_flow_api.id(31519381058271092341)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31519948810723143765)
,p_parameter_id=>wwv_flow_api.id(31519136809319068220)
,p_process_id=>wwv_flow_api.id(31519934466892143749)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_PASS'
);
end;
/
prompt --application/shared_components/logic/webservices/project
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31545550659390955608)
,p_name=>'Project'
,p_url=>'aevum.cs.utexas.edu:7040/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31545550804970955609)
,p_ws_id=>wwv_flow_api.id(31545550659390955608)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31545551128302955610)
,p_ws_opers_id=>wwv_flow_api.id(31545550804970955609)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31545731120323592294)
,p_parameter_id=>wwv_flow_api.id(31545551128302955610)
,p_process_id=>wwv_flow_api.id(31545730387188592291)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31546449180740664189)
,p_parameter_id=>wwv_flow_api.id(31545551128302955610)
,p_process_id=>wwv_flow_api.id(31546448325569664187)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31545551453629955610)
,p_ws_opers_id=>wwv_flow_api.id(31545550804970955609)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31545731943273592296)
,p_parameter_id=>wwv_flow_api.id(31545551453629955610)
,p_process_id=>wwv_flow_api.id(31545730387188592291)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31546449932614664190)
,p_parameter_id=>wwv_flow_api.id(31545551453629955610)
,p_process_id=>wwv_flow_api.id(31546448325569664187)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31545551718051955611)
,p_ws_opers_id=>wwv_flow_api.id(31545550804970955609)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31545732787608592297)
,p_parameter_id=>wwv_flow_api.id(31545551718051955611)
,p_process_id=>wwv_flow_api.id(31545730387188592291)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31546450707233664191)
,p_parameter_id=>wwv_flow_api.id(31545551718051955611)
,p_process_id=>wwv_flow_api.id(31546448325569664187)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31545552010810955611)
,p_ws_opers_id=>wwv_flow_api.id(31545550804970955609)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31545733519313592298)
,p_parameter_id=>wwv_flow_api.id(31545552010810955611)
,p_process_id=>wwv_flow_api.id(31545730387188592291)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31546451588135664193)
,p_parameter_id=>wwv_flow_api.id(31545552010810955611)
,p_process_id=>wwv_flow_api.id(31546448325569664187)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31545552358994955612)
,p_ws_opers_id=>wwv_flow_api.id(31545550804970955609)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31545734371538592299)
,p_parameter_id=>wwv_flow_api.id(31545552358994955612)
,p_process_id=>wwv_flow_api.id(31545730387188592291)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31546452328783664193)
,p_parameter_id=>wwv_flow_api.id(31545552358994955612)
,p_process_id=>wwv_flow_api.id(31546448325569664187)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31545552613463955612)
,p_ws_opers_id=>wwv_flow_api.id(31545550804970955609)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31545735181900592300)
,p_parameter_id=>wwv_flow_api.id(31545552613463955612)
,p_process_id=>wwv_flow_api.id(31545730387188592291)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31546453141714664194)
,p_parameter_id=>wwv_flow_api.id(31545552613463955612)
,p_process_id=>wwv_flow_api.id(31546448325569664187)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31545552966113955613)
,p_ws_opers_id=>wwv_flow_api.id(31545550804970955609)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31545735944550592300)
,p_parameter_id=>wwv_flow_api.id(31545552966113955613)
,p_process_id=>wwv_flow_api.id(31545730387188592291)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31546453953037664195)
,p_parameter_id=>wwv_flow_api.id(31545552966113955613)
,p_process_id=>wwv_flow_api.id(31546448325569664187)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31545553296864955613)
,p_ws_opers_id=>wwv_flow_api.id(31545550804970955609)
,p_name=>'projectNo'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31545736716618592301)
,p_parameter_id=>wwv_flow_api.id(31545553296864955613)
,p_process_id=>wwv_flow_api.id(31545730387188592291)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_PROJECTNO'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31546454715255664195)
,p_parameter_id=>wwv_flow_api.id(31545553296864955613)
,p_process_id=>wwv_flow_api.id(31546448325569664187)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_PROJECTNO'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31545553536881955613)
,p_ws_opers_id=>wwv_flow_api.id(31545550804970955609)
,p_name=>'projectTitle'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31545737552279592301)
,p_parameter_id=>wwv_flow_api.id(31545553536881955613)
,p_process_id=>wwv_flow_api.id(31545730387188592291)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_PROJECTTITLE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31546455537963664198)
,p_parameter_id=>wwv_flow_api.id(31545553536881955613)
,p_process_id=>wwv_flow_api.id(31546448325569664187)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_PROJECTTITLE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31545553824134955613)
,p_ws_opers_id=>wwv_flow_api.id(31545550804970955609)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31545748358481592302)
,p_parameter_id=>wwv_flow_api.id(31545553824134955613)
,p_process_id=>wwv_flow_api.id(31545730387188592291)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31546456338922664198)
,p_parameter_id=>wwv_flow_api.id(31545553824134955613)
,p_process_id=>wwv_flow_api.id(31546448325569664187)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31545554150033955614)
,p_ws_opers_id=>wwv_flow_api.id(31545550804970955609)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/department
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31546907029498115418)
,p_name=>'Department '
,p_url=>'aevum.cs.utexas.edu:7040/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31546907298047115419)
,p_ws_id=>wwv_flow_api.id(31546907029498115418)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31546907533650115419)
,p_ws_opers_id=>wwv_flow_api.id(31546907298047115419)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31546995734297748137)
,p_parameter_id=>wwv_flow_api.id(31546907533650115419)
,p_process_id=>wwv_flow_api.id(31546994962154748136)
,p_map_type=>'ITEM'
,p_parm_value=>'P31_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31547342666922163247)
,p_parameter_id=>wwv_flow_api.id(31546907533650115419)
,p_process_id=>wwv_flow_api.id(31547341878664163246)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31546907850983115420)
,p_ws_opers_id=>wwv_flow_api.id(31546907298047115419)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31546996587606748138)
,p_parameter_id=>wwv_flow_api.id(31546907850983115420)
,p_process_id=>wwv_flow_api.id(31546994962154748136)
,p_map_type=>'ITEM'
,p_parm_value=>'P31_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31547343457589163248)
,p_parameter_id=>wwv_flow_api.id(31546907850983115420)
,p_process_id=>wwv_flow_api.id(31547341878664163246)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31546908112216115420)
,p_ws_opers_id=>wwv_flow_api.id(31546907298047115419)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31546997365166748138)
,p_parameter_id=>wwv_flow_api.id(31546908112216115420)
,p_process_id=>wwv_flow_api.id(31546994962154748136)
,p_map_type=>'ITEM'
,p_parm_value=>'P31_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31547344212050163249)
,p_parameter_id=>wwv_flow_api.id(31546908112216115420)
,p_process_id=>wwv_flow_api.id(31547341878664163246)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31546908482317115420)
,p_ws_opers_id=>wwv_flow_api.id(31546907298047115419)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31546998131102748141)
,p_parameter_id=>wwv_flow_api.id(31546908482317115420)
,p_process_id=>wwv_flow_api.id(31546994962154748136)
,p_map_type=>'ITEM'
,p_parm_value=>'P31_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31547345062104163252)
,p_parameter_id=>wwv_flow_api.id(31546908482317115420)
,p_process_id=>wwv_flow_api.id(31547341878664163246)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31546908746538115420)
,p_ws_opers_id=>wwv_flow_api.id(31546907298047115419)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31546998939590748142)
,p_parameter_id=>wwv_flow_api.id(31546908746538115420)
,p_process_id=>wwv_flow_api.id(31546994962154748136)
,p_map_type=>'ITEM'
,p_parm_value=>'P31_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31547345830254163253)
,p_parameter_id=>wwv_flow_api.id(31546908746538115420)
,p_process_id=>wwv_flow_api.id(31547341878664163246)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31546909074037115421)
,p_ws_opers_id=>wwv_flow_api.id(31546907298047115419)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31546999739608748143)
,p_parameter_id=>wwv_flow_api.id(31546909074037115421)
,p_process_id=>wwv_flow_api.id(31546994962154748136)
,p_map_type=>'ITEM'
,p_parm_value=>'P31_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31547346705325163253)
,p_parameter_id=>wwv_flow_api.id(31546909074037115421)
,p_process_id=>wwv_flow_api.id(31547341878664163246)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31546909323239115421)
,p_ws_opers_id=>wwv_flow_api.id(31546907298047115419)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31547000545415748143)
,p_parameter_id=>wwv_flow_api.id(31546909323239115421)
,p_process_id=>wwv_flow_api.id(31546994962154748136)
,p_map_type=>'ITEM'
,p_parm_value=>'P31_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31547347558508163254)
,p_parameter_id=>wwv_flow_api.id(31546909323239115421)
,p_process_id=>wwv_flow_api.id(31547341878664163246)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31546909614372115421)
,p_ws_opers_id=>wwv_flow_api.id(31546907298047115419)
,p_name=>'deptno'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31547001314297748144)
,p_parameter_id=>wwv_flow_api.id(31546909614372115421)
,p_process_id=>wwv_flow_api.id(31546994962154748136)
,p_map_type=>'ITEM'
,p_parm_value=>'P31_DEPTNO'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31547408359475163255)
,p_parameter_id=>wwv_flow_api.id(31546909614372115421)
,p_process_id=>wwv_flow_api.id(31547341878664163246)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_DEPTNO'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31546909933083115421)
,p_ws_opers_id=>wwv_flow_api.id(31546907298047115419)
,p_name=>'deptname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31547002141145748146)
,p_parameter_id=>wwv_flow_api.id(31546909933083115421)
,p_process_id=>wwv_flow_api.id(31546994962154748136)
,p_map_type=>'ITEM'
,p_parm_value=>'P31_DEPTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31547409113423163256)
,p_parameter_id=>wwv_flow_api.id(31546909933083115421)
,p_process_id=>wwv_flow_api.id(31547341878664163246)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_DEPTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31546910289574115422)
,p_ws_opers_id=>wwv_flow_api.id(31546907298047115419)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31547002961615748147)
,p_parameter_id=>wwv_flow_api.id(31546910289574115422)
,p_process_id=>wwv_flow_api.id(31546994962154748136)
,p_map_type=>'ITEM'
,p_parm_value=>'P31_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31547409994933163256)
,p_parameter_id=>wwv_flow_api.id(31546910289574115422)
,p_process_id=>wwv_flow_api.id(31547341878664163246)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31546910536828115422)
,p_ws_opers_id=>wwv_flow_api.id(31546907298047115419)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/president
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31701636393960588967)
,p_name=>'President'
,p_url=>'aevum.cs.utexas.edu:7040/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31701636562322588968)
,p_ws_id=>wwv_flow_api.id(31701636393960588967)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31701636851551588969)
,p_ws_opers_id=>wwv_flow_api.id(31701636562322588968)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31701741112126598828)
,p_parameter_id=>wwv_flow_api.id(31701636851551588969)
,p_process_id=>wwv_flow_api.id(31701740379275598822)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31701637194725588970)
,p_ws_opers_id=>wwv_flow_api.id(31701636562322588968)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31701741984469598829)
,p_parameter_id=>wwv_flow_api.id(31701637194725588970)
,p_process_id=>wwv_flow_api.id(31701740379275598822)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31701637491176588970)
,p_ws_opers_id=>wwv_flow_api.id(31701636562322588968)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31701742781583598829)
,p_parameter_id=>wwv_flow_api.id(31701637491176588970)
,p_process_id=>wwv_flow_api.id(31701740379275598822)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31701637745370588970)
,p_ws_opers_id=>wwv_flow_api.id(31701636562322588968)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31701743578376598830)
,p_parameter_id=>wwv_flow_api.id(31701637745370588970)
,p_process_id=>wwv_flow_api.id(31701740379275598822)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31701638011145588970)
,p_ws_opers_id=>wwv_flow_api.id(31701636562322588968)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31701744344729598832)
,p_parameter_id=>wwv_flow_api.id(31701638011145588970)
,p_process_id=>wwv_flow_api.id(31701740379275598822)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31701638315031588971)
,p_ws_opers_id=>wwv_flow_api.id(31701636562322588968)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31701745189890598832)
,p_parameter_id=>wwv_flow_api.id(31701638315031588971)
,p_process_id=>wwv_flow_api.id(31701740379275598822)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31701638628609588971)
,p_ws_opers_id=>wwv_flow_api.id(31701636562322588968)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31701745959861598833)
,p_parameter_id=>wwv_flow_api.id(31701638628609588971)
,p_process_id=>wwv_flow_api.id(31701740379275598822)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31701638955140588971)
,p_ws_opers_id=>wwv_flow_api.id(31701636562322588968)
,p_name=>'salary'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31701746721380598834)
,p_parameter_id=>wwv_flow_api.id(31701638955140588971)
,p_process_id=>wwv_flow_api.id(31701740379275598822)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_SALARY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31701639203858588973)
,p_ws_opers_id=>wwv_flow_api.id(31701636562322588968)
,p_name=>'salaryexception'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31701747554195598835)
,p_parameter_id=>wwv_flow_api.id(31701639203858588973)
,p_process_id=>wwv_flow_api.id(31701740379275598822)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31701639576039588973)
,p_ws_opers_id=>wwv_flow_api.id(31701636562322588968)
,p_name=>'bonus'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31701748318818598838)
,p_parameter_id=>wwv_flow_api.id(31701639576039588973)
,p_process_id=>wwv_flow_api.id(31701740379275598822)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_BONUS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31701639821895588973)
,p_ws_opers_id=>wwv_flow_api.id(31701636562322588968)
,p_name=>'employeeid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31701749105354598839)
,p_parameter_id=>wwv_flow_api.id(31701639821895588973)
,p_process_id=>wwv_flow_api.id(31701740379275598822)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_EMPLOYEEID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31701640154052588973)
,p_ws_opers_id=>wwv_flow_api.id(31701636562322588968)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31701749914431598840)
,p_parameter_id=>wwv_flow_api.id(31701640154052588973)
,p_process_id=>wwv_flow_api.id(31701740379275598822)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_PERSONID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31701640473300588974)
,p_ws_opers_id=>wwv_flow_api.id(31701636562322588968)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31701750744912598840)
,p_parameter_id=>wwv_flow_api.id(31701640473300588974)
,p_process_id=>wwv_flow_api.id(31701740379275598822)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_FIRSTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31701640705297588974)
,p_ws_opers_id=>wwv_flow_api.id(31701636562322588968)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31701751557040598841)
,p_parameter_id=>wwv_flow_api.id(31701640705297588974)
,p_process_id=>wwv_flow_api.id(31701740379275598822)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_LASTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31701641082715588974)
,p_ws_opers_id=>wwv_flow_api.id(31701636562322588968)
,p_name=>'homeaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31701752314220598842)
,p_parameter_id=>wwv_flow_api.id(31701641082715588974)
,p_process_id=>wwv_flow_api.id(31701740379275598822)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_HOMEADDRESS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31701641353742588974)
,p_ws_opers_id=>wwv_flow_api.id(31701636562322588968)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31701753149790598843)
,p_parameter_id=>wwv_flow_api.id(31701641353742588974)
,p_process_id=>wwv_flow_api.id(31701740379275598822)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_ZIPCODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31701641667746588975)
,p_ws_opers_id=>wwv_flow_api.id(31701636562322588968)
,p_name=>'homephone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31701753903386598843)
,p_parameter_id=>wwv_flow_api.id(31701641667746588975)
,p_process_id=>wwv_flow_api.id(31701740379275598822)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_HOMEPHONE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31701641993889588975)
,p_ws_opers_id=>wwv_flow_api.id(31701636562322588968)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31701754729913598844)
,p_parameter_id=>wwv_flow_api.id(31701641993889588975)
,p_process_id=>wwv_flow_api.id(31701740379275598822)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_USCITIZEN'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31701642278678588976)
,p_ws_opers_id=>wwv_flow_api.id(31701636562322588968)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31701755596085598845)
,p_parameter_id=>wwv_flow_api.id(31701642278678588976)
,p_process_id=>wwv_flow_api.id(31701740379275598822)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31701642599235588977)
,p_ws_opers_id=>wwv_flow_api.id(31701636562322588968)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/current_project
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31702286142243038973)
,p_name=>'Current-project'
,p_url=>'aevum.cs.utexas.edu:7040/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31702286333328038976)
,p_ws_id=>wwv_flow_api.id(31702286142243038973)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31702286652352038977)
,p_ws_opers_id=>wwv_flow_api.id(31702286333328038976)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736121540371039184)
,p_parameter_id=>wwv_flow_api.id(31702286652352038977)
,p_process_id=>wwv_flow_api.id(31736120759142039178)
,p_map_type=>'ITEM'
,p_parm_value=>'P39_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31751782758923170372)
,p_parameter_id=>wwv_flow_api.id(31702286652352038977)
,p_process_id=>wwv_flow_api.id(31751781910708170370)
,p_map_type=>'ITEM'
,p_parm_value=>'P41_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31702286958603038978)
,p_ws_opers_id=>wwv_flow_api.id(31702286333328038976)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736122329145039184)
,p_parameter_id=>wwv_flow_api.id(31702286958603038978)
,p_process_id=>wwv_flow_api.id(31736120759142039178)
,p_map_type=>'ITEM'
,p_parm_value=>'P39_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31751783519598170373)
,p_parameter_id=>wwv_flow_api.id(31702286958603038978)
,p_process_id=>wwv_flow_api.id(31751781910708170370)
,p_map_type=>'ITEM'
,p_parm_value=>'P41_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31702287269829038978)
,p_ws_opers_id=>wwv_flow_api.id(31702286333328038976)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736123197088039185)
,p_parameter_id=>wwv_flow_api.id(31702287269829038978)
,p_process_id=>wwv_flow_api.id(31736120759142039178)
,p_map_type=>'ITEM'
,p_parm_value=>'P39_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31751784384527170374)
,p_parameter_id=>wwv_flow_api.id(31702287269829038978)
,p_process_id=>wwv_flow_api.id(31751781910708170370)
,p_map_type=>'ITEM'
,p_parm_value=>'P41_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31702287551042038978)
,p_ws_opers_id=>wwv_flow_api.id(31702286333328038976)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736123992624039186)
,p_parameter_id=>wwv_flow_api.id(31702287551042038978)
,p_process_id=>wwv_flow_api.id(31736120759142039178)
,p_map_type=>'ITEM'
,p_parm_value=>'P39_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31751785139878170375)
,p_parameter_id=>wwv_flow_api.id(31702287551042038978)
,p_process_id=>wwv_flow_api.id(31751781910708170370)
,p_map_type=>'ITEM'
,p_parm_value=>'P41_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31702287870821038979)
,p_ws_opers_id=>wwv_flow_api.id(31702286333328038976)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736124774446039187)
,p_parameter_id=>wwv_flow_api.id(31702287870821038979)
,p_process_id=>wwv_flow_api.id(31736120759142039178)
,p_map_type=>'ITEM'
,p_parm_value=>'P39_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31751785977929170378)
,p_parameter_id=>wwv_flow_api.id(31702287870821038979)
,p_process_id=>wwv_flow_api.id(31751781910708170370)
,p_map_type=>'ITEM'
,p_parm_value=>'P41_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31702298191292038979)
,p_ws_opers_id=>wwv_flow_api.id(31702286333328038976)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736125582158039188)
,p_parameter_id=>wwv_flow_api.id(31702298191292038979)
,p_process_id=>wwv_flow_api.id(31736120759142039178)
,p_map_type=>'ITEM'
,p_parm_value=>'P39_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31751786760760170379)
,p_parameter_id=>wwv_flow_api.id(31702298191292038979)
,p_process_id=>wwv_flow_api.id(31751781910708170370)
,p_map_type=>'ITEM'
,p_parm_value=>'P41_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31702298427295038979)
,p_ws_opers_id=>wwv_flow_api.id(31702286333328038976)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736126391595039189)
,p_parameter_id=>wwv_flow_api.id(31702298427295038979)
,p_process_id=>wwv_flow_api.id(31736120759142039178)
,p_map_type=>'ITEM'
,p_parm_value=>'P39_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31751787548507170380)
,p_parameter_id=>wwv_flow_api.id(31702298427295038979)
,p_process_id=>wwv_flow_api.id(31751781910708170370)
,p_map_type=>'ITEM'
,p_parm_value=>'P41_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31702298761701038979)
,p_ws_opers_id=>wwv_flow_api.id(31702286333328038976)
,p_name=>'projectno'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736127144164039190)
,p_parameter_id=>wwv_flow_api.id(31702298761701038979)
,p_process_id=>wwv_flow_api.id(31736120759142039178)
,p_map_type=>'ITEM'
,p_parm_value=>'P39_PROJECTNO'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31751788363804170381)
,p_parameter_id=>wwv_flow_api.id(31702298761701038979)
,p_process_id=>wwv_flow_api.id(31751781910708170370)
,p_map_type=>'ITEM'
,p_parm_value=>'P41_PROJECTNO'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31702299023149038980)
,p_ws_opers_id=>wwv_flow_api.id(31702286333328038976)
,p_name=>'projectname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736127970740039190)
,p_parameter_id=>wwv_flow_api.id(31702299023149038980)
,p_process_id=>wwv_flow_api.id(31736120759142039178)
,p_map_type=>'ITEM'
,p_parm_value=>'P39_PROJECTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31751789114644170381)
,p_parameter_id=>wwv_flow_api.id(31702299023149038980)
,p_process_id=>wwv_flow_api.id(31751781910708170370)
,p_map_type=>'ITEM'
,p_parm_value=>'P41_PROJECTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31702299368760038980)
,p_ws_opers_id=>wwv_flow_api.id(31702286333328038976)
,p_name=>'projectactive'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736128725084039191)
,p_parameter_id=>wwv_flow_api.id(31702299368760038980)
,p_process_id=>wwv_flow_api.id(31736120759142039178)
,p_map_type=>'ITEM'
,p_parm_value=>'P39_PROJECTACTIVE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31751789977242170382)
,p_parameter_id=>wwv_flow_api.id(31702299368760038980)
,p_process_id=>wwv_flow_api.id(31751781910708170370)
,p_map_type=>'ITEM'
,p_parm_value=>'P41_PROJECTACTIVE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31702299687222038982)
,p_ws_opers_id=>wwv_flow_api.id(31702286333328038976)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736129502181039192)
,p_parameter_id=>wwv_flow_api.id(31702299687222038982)
,p_process_id=>wwv_flow_api.id(31736120759142039178)
,p_map_type=>'ITEM'
,p_parm_value=>'P39_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31751790780549170383)
,p_parameter_id=>wwv_flow_api.id(31702299687222038982)
,p_process_id=>wwv_flow_api.id(31751781910708170370)
,p_map_type=>'ITEM'
,p_parm_value=>'P41_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31702299990542038982)
,p_ws_opers_id=>wwv_flow_api.id(31702286333328038976)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/previous_project
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31702383795221684397)
,p_name=>'Previous-project'
,p_url=>'aevum.cs.utexas.edu:7040/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31702383951387684397)
,p_ws_id=>wwv_flow_api.id(31702383795221684397)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31702384210579684399)
,p_ws_opers_id=>wwv_flow_api.id(31702383951387684397)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31716468893687741225)
,p_parameter_id=>wwv_flow_api.id(31702384210579684399)
,p_process_id=>wwv_flow_api.id(31716468096832741220)
,p_map_type=>'ITEM'
,p_parm_value=>'P37_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735986062254028083)
,p_parameter_id=>wwv_flow_api.id(31702384210579684399)
,p_process_id=>wwv_flow_api.id(31735985237383028080)
,p_map_type=>'ITEM'
,p_parm_value=>'P38_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31702384588831684399)
,p_ws_opers_id=>wwv_flow_api.id(31702383951387684397)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31716469658811741226)
,p_parameter_id=>wwv_flow_api.id(31702384588831684399)
,p_process_id=>wwv_flow_api.id(31716468096832741220)
,p_map_type=>'ITEM'
,p_parm_value=>'P37_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735986858235028085)
,p_parameter_id=>wwv_flow_api.id(31702384588831684399)
,p_process_id=>wwv_flow_api.id(31735985237383028080)
,p_map_type=>'ITEM'
,p_parm_value=>'P38_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31702384874502684400)
,p_ws_opers_id=>wwv_flow_api.id(31702383951387684397)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31716470451309741227)
,p_parameter_id=>wwv_flow_api.id(31702384874502684400)
,p_process_id=>wwv_flow_api.id(31716468096832741220)
,p_map_type=>'ITEM'
,p_parm_value=>'P37_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735987696756028087)
,p_parameter_id=>wwv_flow_api.id(31702384874502684400)
,p_process_id=>wwv_flow_api.id(31735985237383028080)
,p_map_type=>'ITEM'
,p_parm_value=>'P38_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31702385128111684400)
,p_ws_opers_id=>wwv_flow_api.id(31702383951387684397)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31716471210675741228)
,p_parameter_id=>wwv_flow_api.id(31702385128111684400)
,p_process_id=>wwv_flow_api.id(31716468096832741220)
,p_map_type=>'ITEM'
,p_parm_value=>'P37_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735988431539028088)
,p_parameter_id=>wwv_flow_api.id(31702385128111684400)
,p_process_id=>wwv_flow_api.id(31735985237383028080)
,p_map_type=>'ITEM'
,p_parm_value=>'P38_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31702385469190684402)
,p_ws_opers_id=>wwv_flow_api.id(31702383951387684397)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31716472086268741228)
,p_parameter_id=>wwv_flow_api.id(31702385469190684402)
,p_process_id=>wwv_flow_api.id(31716468096832741220)
,p_map_type=>'ITEM'
,p_parm_value=>'P37_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735989220297028089)
,p_parameter_id=>wwv_flow_api.id(31702385469190684402)
,p_process_id=>wwv_flow_api.id(31735985237383028080)
,p_map_type=>'ITEM'
,p_parm_value=>'P38_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31702385777754684402)
,p_ws_opers_id=>wwv_flow_api.id(31702383951387684397)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31716472888349741229)
,p_parameter_id=>wwv_flow_api.id(31702385777754684402)
,p_process_id=>wwv_flow_api.id(31716468096832741220)
,p_map_type=>'ITEM'
,p_parm_value=>'P37_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735990075337028090)
,p_parameter_id=>wwv_flow_api.id(31702385777754684402)
,p_process_id=>wwv_flow_api.id(31735985237383028080)
,p_map_type=>'ITEM'
,p_parm_value=>'P38_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31702386065955684407)
,p_ws_opers_id=>wwv_flow_api.id(31702383951387684397)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31716473682257741230)
,p_parameter_id=>wwv_flow_api.id(31702386065955684407)
,p_process_id=>wwv_flow_api.id(31716468096832741220)
,p_map_type=>'ITEM'
,p_parm_value=>'P37_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735990866846028090)
,p_parameter_id=>wwv_flow_api.id(31702386065955684407)
,p_process_id=>wwv_flow_api.id(31735985237383028080)
,p_map_type=>'ITEM'
,p_parm_value=>'P38_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31702386360290684408)
,p_ws_opers_id=>wwv_flow_api.id(31702383951387684397)
,p_name=>'projectno'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31716474335940741230)
,p_parameter_id=>wwv_flow_api.id(31702386360290684408)
,p_process_id=>wwv_flow_api.id(31716468096832741220)
,p_map_type=>'ITEM'
,p_parm_value=>'P37_PROJECTNO'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735991683105028091)
,p_parameter_id=>wwv_flow_api.id(31702386360290684408)
,p_process_id=>wwv_flow_api.id(31735985237383028080)
,p_map_type=>'ITEM'
,p_parm_value=>'P38_PROJECTNO'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31702386756229684411)
,p_ws_opers_id=>wwv_flow_api.id(31702383951387684397)
,p_name=>'projectname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31716475112925741231)
,p_parameter_id=>wwv_flow_api.id(31702386756229684411)
,p_process_id=>wwv_flow_api.id(31716468096832741220)
,p_map_type=>'ITEM'
,p_parm_value=>'P37_PROJECTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735992477458028092)
,p_parameter_id=>wwv_flow_api.id(31702386756229684411)
,p_process_id=>wwv_flow_api.id(31735985237383028080)
,p_map_type=>'ITEM'
,p_parm_value=>'P38_PROJECTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31702387060320684412)
,p_ws_opers_id=>wwv_flow_api.id(31702383951387684397)
,p_name=>'endmonth'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31716475950782741232)
,p_parameter_id=>wwv_flow_api.id(31702387060320684412)
,p_process_id=>wwv_flow_api.id(31716468096832741220)
,p_map_type=>'ITEM'
,p_parm_value=>'P37_ENDMONTH'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735993254831028093)
,p_parameter_id=>wwv_flow_api.id(31702387060320684412)
,p_process_id=>wwv_flow_api.id(31735985237383028080)
,p_map_type=>'ITEM'
,p_parm_value=>'P38_ENDMONTH'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31702387344893684412)
,p_ws_opers_id=>wwv_flow_api.id(31702383951387684397)
,p_name=>'endday'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31716476758434741232)
,p_parameter_id=>wwv_flow_api.id(31702387344893684412)
,p_process_id=>wwv_flow_api.id(31716468096832741220)
,p_map_type=>'ITEM'
,p_parm_value=>'P37_ENDDAY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735994077236028094)
,p_parameter_id=>wwv_flow_api.id(31702387344893684412)
,p_process_id=>wwv_flow_api.id(31735985237383028080)
,p_map_type=>'ITEM'
,p_parm_value=>'P38_ENDDAY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31702387639686684413)
,p_ws_opers_id=>wwv_flow_api.id(31702383951387684397)
,p_name=>'endyear'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31716477564629741233)
,p_parameter_id=>wwv_flow_api.id(31702387639686684413)
,p_process_id=>wwv_flow_api.id(31716468096832741220)
,p_map_type=>'ITEM'
,p_parm_value=>'P37_ENDYEAR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735994840130028094)
,p_parameter_id=>wwv_flow_api.id(31702387639686684413)
,p_process_id=>wwv_flow_api.id(31735985237383028080)
,p_map_type=>'ITEM'
,p_parm_value=>'P38_ENDYEAR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31702387954956684414)
,p_ws_opers_id=>wwv_flow_api.id(31702383951387684397)
,p_name=>'hours'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31716478316569741234)
,p_parameter_id=>wwv_flow_api.id(31702387954956684414)
,p_process_id=>wwv_flow_api.id(31716468096832741220)
,p_map_type=>'ITEM'
,p_parm_value=>'P37_HOURS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735995665612028095)
,p_parameter_id=>wwv_flow_api.id(31702387954956684414)
,p_process_id=>wwv_flow_api.id(31735985237383028080)
,p_map_type=>'ITEM'
,p_parm_value=>'P38_HOURS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31702398281587684414)
,p_ws_opers_id=>wwv_flow_api.id(31702383951387684397)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31716479190351741237)
,p_parameter_id=>wwv_flow_api.id(31702398281587684414)
,p_process_id=>wwv_flow_api.id(31716468096832741220)
,p_map_type=>'ITEM'
,p_parm_value=>'P37_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735996441844028096)
,p_parameter_id=>wwv_flow_api.id(31702398281587684414)
,p_process_id=>wwv_flow_api.id(31735985237383028080)
,p_map_type=>'ITEM'
,p_parm_value=>'P38_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31702398508178684414)
,p_ws_opers_id=>wwv_flow_api.id(31702383951387684397)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/previous_employee
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31705659696762363490)
,p_name=>'Previous-Employee'
,p_url=>'aevum.cs.utexas.edu:7040/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31705659805585363491)
,p_ws_id=>wwv_flow_api.id(31705659696762363490)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31705660186913363492)
,p_ws_opers_id=>wwv_flow_api.id(31705659805585363491)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31705910549467376914)
,p_parameter_id=>wwv_flow_api.id(31705660186913363492)
,p_process_id=>wwv_flow_api.id(31705909730012376910)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31712360853889449251)
,p_parameter_id=>wwv_flow_api.id(31705660186913363492)
,p_process_id=>wwv_flow_api.id(31712360021107449249)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31705660428971363493)
,p_ws_opers_id=>wwv_flow_api.id(31705659805585363491)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31705911384258376915)
,p_parameter_id=>wwv_flow_api.id(31705660428971363493)
,p_process_id=>wwv_flow_api.id(31705909730012376910)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31712361634318449253)
,p_parameter_id=>wwv_flow_api.id(31705660428971363493)
,p_process_id=>wwv_flow_api.id(31712360021107449249)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31705660798658363493)
,p_ws_opers_id=>wwv_flow_api.id(31705659805585363491)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31705912124899376916)
,p_parameter_id=>wwv_flow_api.id(31705660798658363493)
,p_process_id=>wwv_flow_api.id(31705909730012376910)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31712362453719449253)
,p_parameter_id=>wwv_flow_api.id(31705660798658363493)
,p_process_id=>wwv_flow_api.id(31712360021107449249)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31705661058073363493)
,p_ws_opers_id=>wwv_flow_api.id(31705659805585363491)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31705912915098376916)
,p_parameter_id=>wwv_flow_api.id(31705661058073363493)
,p_process_id=>wwv_flow_api.id(31705909730012376910)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31712363259773449254)
,p_parameter_id=>wwv_flow_api.id(31705661058073363493)
,p_process_id=>wwv_flow_api.id(31712360021107449249)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31705661322721363494)
,p_ws_opers_id=>wwv_flow_api.id(31705659805585363491)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31705913785264376917)
,p_parameter_id=>wwv_flow_api.id(31705661322721363494)
,p_process_id=>wwv_flow_api.id(31705909730012376910)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31712364088181449255)
,p_parameter_id=>wwv_flow_api.id(31705661322721363494)
,p_process_id=>wwv_flow_api.id(31712360021107449249)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31705661693960363494)
,p_ws_opers_id=>wwv_flow_api.id(31705659805585363491)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31705914535805376918)
,p_parameter_id=>wwv_flow_api.id(31705661693960363494)
,p_process_id=>wwv_flow_api.id(31705909730012376910)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31712364806405449256)
,p_parameter_id=>wwv_flow_api.id(31705661693960363494)
,p_process_id=>wwv_flow_api.id(31712360021107449249)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31705661926255363494)
,p_ws_opers_id=>wwv_flow_api.id(31705659805585363491)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31705915393945376919)
,p_parameter_id=>wwv_flow_api.id(31705661926255363494)
,p_process_id=>wwv_flow_api.id(31705909730012376910)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31712365698620449257)
,p_parameter_id=>wwv_flow_api.id(31705661926255363494)
,p_process_id=>wwv_flow_api.id(31712360021107449249)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31705662210272363494)
,p_ws_opers_id=>wwv_flow_api.id(31705659805585363491)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31705916160762376921)
,p_parameter_id=>wwv_flow_api.id(31705662210272363494)
,p_process_id=>wwv_flow_api.id(31705909730012376910)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31712366442476449258)
,p_parameter_id=>wwv_flow_api.id(31705662210272363494)
,p_process_id=>wwv_flow_api.id(31712360021107449249)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_PERSONID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31705662549185363495)
,p_ws_opers_id=>wwv_flow_api.id(31705659805585363491)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31705916935281376922)
,p_parameter_id=>wwv_flow_api.id(31705662549185363495)
,p_process_id=>wwv_flow_api.id(31705909730012376910)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31712367237539449258)
,p_parameter_id=>wwv_flow_api.id(31705662549185363495)
,p_process_id=>wwv_flow_api.id(31712360021107449249)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_FIRSTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31705662818936363495)
,p_ws_opers_id=>wwv_flow_api.id(31705659805585363491)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31705917760755376922)
,p_parameter_id=>wwv_flow_api.id(31705662818936363495)
,p_process_id=>wwv_flow_api.id(31705909730012376910)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31712368078220449259)
,p_parameter_id=>wwv_flow_api.id(31705662818936363495)
,p_process_id=>wwv_flow_api.id(31712360021107449249)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_LASTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31705663179822363495)
,p_ws_opers_id=>wwv_flow_api.id(31705659805585363491)
,p_name=>'homeaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31705918542097376923)
,p_parameter_id=>wwv_flow_api.id(31705663179822363495)
,p_process_id=>wwv_flow_api.id(31705909730012376910)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31712368825759449260)
,p_parameter_id=>wwv_flow_api.id(31705663179822363495)
,p_process_id=>wwv_flow_api.id(31712360021107449249)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_HOMEADDRESS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31705663454934363496)
,p_ws_opers_id=>wwv_flow_api.id(31705659805585363491)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31705919305303376924)
,p_parameter_id=>wwv_flow_api.id(31705663454934363496)
,p_process_id=>wwv_flow_api.id(31705909730012376910)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31712369643909449260)
,p_parameter_id=>wwv_flow_api.id(31705663454934363496)
,p_process_id=>wwv_flow_api.id(31712360021107449249)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_USCITIZEN'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31705663765598363496)
,p_ws_opers_id=>wwv_flow_api.id(31705659805585363491)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31705920164190376925)
,p_parameter_id=>wwv_flow_api.id(31705663765598363496)
,p_process_id=>wwv_flow_api.id(31705909730012376910)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31712370482857449261)
,p_parameter_id=>wwv_flow_api.id(31705663765598363496)
,p_process_id=>wwv_flow_api.id(31712360021107449249)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_ZIPCODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31705664058874363497)
,p_ws_opers_id=>wwv_flow_api.id(31705659805585363491)
,p_name=>'homephone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31705920987651376925)
,p_parameter_id=>wwv_flow_api.id(31705664058874363497)
,p_process_id=>wwv_flow_api.id(31705909730012376910)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31712371257419449261)
,p_parameter_id=>wwv_flow_api.id(31705664058874363497)
,p_process_id=>wwv_flow_api.id(31712360021107449249)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_HOMEPHONE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31705664340721363497)
,p_ws_opers_id=>wwv_flow_api.id(31705659805585363491)
,p_name=>'isFired'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31705921751115376926)
,p_parameter_id=>wwv_flow_api.id(31705664340721363497)
,p_process_id=>wwv_flow_api.id(31705909730012376910)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_ISFIRED'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31712372099259449262)
,p_parameter_id=>wwv_flow_api.id(31705664340721363497)
,p_process_id=>wwv_flow_api.id(31712360021107449249)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_ISFIRED'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31705664646619363497)
,p_ws_opers_id=>wwv_flow_api.id(31705659805585363491)
,p_name=>'salary'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31705922578722376927)
,p_parameter_id=>wwv_flow_api.id(31705664646619363497)
,p_process_id=>wwv_flow_api.id(31705909730012376910)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_SALARY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31712372885214449263)
,p_parameter_id=>wwv_flow_api.id(31705664646619363497)
,p_process_id=>wwv_flow_api.id(31712360021107449249)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_SALARY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31705664972032363498)
,p_ws_opers_id=>wwv_flow_api.id(31705659805585363491)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31705923380840376927)
,p_parameter_id=>wwv_flow_api.id(31705664972032363498)
,p_process_id=>wwv_flow_api.id(31705909730012376910)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31712373638704449264)
,p_parameter_id=>wwv_flow_api.id(31705664972032363498)
,p_process_id=>wwv_flow_api.id(31712360021107449249)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31705665247471363498)
,p_ws_opers_id=>wwv_flow_api.id(31705659805585363491)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/manager_employees
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31840291043297465079)
,p_name=>'Manager-employees'
,p_url=>'aevum.cs.utexas.edu:7040/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31840291284937465079)
,p_ws_id=>wwv_flow_api.id(31840291043297465079)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31840291527192465081)
,p_ws_opers_id=>wwv_flow_api.id(31840291284937465079)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31840291815740465082)
,p_ws_opers_id=>wwv_flow_api.id(31840291284937465079)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31840292181034465082)
,p_ws_opers_id=>wwv_flow_api.id(31840291284937465079)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31840292419749465082)
,p_ws_opers_id=>wwv_flow_api.id(31840291284937465079)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31840292766245465082)
,p_ws_opers_id=>wwv_flow_api.id(31840291284937465079)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31840293027324465082)
,p_ws_opers_id=>wwv_flow_api.id(31840291284937465079)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31840293368040465083)
,p_ws_opers_id=>wwv_flow_api.id(31840291284937465079)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31840293607532465083)
,p_ws_opers_id=>wwv_flow_api.id(31840291284937465079)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31840293903324465084)
,p_ws_opers_id=>wwv_flow_api.id(31840291284937465079)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31840294327461465084)
,p_ws_opers_id=>wwv_flow_api.id(31840291284937465079)
,p_name=>'employeeid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31840294679705465086)
,p_ws_opers_id=>wwv_flow_api.id(31840291284937465079)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31840294991132465086)
,p_ws_opers_id=>wwv_flow_api.id(31840291284937465079)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/manager_projects
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31841806648469663175)
,p_name=>'Manager-Projects'
,p_url=>'aevum.cs.utexas.edu:7040/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31841806824741663176)
,p_ws_id=>wwv_flow_api.id(31841806648469663175)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31841807105282663178)
,p_ws_opers_id=>wwv_flow_api.id(31841806824741663176)
,p_name=>'managerid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841938460829300591)
,p_parameter_id=>wwv_flow_api.id(31841807105282663178)
,p_process_id=>wwv_flow_api.id(31841937603518300589)
,p_map_type=>'ITEM'
,p_parm_value=>'P45_MANAGERID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31841807444911663178)
,p_ws_opers_id=>wwv_flow_api.id(31841806824741663176)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841939265090300592)
,p_parameter_id=>wwv_flow_api.id(31841807444911663178)
,p_process_id=>wwv_flow_api.id(31841937603518300589)
,p_map_type=>'ITEM'
,p_parm_value=>'P45_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31841807739285663179)
,p_ws_opers_id=>wwv_flow_api.id(31841806824741663176)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841940054523300592)
,p_parameter_id=>wwv_flow_api.id(31841807739285663179)
,p_process_id=>wwv_flow_api.id(31841937603518300589)
,p_map_type=>'ITEM'
,p_parm_value=>'P45_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31841826708634291649)
,p_ws_opers_id=>wwv_flow_api.id(31841806824741663176)
,p_name=>'projecttitle'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841940867214300593)
,p_parameter_id=>wwv_flow_api.id(31841826708634291649)
,p_process_id=>wwv_flow_api.id(31841937603518300589)
,p_map_type=>'ITEM'
,p_parm_value=>'P45_PROJECTTITLE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31841827091305291650)
,p_ws_opers_id=>wwv_flow_api.id(31841806824741663176)
,p_name=>'projectno'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841941650830300594)
,p_parameter_id=>wwv_flow_api.id(31841827091305291650)
,p_process_id=>wwv_flow_api.id(31841937603518300589)
,p_map_type=>'ITEM'
,p_parm_value=>'P45_PROJECTNO'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31841828076330663179)
,p_ws_opers_id=>wwv_flow_api.id(31841806824741663176)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841942422306300595)
,p_parameter_id=>wwv_flow_api.id(31841828076330663179)
,p_process_id=>wwv_flow_api.id(31841937603518300589)
,p_map_type=>'ITEM'
,p_parm_value=>'P45_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31841828300914663179)
,p_ws_opers_id=>wwv_flow_api.id(31841806824741663176)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841943282534300595)
,p_parameter_id=>wwv_flow_api.id(31841828300914663179)
,p_process_id=>wwv_flow_api.id(31841937603518300589)
,p_map_type=>'ITEM'
,p_parm_value=>'P45_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31841828697556663179)
,p_ws_opers_id=>wwv_flow_api.id(31841806824741663176)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841944000692300596)
,p_parameter_id=>wwv_flow_api.id(31841828697556663179)
,p_process_id=>wwv_flow_api.id(31841937603518300589)
,p_map_type=>'ITEM'
,p_parm_value=>'P45_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31841828961463663181)
,p_ws_opers_id=>wwv_flow_api.id(31841806824741663176)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841944821325300597)
,p_parameter_id=>wwv_flow_api.id(31841828961463663181)
,p_process_id=>wwv_flow_api.id(31841937603518300589)
,p_map_type=>'ITEM'
,p_parm_value=>'P45_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31841829245140663181)
,p_ws_opers_id=>wwv_flow_api.id(31841806824741663176)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841945671520300597)
,p_parameter_id=>wwv_flow_api.id(31841829245140663181)
,p_process_id=>wwv_flow_api.id(31841937603518300589)
,p_map_type=>'ITEM'
,p_parm_value=>'P45_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31841829512906663181)
,p_ws_opers_id=>wwv_flow_api.id(31841806824741663176)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841946433405300598)
,p_parameter_id=>wwv_flow_api.id(31841829512906663181)
,p_process_id=>wwv_flow_api.id(31841937603518300589)
,p_map_type=>'ITEM'
,p_parm_value=>'P45_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31841829842943663182)
,p_ws_opers_id=>wwv_flow_api.id(31841806824741663176)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/project_employees
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31842481509922429641)
,p_name=>'Project-employees'
,p_url=>'aevum.cs.utexas.edu:7040/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31842481708287429642)
,p_ws_id=>wwv_flow_api.id(31842481509922429641)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31842482010057429643)
,p_ws_opers_id=>wwv_flow_api.id(31842481708287429642)
,p_name=>'Projectno'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31844755773871818317)
,p_parameter_id=>wwv_flow_api.id(31842482010057429643)
,p_process_id=>wwv_flow_api.id(31844754999074818314)
,p_map_type=>'ITEM'
,p_parm_value=>'P46_PROJECTNO'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31842482398306429644)
,p_ws_opers_id=>wwv_flow_api.id(31842481708287429642)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31844756528565818319)
,p_parameter_id=>wwv_flow_api.id(31842482398306429644)
,p_process_id=>wwv_flow_api.id(31844754999074818314)
,p_map_type=>'ITEM'
,p_parm_value=>'P46_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31842482638950429644)
,p_ws_opers_id=>wwv_flow_api.id(31842481708287429642)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31844757362147818319)
,p_parameter_id=>wwv_flow_api.id(31842482638950429644)
,p_process_id=>wwv_flow_api.id(31844754999074818314)
,p_map_type=>'ITEM'
,p_parm_value=>'P46_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31842482968119429644)
,p_ws_opers_id=>wwv_flow_api.id(31842481708287429642)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31844758113139818320)
,p_parameter_id=>wwv_flow_api.id(31842482968119429644)
,p_process_id=>wwv_flow_api.id(31844754999074818314)
,p_map_type=>'ITEM'
,p_parm_value=>'P46_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31842483236580429644)
,p_ws_opers_id=>wwv_flow_api.id(31842481708287429642)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31844758901240818321)
,p_parameter_id=>wwv_flow_api.id(31842483236580429644)
,p_process_id=>wwv_flow_api.id(31844754999074818314)
,p_map_type=>'ITEM'
,p_parm_value=>'P46_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31842483544186429645)
,p_ws_opers_id=>wwv_flow_api.id(31842481708287429642)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31844759763048818321)
,p_parameter_id=>wwv_flow_api.id(31842483544186429645)
,p_process_id=>wwv_flow_api.id(31844754999074818314)
,p_map_type=>'ITEM'
,p_parm_value=>'P46_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31842483854052429645)
,p_ws_opers_id=>wwv_flow_api.id(31842481708287429642)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31844760556439818322)
,p_parameter_id=>wwv_flow_api.id(31842483854052429645)
,p_process_id=>wwv_flow_api.id(31844754999074818314)
,p_map_type=>'ITEM'
,p_parm_value=>'P46_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31842484178347429645)
,p_ws_opers_id=>wwv_flow_api.id(31842481708287429642)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31844761358635818322)
,p_parameter_id=>wwv_flow_api.id(31842484178347429645)
,p_process_id=>wwv_flow_api.id(31844754999074818314)
,p_map_type=>'ITEM'
,p_parm_value=>'P46_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31842484491652429645)
,p_ws_opers_id=>wwv_flow_api.id(31842481708287429642)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31844762135169818324)
,p_parameter_id=>wwv_flow_api.id(31842484491652429645)
,p_process_id=>wwv_flow_api.id(31844754999074818314)
,p_map_type=>'ITEM'
,p_parm_value=>'P46_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31842484730969429645)
,p_ws_opers_id=>wwv_flow_api.id(31842481708287429642)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/employee
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(60701105474369257384)
,p_name=>'Employee'
,p_url=>'aevum.cs.utexas.edu:7040/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(60701105717180257388)
,p_ws_id=>wwv_flow_api.id(60701105474369257384)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60701106024674257392)
,p_ws_opers_id=>wwv_flow_api.id(60701105717180257388)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60702798974731122594)
,p_parameter_id=>wwv_flow_api.id(60701106024674257392)
,p_process_id=>wwv_flow_api.id(60702784560167122580)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60833544158106804617)
,p_parameter_id=>wwv_flow_api.id(60701106024674257392)
,p_process_id=>wwv_flow_api.id(60833537038764804609)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60701106320537257393)
,p_ws_opers_id=>wwv_flow_api.id(60701105717180257388)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60701196708600268358)
,p_ws_opers_id=>wwv_flow_api.id(60701105717180257388)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60702785414763122582)
,p_parameter_id=>wwv_flow_api.id(60701196708600268358)
,p_process_id=>wwv_flow_api.id(60702784560167122580)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60833537453758804610)
,p_parameter_id=>wwv_flow_api.id(60701196708600268358)
,p_process_id=>wwv_flow_api.id(60833537038764804609)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60701196987984268359)
,p_ws_opers_id=>wwv_flow_api.id(60701105717180257388)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60702786192424122582)
,p_parameter_id=>wwv_flow_api.id(60701196987984268359)
,p_process_id=>wwv_flow_api.id(60702784560167122580)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60833537760642804612)
,p_parameter_id=>wwv_flow_api.id(60701196987984268359)
,p_process_id=>wwv_flow_api.id(60833537038764804609)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60701197284639268359)
,p_ws_opers_id=>wwv_flow_api.id(60701105717180257388)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60702786988238122583)
,p_parameter_id=>wwv_flow_api.id(60701197284639268359)
,p_process_id=>wwv_flow_api.id(60702784560167122580)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60833538188483804612)
,p_parameter_id=>wwv_flow_api.id(60701197284639268359)
,p_process_id=>wwv_flow_api.id(60833537038764804609)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60701197564093268359)
,p_ws_opers_id=>wwv_flow_api.id(60701105717180257388)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60702787838879122584)
,p_parameter_id=>wwv_flow_api.id(60701197564093268359)
,p_process_id=>wwv_flow_api.id(60702784560167122580)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60833538631724804612)
,p_parameter_id=>wwv_flow_api.id(60701197564093268359)
,p_process_id=>wwv_flow_api.id(60833537038764804609)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60701197874589268360)
,p_ws_opers_id=>wwv_flow_api.id(60701105717180257388)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60702788601888122584)
,p_parameter_id=>wwv_flow_api.id(60701197874589268360)
,p_process_id=>wwv_flow_api.id(60702784560167122580)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60833539055778804612)
,p_parameter_id=>wwv_flow_api.id(60701197874589268360)
,p_process_id=>wwv_flow_api.id(60833537038764804609)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60701198253495268360)
,p_ws_opers_id=>wwv_flow_api.id(60701105717180257388)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60702789394894122585)
,p_parameter_id=>wwv_flow_api.id(60701198253495268360)
,p_process_id=>wwv_flow_api.id(60702784560167122580)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60833539410464804613)
,p_parameter_id=>wwv_flow_api.id(60701198253495268360)
,p_process_id=>wwv_flow_api.id(60833537038764804609)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60701198492369268360)
,p_ws_opers_id=>wwv_flow_api.id(60701105717180257388)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60702790177825122586)
,p_parameter_id=>wwv_flow_api.id(60701198492369268360)
,p_process_id=>wwv_flow_api.id(60702784560167122580)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60833539843585804613)
,p_parameter_id=>wwv_flow_api.id(60701198492369268360)
,p_process_id=>wwv_flow_api.id(60833537038764804609)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60701458677282925005)
,p_ws_opers_id=>wwv_flow_api.id(60701105717180257388)
,p_name=>'employeeid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60702790964901122587)
,p_parameter_id=>wwv_flow_api.id(60701458677282925005)
,p_process_id=>wwv_flow_api.id(60702784560167122580)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_EMPLOYEEID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60833540160001804614)
,p_parameter_id=>wwv_flow_api.id(60701458677282925005)
,p_process_id=>wwv_flow_api.id(60833537038764804609)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_EMPLOYEEID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60701845364463354099)
,p_ws_opers_id=>wwv_flow_api.id(60701105717180257388)
,p_name=>'salary'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60702791847542122587)
,p_parameter_id=>wwv_flow_api.id(60701845364463354099)
,p_process_id=>wwv_flow_api.id(60702784560167122580)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_SALARY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60833540599555804615)
,p_parameter_id=>wwv_flow_api.id(60701845364463354099)
,p_process_id=>wwv_flow_api.id(60833537038764804609)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_SALARY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60701845703240354099)
,p_ws_opers_id=>wwv_flow_api.id(60701105717180257388)
,p_name=>'salaryexception'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60702792604757122588)
,p_parameter_id=>wwv_flow_api.id(60701845703240354099)
,p_process_id=>wwv_flow_api.id(60702784560167122580)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60833541012773804615)
,p_parameter_id=>wwv_flow_api.id(60701845703240354099)
,p_process_id=>wwv_flow_api.id(60833537038764804609)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60701846042853354100)
,p_ws_opers_id=>wwv_flow_api.id(60701105717180257388)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60702793420608122589)
,p_parameter_id=>wwv_flow_api.id(60701846042853354100)
,p_process_id=>wwv_flow_api.id(60702784560167122580)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60833541418665804615)
,p_parameter_id=>wwv_flow_api.id(60701846042853354100)
,p_process_id=>wwv_flow_api.id(60833537038764804609)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_PERSONID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60701846312434354100)
,p_ws_opers_id=>wwv_flow_api.id(60701105717180257388)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60702794176889122590)
,p_parameter_id=>wwv_flow_api.id(60701846312434354100)
,p_process_id=>wwv_flow_api.id(60702784560167122580)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60833541764317804616)
,p_parameter_id=>wwv_flow_api.id(60701846312434354100)
,p_process_id=>wwv_flow_api.id(60833537038764804609)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_FIRSTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60701846576181354100)
,p_ws_opers_id=>wwv_flow_api.id(60701105717180257388)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60702794992263122590)
,p_parameter_id=>wwv_flow_api.id(60701846576181354100)
,p_process_id=>wwv_flow_api.id(60702784560167122580)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60833542196128804616)
,p_parameter_id=>wwv_flow_api.id(60701846576181354100)
,p_process_id=>wwv_flow_api.id(60833537038764804609)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_LASTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60701846876511354100)
,p_ws_opers_id=>wwv_flow_api.id(60701105717180257388)
,p_name=>'homeaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60702795775143122591)
,p_parameter_id=>wwv_flow_api.id(60701846876511354100)
,p_process_id=>wwv_flow_api.id(60702784560167122580)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60833542602899804616)
,p_parameter_id=>wwv_flow_api.id(60701846876511354100)
,p_process_id=>wwv_flow_api.id(60833537038764804609)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_HOMEADDRESS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60701847229534354101)
,p_ws_opers_id=>wwv_flow_api.id(60701105717180257388)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60702796645589122592)
,p_parameter_id=>wwv_flow_api.id(60701847229534354101)
,p_process_id=>wwv_flow_api.id(60702784560167122580)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60833542992968804616)
,p_parameter_id=>wwv_flow_api.id(60701847229534354101)
,p_process_id=>wwv_flow_api.id(60833537038764804609)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_ZIPCODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60701847483544354101)
,p_ws_opers_id=>wwv_flow_api.id(60701105717180257388)
,p_name=>'homephone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60702797380452122592)
,p_parameter_id=>wwv_flow_api.id(60701847483544354101)
,p_process_id=>wwv_flow_api.id(60702784560167122580)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60833543398456804617)
,p_parameter_id=>wwv_flow_api.id(60701847483544354101)
,p_process_id=>wwv_flow_api.id(60833537038764804609)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_HOMEPHONE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60701847854863354102)
,p_ws_opers_id=>wwv_flow_api.id(60701105717180257388)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60702798190835122593)
,p_parameter_id=>wwv_flow_api.id(60701847854863354102)
,p_process_id=>wwv_flow_api.id(60702784560167122580)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60833543810948804617)
,p_parameter_id=>wwv_flow_api.id(60701847854863354102)
,p_process_id=>wwv_flow_api.id(60833537038764804609)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_USCITIZEN'
);
end;
/
prompt --application/shared_components/logic/webservices/person
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(90038901948406921907)
,p_name=>'Person'
,p_url=>'aevum.cs.utexas.edu:7040/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(90038902135415921913)
,p_ws_id=>wwv_flow_api.id(90038901948406921907)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60593517007028517234)
,p_ws_opers_id=>wwv_flow_api.id(90038902135415921913)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60696998879081725087)
,p_parameter_id=>wwv_flow_api.id(60593517007028517234)
,p_process_id=>wwv_flow_api.id(60696998085093725084)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_LASTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(90038902515687921916)
,p_ws_opers_id=>wwv_flow_api.id(90038902135415921913)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(90038905540826940947)
,p_ws_opers_id=>wwv_flow_api.id(90038902135415921913)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60696999714276725088)
,p_parameter_id=>wwv_flow_api.id(90038905540826940947)
,p_process_id=>wwv_flow_api.id(60696998085093725084)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(90038905834348940947)
,p_ws_opers_id=>wwv_flow_api.id(90038902135415921913)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60697000490139725089)
,p_parameter_id=>wwv_flow_api.id(90038905834348940947)
,p_process_id=>wwv_flow_api.id(60696998085093725084)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(90038906217630940948)
,p_ws_opers_id=>wwv_flow_api.id(90038902135415921913)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60697001281277725090)
,p_parameter_id=>wwv_flow_api.id(90038906217630940948)
,p_process_id=>wwv_flow_api.id(60696998085093725084)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(90038906524193940948)
,p_ws_opers_id=>wwv_flow_api.id(90038902135415921913)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60697002153088725090)
,p_parameter_id=>wwv_flow_api.id(90038906524193940948)
,p_process_id=>wwv_flow_api.id(60696998085093725084)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(90038906754215940948)
,p_ws_opers_id=>wwv_flow_api.id(90038902135415921913)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60697002863728725091)
,p_parameter_id=>wwv_flow_api.id(90038906754215940948)
,p_process_id=>wwv_flow_api.id(60696998085093725084)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(90038907043264940949)
,p_ws_opers_id=>wwv_flow_api.id(90038902135415921913)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60697003684146725092)
,p_parameter_id=>wwv_flow_api.id(90038907043264940949)
,p_process_id=>wwv_flow_api.id(60696998085093725084)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(90038907339091940949)
,p_ws_opers_id=>wwv_flow_api.id(90038902135415921913)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60697004517410725093)
,p_parameter_id=>wwv_flow_api.id(90038907339091940949)
,p_process_id=>wwv_flow_api.id(60696998085093725084)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(90038925840974319467)
,p_ws_opers_id=>wwv_flow_api.id(90038902135415921913)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60697005276367725093)
,p_parameter_id=>wwv_flow_api.id(90038925840974319467)
,p_process_id=>wwv_flow_api.id(60696998085093725084)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_QUERY'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(31517024562782882456)
);
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
