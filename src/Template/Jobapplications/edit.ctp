<?php
/**
  * @var \App\View\AppView $this
  */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Form->postLink(
                __('Delete'),
                ['action' => 'delete', $jobapplication->id],
                ['confirm' => __('Are you sure you want to delete # {0}?', $jobapplication->id)]
            )
        ?></li>
        <li><?= $this->Html->link(__('List Jobapplications'), ['action' => 'index']) ?></li>
    </ul>
</nav>
<div class="jobapplications form large-9 medium-8 columns content">
    <?= $this->Form->create($jobapplication) ?>
    <fieldset>
        <legend><?= __('Edit Jobapplication') ?></legend>
        <?php
            echo $this->Form->control('fecha_solicitud');
            echo $this->Form->control('puesto_solicitado');
            echo $this->Form->control('sueldo_mensual_deseado');
            echo $this->Form->control('sueldo_mensual_otorgado');
            echo $this->Form->control('foto_solicitud');
            echo $this->Form->control('comentarios_entrevistador');
            echo $this->Form->control('id_user');
            echo $this->Form->control('added_user');
            echo $this->Form->control('added_date');
            echo $this->Form->control('updated_user');
            echo $this->Form->control('updated_date', ['empty' => true]);
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
