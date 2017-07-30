<?php
namespace App\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Jobapplications Model
 *
 * @method \App\Model\Entity\Jobapplication get($primaryKey, $options = [])
 * @method \App\Model\Entity\Jobapplication newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\Jobapplication[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\Jobapplication|bool save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\Jobapplication patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\Jobapplication[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\Jobapplication findOrCreate($search, callable $callback = null, $options = [])
 */
class JobapplicationsTable extends Table
{

    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config)
    {
        parent::initialize($config);

        $this->setTable('jobapplications');
        $this->setDisplayField('id');
        $this->setPrimaryKey('id');
    }

    /**
     * Default validation rules.
     *
     * @param \Cake\Validation\Validator $validator Validator instance.
     * @return \Cake\Validation\Validator
     */
    public function validationDefault(Validator $validator)
    {
        $validator
            ->integer('id')
            ->allowEmpty('id', 'create');

        $validator
            ->dateTime('fecha_solicitud')
            ->requirePresence('fecha_solicitud', 'create')
            ->notEmpty('fecha_solicitud');

        $validator
            ->requirePresence('puesto_solicitado', 'create')
            ->notEmpty('puesto_solicitado');

        $validator
            ->allowEmpty('sueldo_mensual_deseado');

        $validator
            ->allowEmpty('sueldo_mensual_otorgado');

        $validator
            ->allowEmpty('foto_solicitud');

        $validator
            ->allowEmpty('comentarios_entrevistador');

        $validator
            ->integer('id_user')
            ->requirePresence('id_user', 'create')
            ->notEmpty('id_user');

        $validator
            ->integer('added_user')
            ->requirePresence('added_user', 'create')
            ->notEmpty('added_user');

        $validator
            ->dateTime('added_date')
            ->requirePresence('added_date', 'create')
            ->notEmpty('added_date');

        $validator
            ->integer('updated_user')
            ->allowEmpty('updated_user');

        $validator
            ->dateTime('updated_date')
            ->allowEmpty('updated_date');

        return $validator;
    }
}
