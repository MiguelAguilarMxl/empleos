<?php
/**
  * @var \App\View\AppView $this
  * @var \App\Model\Entity\Jobapplication[]|\Cake\Collection\CollectionInterface $jobapplications
  */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('New Jobapplication'), ['action' => 'add']) ?></li>
    </ul>
</nav>
<div class="jobapplications index large-9 medium-8 columns content">
    <h3><?= __('Jobapplications') ?></h3>
    <table cellpadding="0" cellspacing="0">
        <thead>
            <tr>
                <th scope="col"><?= $this->Paginator->sort('id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('fecha_solicitud') ?></th>
                <th scope="col"><?= $this->Paginator->sort('puesto_solicitado') ?></th>
                <th scope="col"><?= $this->Paginator->sort('sueldo_mensual_deseado') ?></th>
                <th scope="col"><?= $this->Paginator->sort('sueldo_mensual_otorgado') ?></th>
                <th scope="col"><?= $this->Paginator->sort('foto_solicitud') ?></th>
                <th scope="col"><?= $this->Paginator->sort('comentarios_entrevistador') ?></th>
                <th scope="col"><?= $this->Paginator->sort('id_user') ?></th>
                <th scope="col"><?= $this->Paginator->sort('added_user') ?></th>
                <th scope="col"><?= $this->Paginator->sort('added_date') ?></th>
                <th scope="col"><?= $this->Paginator->sort('updated_user') ?></th>
                <th scope="col"><?= $this->Paginator->sort('updated_date') ?></th>
                <th scope="col" class="actions"><?= __('Actions') ?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($jobapplications as $jobapplication): ?>
            <tr>
                <td><?= $this->Number->format($jobapplication->id) ?></td>
                <td><?= h($jobapplication->fecha_solicitud) ?></td>
                <td><?= h($jobapplication->puesto_solicitado) ?></td>
                <td><?= h($jobapplication->sueldo_mensual_deseado) ?></td>
                <td><?= h($jobapplication->sueldo_mensual_otorgado) ?></td>
                <td><?= h($jobapplication->foto_solicitud) ?></td>
                <td><?= h($jobapplication->comentarios_entrevistador) ?></td>
                <td><?= $this->Number->format($jobapplication->id_user) ?></td>
                <td><?= $this->Number->format($jobapplication->added_user) ?></td>
                <td><?= h($jobapplication->added_date) ?></td>
                <td><?= $this->Number->format($jobapplication->updated_user) ?></td>
                <td><?= h($jobapplication->updated_date) ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('View'), ['action' => 'view', $jobapplication->id]) ?>
                    <?= $this->Html->link(__('Edit'), ['action' => 'edit', $jobapplication->id]) ?>
                    <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $jobapplication->id], ['confirm' => __('Are you sure you want to delete # {0}?', $jobapplication->id)]) ?>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <div class="paginator">
        <ul class="pagination">
            <?= $this->Paginator->first('<< ' . __('first')) ?>
            <?= $this->Paginator->prev('< ' . __('previous')) ?>
            <?= $this->Paginator->numbers() ?>
            <?= $this->Paginator->next(__('next') . ' >') ?>
            <?= $this->Paginator->last(__('last') . ' >>') ?>
        </ul>
        <p><?= $this->Paginator->counter(['format' => __('Page {{page}} of {{pages}}, showing {{current}} record(s) out of {{count}} total')]) ?></p>
    </div>
</div>
