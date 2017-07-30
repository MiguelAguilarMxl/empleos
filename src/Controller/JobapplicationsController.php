<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Jobapplications Controller
 *
 * @property \App\Model\Table\JobapplicationsTable $Jobapplications
 *
 * @method \App\Model\Entity\Jobapplication[] paginate($object = null, array $settings = [])
 */
class JobapplicationsController extends AppController
{

    /**
     * Index method
     *
     * @return \Cake\Http\Response|void
     */
    public function index()
    {
        $jobapplications = $this->paginate($this->Jobapplications);

        $this->set(compact('jobapplications'));
        $this->set('_serialize', ['jobapplications']);
    }

    /**
     * View method
     *
     * @param string|null $id Jobapplication id.
     * @return \Cake\Http\Response|void
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null)
    {
        $jobapplication = $this->Jobapplications->get($id, [
            'contain' => []
        ]);

        $this->set('jobapplication', $jobapplication);
        $this->set('_serialize', ['jobapplication']);
    }

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $jobapplication = $this->Jobapplications->newEntity();
        if ($this->request->is('post')) {
            $jobapplication = $this->Jobapplications->patchEntity($jobapplication, $this->request->getData());
            if ($this->Jobapplications->save($jobapplication)) {
                $this->Flash->success(__('The jobapplication has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The jobapplication could not be saved. Please, try again.'));
        }
        $this->set(compact('jobapplication'));
        $this->set('_serialize', ['jobapplication']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Jobapplication id.
     * @return \Cake\Http\Response|null Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $jobapplication = $this->Jobapplications->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $jobapplication = $this->Jobapplications->patchEntity($jobapplication, $this->request->getData());
            if ($this->Jobapplications->save($jobapplication)) {
                $this->Flash->success(__('The jobapplication has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The jobapplication could not be saved. Please, try again.'));
        }
        $this->set(compact('jobapplication'));
        $this->set('_serialize', ['jobapplication']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Jobapplication id.
     * @return \Cake\Http\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $jobapplication = $this->Jobapplications->get($id);
        if ($this->Jobapplications->delete($jobapplication)) {
            $this->Flash->success(__('The jobapplication has been deleted.'));
        } else {
            $this->Flash->error(__('The jobapplication could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }
}
