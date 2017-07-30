<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * Jobapplication Entity
 *
 * @property int $id
 * @property \Cake\I18n\FrozenTime $fecha_solicitud
 * @property string $puesto_solicitado
 * @property string $sueldo_mensual_deseado
 * @property string $sueldo_mensual_otorgado
 * @property string $foto_solicitud
 * @property string $comentarios_entrevistador
 * @property int $id_user
 * @property int $added_user
 * @property \Cake\I18n\FrozenTime $added_date
 * @property int $updated_user
 * @property \Cake\I18n\FrozenTime $updated_date
 */
class Jobapplication extends Entity
{

    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * Note that when '*' is set to true, this allows all unspecified fields to
     * be mass assigned. For security purposes, it is advised to set '*' to false
     * (or remove it), and explicitly make individual fields accessible as needed.
     *
     * @var array
     */
    protected $_accessible = [
        '*' => true,
        'id' => false
    ];
}
