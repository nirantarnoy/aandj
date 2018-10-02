<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Quality;

/**
 * QualitySearch represents the model behind the search form of `backend\models\Quality`.
 */
class QualitySearch extends Quality
{
    public $globalSearch;
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'trans_date', 'ref_order_no', 'interval_day', 'action_date', 'status', 'created_at', 'updated_at', 'created_by', 'updated_by', 'product_id'], 'integer'],
            [['quality_no', 'note', 'order_no'], 'safe'],
            [['globalSearch'],'string'],
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
        $query = Quality::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'trans_date' => $this->trans_date,
            'ref_order_no' => $this->ref_order_no,
            'interval_day' => $this->interval_day,
            'action_date' => $this->action_date,
            'status' => $this->status,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
            'created_by' => $this->created_by,
            'updated_by' => $this->updated_by,
            'product_id' => $this->product_id,
        ]);

        if($this->globalSearch != ''){
            $query->orFilterWhere(['like','quality_no',$this->globalSearch])
                ->orFilterWhere(['like','order_no',$this->globalSearch]);
        }


        return $dataProvider;
    }
}
