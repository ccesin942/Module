<?php 

class AdminStatsPlusController extends ModuleAdminController
{
	public function init()
	{
		parent::init();
		$this->bootstrap = true;
	}

	public function initContent()
	{
		parent::initContent();
		$this->context->smarty->assign(array(
			'total_sales' => $this->getTotalSales(),
			'total_orders' => $this->getTotalOrders(),
			'total_customers' => $this->getTotalRegistrations(),
			'total_visits' => $this->getTotalVisits(),
			'total_products' => $this->getTotalProducts(),
			'actual_month_customers' => $this->getRegistrationsActualMonth(),
			'actual_month_orders' => $this->getOrdersActualMonth(),
			'actual_month_visits' => $this->getVisitsActualMonth(),
			'actual_month_products' => $this->getProductsActualMonth(),
			'actual_month_sales' => $this->getSalesActualMonth(),
			'last_month_customers' => $this->getRegistrationsLastMonth(),
			'last_month_orders' => $this->getOrdersLastMonth(),
			'last_month_visits' => $this->getVisitsLastMonth(),
			'last_month_products' => $this->getProductsLastMonth(),
			'last_month_sales' => $this->getSalesLastMonth(),
			'actual_year_customers' => $this->getRegistrationsActualYear(),
			'actual_year_orders' => $this->getOrdersActualYear(),
			'actual_year_visits' => $this->getVisitsActualYear(),
			'actual_year_products' => $this->getProductsActualYear(),
			'actual_year_sales' => $this->getSalesActualYear(),
			'last_year_customers' => $this->getRegistrationsLastYear(),
			'last_year_orders' => $this->getOrdersLastYear(),
			'last_year_visits' => $this->getVisitsLastYear(),
			'last_year_products' => $this->getProductsLastYear(),
			'last_year_sales' => $this->getSalesLastYear(),
		));
		$this->setTemplate('plus.tpl');
	}

// -------------------------  ESTADISTICAS TOTALES DE LA TIENDA  -------------------------------------
	/**
	 * @return int - Se obtiene el monto total por concepto de ventas realizado
	 */
	private function getTotalSales()
	{
		$sql = 'SELECT SUM(`total_paid`) as total FROM `'._DB_PREFIX_.'orders`';
		return Db::getInstance(_PS_USE_SQL_SLAVE_)->executeS($sql);
		
	}
	/**
	 * @return int - Se obtiene el total ventas realizadas
	 */
	private function getTotalOrders()
	{
		$sql = 'SELECT COUNT(`id_order`) as total FROM `'._DB_PREFIX_.'orders`';
		return Db::getInstance(_PS_USE_SQL_SLAVE_)->executeS($sql);
	}

	/**
	 * @return int - Se obtiene el total de clientes registrados
	 */
	public function getTotalRegistrations()
	{
		$sql = 'SELECT COUNT(`id_customer`) as total
				FROM `'._DB_PREFIX_.'customer`
				WHERE 1';
		$result = Db::getInstance(_PS_USE_SQL_SLAVE_)->getRow($sql);

		return isset($result['total']) ? $result['total'] : 0;
	}
	/**
	 * @return int - Se obtiene el total de visitantes a la tienda
	 */
	public function getTotalVisits()
	{
		$sql = 'SELECT COUNT(c.`id_connections`)
				FROM `'._DB_PREFIX_.'connections` c
				WHERE 1';

		return Db::getInstance(_PS_USE_SQL_SLAVE_)->getValue($sql);
	}
	/**
	 * @return int - Se obtiene el total de productos totales de la tienda
	 */
	public function getTotalProducts()
	{
		$sql = 'SELECT COUNT(p.`id_product`)
				FROM `'._DB_PREFIX_.'product` p
				WHERE 1';

		return Db::getInstance(_PS_USE_SQL_SLAVE_)->getValue($sql);
	}

// -------------------------  ESTADISTICAS DEL MES ACTUAL  -------------------------------------
	/**
	 * @return int - Se obtiene el monto total por concepto de ventas realizado de MES ACTUAL
	 */
	private function getSalesActualMonth()
	{
		$sql = 'SELECT SUM(`total_paid`) as total FROM `'._DB_PREFIX_.'orders`
				WHERE MONTH(date_add)=MONTH(CURDATE())';
		return Db::getInstance(_PS_USE_SQL_SLAVE_)->executeS($sql);
	}
	/**
	 * @return int - Se obtiene el total ventas realizadas del MES ACTUAL
	 */
	private function getOrdersActualMonth()
	{
		$sql = 'SELECT COUNT(`id_order`) as total FROM `'._DB_PREFIX_.'orders`
				WHERE MONTH(date_add)=MONTH(CURDATE())';
		return Db::getInstance(_PS_USE_SQL_SLAVE_)->executeS($sql);
	}
	/**
	 * @return int - Se obtiene el total de clientes registrados en el MES ACTUAL
	 */
	public function getRegistrationsActualMonth()
	{
		$sql = 'SELECT COUNT(`id_customer`) as total
				FROM `'._DB_PREFIX_.'customer`
				WHERE MONTH(date_add)=MONTH(CURDATE())';
		$result = Db::getInstance(_PS_USE_SQL_SLAVE_)->getRow($sql);

		return isset($result['total']) ? $result['total'] : 0;
	}
	/**
	 * @return int - Se obtiene el total de visitantes a la tienda en el MES ACTUAL
	 */
	public function getVisitsActualMonth()
	{
		$sql = 'SELECT COUNT(c.`id_connections`)
				FROM `'._DB_PREFIX_.'connections` c
				WHERE MONTH(date_add)=MONTH(CURDATE())';

		return Db::getInstance(_PS_USE_SQL_SLAVE_)->getValue($sql);
	}
	/**
	 * @return int - Se obtiene el total de productos totales de la tienda REGISTRADOS EN EL MES ACTUAL
	 */
	public function getProductsActualMonth()
	{
		$sql = 'SELECT COUNT(p.`id_product`)
				FROM `'._DB_PREFIX_.'product` p
				WHERE MONTH(date_add)=MONTH(CURDATE())';

		return Db::getInstance(_PS_USE_SQL_SLAVE_)->getValue($sql);
	}


// -------------------------  ESTADISTICAS DEL MES ANTERIOR  -------------------------------------
	/**
	 * @return int - Se obtiene el total de clientes registrados en el MES ANTERIOR 
	 */
	public function getRegistrationsLastMonth()
	{
		$sql = 'SELECT COUNT(`id_customer`) as total
				FROM `'._DB_PREFIX_.'customer`
				WHERE MONTH(date_add)=MONTH(DATE_ADD(CURDATE(),INTERVAL -1 MONTH))';
		$result = Db::getInstance(_PS_USE_SQL_SLAVE_)->getRow($sql);

		return isset($result['total']) ? $result['total'] : 0;
	}
	/**
	 * @return int - Se obtiene el monto total por concepto de ventas realizado de MES ANTERIOR 
	 */
	private function getSalesLastMonth()
	{
		$sql = 'SELECT SUM(`total_paid`) as total FROM `'._DB_PREFIX_.'orders`
				WHERE MONTH(date_add)=MONTH(DATE_ADD(CURDATE(),INTERVAL -1 MONTH))';
		return Db::getInstance(_PS_USE_SQL_SLAVE_)->executeS($sql);
	}
	/**
	 * @return int - Se obtiene el total ventas realizadas en MES ANTERIOR 
	 */
	private function getOrdersLastMonth()
	{
		$sql = 'SELECT COUNT(`id_order`) as total FROM `'._DB_PREFIX_.'orders`
				WHERE MONTH(date_add)=MONTH(DATE_ADD(CURDATE(),INTERVAL -1 MONTH))';
		return Db::getInstance(_PS_USE_SQL_SLAVE_)->executeS($sql);
	}
	/**
	 * @return int - Se obtiene el total de visitantes a la tienda en el MES ANTERIOR 
	 */
	public function getVisitsLastMonth()
	{
		$sql = 'SELECT COUNT(c.`id_connections`)
				FROM `'._DB_PREFIX_.'connections` c
				WHERE MONTH(date_add)=MONTH(DATE_ADD(CURDATE(),INTERVAL -1 MONTH))';

		return Db::getInstance(_PS_USE_SQL_SLAVE_)->getValue($sql);
	}
	/**
	 * @return int - Se obtiene el total de productos totales de la tienda REGISTRADOS EN EL MES ANTERIOR 
	 */
	public function getProductsLastMonth()
	{
		$sql = 'SELECT COUNT(p.`id_product`)
				FROM `'._DB_PREFIX_.'product` p
				WHERE MONTH(date_add)=MONTH(DATE_ADD(CURDATE(),INTERVAL -1 MONTH))';

		return Db::getInstance(_PS_USE_SQL_SLAVE_)->getValue($sql);
	}


	// -------------------------  ESTADISTICAS DEL AÑO ACTUAL  -------------------------------------
	/**
	 * @return int - Se obtiene el monto total por concepto de ventas realizado de AÑO ACTUAL
	 */
	private function getSalesActualYear()
	{
		$sql = 'SELECT SUM(`total_paid`) as total FROM `'._DB_PREFIX_.'orders`
				WHERE YEAR(date_add)=YEAR(CURDATE())';
		return Db::getInstance(_PS_USE_SQL_SLAVE_)->executeS($sql);
	}
	/**
	 * @return int - Se obtiene el total ventas realizadas
	 */
	private function getOrdersActualYear()
	{
		$sql = 'SELECT COUNT(`id_order`) as total FROM `'._DB_PREFIX_.'orders`
				WHERE YEAR(date_add)=YEAR(CURDATE())';
		return Db::getInstance(_PS_USE_SQL_SLAVE_)->executeS($sql);
	}
	/**
	 * @return int - Se obtiene el total de clientes registrados en el AÑO ACTUAL
	 */
	public function getRegistrationsActualYear()
	{
		$sql = 'SELECT COUNT(`id_customer`) as total
				FROM `'._DB_PREFIX_.'customer`
				WHERE YEAR(date_add)=YEAR(CURDATE())';
		$result = Db::getInstance(_PS_USE_SQL_SLAVE_)->getRow($sql);

		return isset($result['total']) ? $result['total'] : 0;
	}
	/**
	 * @return int - Se obtiene el total de visitantes a la tienda en el AÑO ACTUAL
	 */
	public function getVisitsActualYear()
	{
		$sql = 'SELECT COUNT(c.`id_connections`)
				FROM `'._DB_PREFIX_.'connections` c
				WHERE YEAR(date_add)=YEAR(CURDATE())';

		return Db::getInstance(_PS_USE_SQL_SLAVE_)->getValue($sql);
	}
	/**
	 * @return int - Se obtiene el total de productos totales de la tienda REGISTRADOS EN EL AÑO ACTUAL
	 */
	public function getProductsActualYear()
	{
		$sql = 'SELECT COUNT(p.`id_product`)
				FROM `'._DB_PREFIX_.'product` p
				WHERE YEAR(date_add)=YEAR(CURDATE())';

		return Db::getInstance(_PS_USE_SQL_SLAVE_)->getValue($sql);
	}

// -------------------------  ESTADISTICAS DEL AÑO ANTERIOR  -------------------------------------
	/**
	 * @return int - Se obtiene el total de clientes registrados en el AÑO ANTERIOR 
	 */
	public function getRegistrationsLastYear()
	{
		$sql = 'SELECT COUNT(`id_customer`) as total
				FROM `'._DB_PREFIX_.'customer`
				WHERE YEAR(date_add)=YEAR(DATE_ADD(CURDATE(),INTERVAL -1 YEAR))';
		$result = Db::getInstance(_PS_USE_SQL_SLAVE_)->getRow($sql);

		return isset($result['total']) ? $result['total'] : 0;
	}
	/**
	 * @return int - Se obtiene el monto total por concepto de ventas realizado en el AÑO ANTERIOR 
	 */
	private function getSalesLastYear()
	{
		$sql = 'SELECT SUM(`total_paid`) as total FROM `'._DB_PREFIX_.'orders`
				WHERE YEAR(date_add)=YEAR(DATE_ADD(CURDATE(),INTERVAL -1 YEAR))';
		return Db::getInstance(_PS_USE_SQL_SLAVE_)->executeS($sql);
	}
	/**
	 * @return int - Se obtiene el total ventas realizadas el AÑO ANTERIOR 
	 */
	private function getOrdersLastYear()
	{
		$sql = 'SELECT COUNT(`id_order`) as total FROM `'._DB_PREFIX_.'orders`
				WHERE YEAR(date_add)=YEAR(DATE_ADD(CURDATE(),INTERVAL -1 YEAR))';
		return Db::getInstance(_PS_USE_SQL_SLAVE_)->executeS($sql);
	}
	/**
	 * @return int - Se obtiene el total de visitantes a la tienda en el AÑO ANTERIOR 
	 */
	public function getVisitsLastYear()
	{
		$sql = 'SELECT COUNT(c.`id_connections`)
				FROM `'._DB_PREFIX_.'connections` c
				WHERE YEAR(date_add)=YEAR(DATE_ADD(CURDATE(),INTERVAL -1 YEAR))';

		return Db::getInstance(_PS_USE_SQL_SLAVE_)->getValue($sql);
	}
	/**
	 * @return int - Se obtiene el total de productos totales de la tienda REGISTRADOS EN EL AÑO ANTERIOR 
	 */
	public function getProductsLastYear()
	{
		$sql = 'SELECT COUNT(p.`id_product`)
				FROM `'._DB_PREFIX_.'product` p
				WHERE YEAR(date_add)=YEAR(DATE_ADD(CURDATE(),INTERVAL -1 YEAR))';

		return Db::getInstance(_PS_USE_SQL_SLAVE_)->getValue($sql);
	}

}