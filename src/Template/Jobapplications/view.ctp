<?php
/**
  * @var \App\View\AppView $this
  * @var \App\Model\Entity\Jobapplication $jobapplication
  */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit Jobapplication'), ['action' => 'edit', $jobapplication->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Jobapplication'), ['action' => 'delete', $jobapplication->id], ['confirm' => __('Are you sure you want to delete # {0}?', $jobapplication->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Jobapplications'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Jobapplication'), ['action' => 'add']) ?> </li>
    </ul>
</nav>
<div class="jobapplications view large-9 medium-8 columns content">
    <h3><?= h($jobapplication->id) ?></h3>
    <table class="vertical-table">
        <tr>
            <th scope="row"><?= __('Puesto Solicitado') ?></th>
            <td><?= h($jobapplication->puesto_solicitado) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Sueldo Mensual Deseado') ?></th>
            <td><?= h($jobapplication->sueldo_mensual_deseado) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Sueldo Mensual Otorgado') ?></th>
            <td><?= h($jobapplication->sueldo_mensual_otorgado) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Foto Solicitud') ?></th>
            <td><?= h($jobapplication->foto_solicitud) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Comentarios Entrevistador') ?></th>
            <td><?= h($jobapplication->comentarios_entrevistador) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Id') ?></th>
            <td><?= $this->Number->format($jobapplication->id) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Id User') ?></th>
            <td><?= $this->Number->format($jobapplication->id_user) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Added User') ?></th>
            <td><?= $this->Number->format($jobapplication->added_user) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Updated User') ?></th>
            <td><?= $this->Number->format($jobapplication->updated_user) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Fecha Solicitud') ?></th>
            <td><?= h($jobapplication->fecha_solicitud) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Added Date') ?></th>
            <td><?= h($jobapplication->added_date) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Updated Date') ?></th>
            <td><?= h($jobapplication->updated_date) ?></td>
        </tr>
    </table>
</div>
