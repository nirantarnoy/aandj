<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Workschedule;

/**
 * WorkscheduleSearch represents the model behind the search form of `backend\models\Workschedule`.
 */
class WorkscheduleSearch extends Workschedule
{
    public $globalSearch;
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'orchard_id', 'team_cut', 'team_pick', 'status', 'created_at', 'updated_at', 'created_by', 'updated_by'], 'integer'],
            [['trans_date', 'note'], 'safe'],
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
        $query = Workschedule::find();

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
            'orchard_id' => $this->orchard_id,
            'team_cut' => $this->team_cut,
            'team_pick' => $this->team_pick,
            'status' => $this->status,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
            'created_by' => $this->created_by,
            'updated_by' => $this->updated_by,
        ]);

        if($this->globalSearch != ''){
            $query->orFilterWhere(['like','note',$this->globalSearch]);
        }

        return $dataProvider;
    }
}
