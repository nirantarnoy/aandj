<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Cuttable;

/**
 * CuttableSearch represents the model behind the search form of `backend\models\Cuttable`.
 */
class CuttableSearch extends Cuttable
{
    public $globalSearch;
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'status', 'created_at', 'updated_at', 'created_by', 'updated_by'], 'integer'],
            [['globalSearch'],'string'],
            [['cut_no'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Cuttable::find();

        // add conditions that should always apply here

        $query->joinWith('cutline')->all();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $dataProvider->sort->attributes['cutline.orcard_id'] = [
            // The tables are the ones our relation are configured to
            // in my case they are prefixed with "tbl_"
            'asc' => ['cut_table_line.orcard_id' => SORT_ASC],
            'desc' => ['cut_table_line.orcard_id' => SORT_DESC],
        ];
        $dataProvider->sort->attributes['cutline.cut_team'] = [
            // The tables are the ones our relation are configured to
            // in my case they are prefixed with "tbl_"
            'asc' => ['cut_table_line.cut_team' => SORT_ASC],
            'desc' => ['cut_table_line.cut_team' => SORT_DESC],
        ];

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'status' => $this->status,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
            'created_by' => $this->created_by,
            'updated_by' => $this->updated_by
        ]);

        if($this->globalSearch!=''){
            $query->orFilterWhere(['like', 'cut_no', $this->globalSearch]);
        }


        return $dataProvider;
    }
}
