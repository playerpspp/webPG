<?php

namespace App\Models;
use CodeIgniter\Model;

class M_model extends model
{

	public function tampil($table)
	{
		$primaryKey = $this->db->getFieldData($table)[0]->name; // Get the name of the primary key column
		return $this->db->table($table)
						->orderBy($primaryKey, 'desc')
						->get()
						->getResult();
	}

	public function edit($table, $data, $where)
	{
		return $this->db->table($table)->update($data, $where);
	}

	public function hapus($table, $where)
	{
		return $this->db->table($table)->delete($where);
	}

	public function simpan($table, $data)
	{
		return $this->db->table($table)->insert($data);
	}

	public function getRow($table, $where)
	{
		return $this->db->table($table)->getWhere($where)->getRow();
	}

	public function getRowArray($table, $where)
	{
		return $this->db->table($table)->getWhere($where)->getRowArray();
	}

	public function fusionRow($table1, $table2, $on ,$where)
	{
		return $this->db->table($table1)->join($table2, $on)->getWhere($where)->getRow();
	}

	public function fusionOderBy($table1, $table2, $on, $column)
	{
		return $this->db->table($table1)->join($table2, $on)->orderBy($column, 'DESC')->get()->getResult();
	}

	public function fusionOderByASC($table1, $table2, $on, $column)
	{
		return $this->db->table($table1)->join($table2, $on)->orderBy($column, 'ASC')->get()->getResult();
	}

	public function filter_income ($table, $awal,$akhir)
	{
		$query = $this->db->table('playground')
    ->join('permainan', 'playground.id_permainan_playground = permainan.id_permainan')
    ->where('playground.tanggal_laporan BETWEEN "'.$awal.'" AND "'.$akhir.'"')
    ->get();

return $query->getResult();

	}

	public function super($table1, $table2, $table3, $on, $on2)
	{
		$primaryKey = $this->db->getFieldData($table1)[0]->name;
		return $this->db->table($table1)->join($table2, $on)->join($table3, $on2)
		->orderBy($primaryKey, 'desc')->get()->getResult();
	}

}