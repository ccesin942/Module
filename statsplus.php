<?php 
if(!defined('_PS_VERSION_'))
	exit;

class StatsPlus extends module
{
	public function __construct()
	{
		$this->name = 'statsplus';
		$this->version = '1.0.0';
		$this->author = 'Grupo Hostienda';
		$this->tab = 'administration';
		$this->secure_ley = Tools::encrypt($this->name);
		$this->need_instance = 0;
		$this->controller = array('plus');
		$this->bootstrap = true;
		parent::__construct();
		$this->displayName = $this->l('Stats Plus');
		$this->description = $this->l('Estadisticas avanzadas que te permitiran visualizar el comportamiento de tu tienda de manera rapida y sencilla, maximizando tu productividad y permitiendote gestionarla de forma eficiente');
		$this->confirmUninstall = $this->l('Are you sure you want to uninstall this module?');
		$this->ps_version_comliancy = array('min' => '1.6.0.0','max' => _PS_VERSION_);
	}

	public function install()
	{
		return parent::install() && $this->installModuleTab() && $this->registerHook('displayBackOfficeHeader');;
	}

	public function uninstall()
	{
		return $this->uninstallModuleTab() && parent::uninstall();
	}

	public function installModuleTab()
	{
		$tab = new Tab;
		$langs = language::getLanguages();
		foreach ($langs as $lang)
			$tab->name[$lang['id_lang']] = 'Stats Plus';
		$tab->module = $this->name;
		$tab->id_parent = 0;
		$tab->class_name = 'AdminStatsPlus';
		return $tab->save();
	}

	public function uninstallModuleTab()
	{
		$id_tab = Tab::getIdFromClassName('AdminStatsPlus');
		if($id_tab)
		{
			$tab = new Tab($id_tab);
			return $tab->delete();
		}
		return true;
	}

	public function hookDisplayBackOfficeHeader() {
		return $this->context->controller->addCss($this->_path.'css/icon-tab.css');
	}
}