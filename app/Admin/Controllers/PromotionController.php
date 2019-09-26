<?php

namespace App\Admin\Controllers;

use App\Promotion;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class PromotionController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Promotion';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Promotion);

        $grid->column('id', __('Id'));
        $grid->column('title', __('Title'));
        $grid->column('description', __('Description'));
        $grid->column('image', __('Image'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Promotion::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', __('Title'));
        $show->field('description', __('Description'));
        $show->field('image', __('Image'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Promotion);

        $form->text('title', __('Title'));
        $form->textarea('description', __('Description'));
        $form->image('image', __('Image'))->uniqueName();

        $actives = [
            'on'  => ['value' => 1, 'text' => 'enable', 'color' => 'success'],
            'off' => ['value' => 0, 'text' => 'disable', 'color' => 'danger'],
        ];
        $form->switch('is_active', 'Status')->states($actives);

        $form->saved(function ($form) {
            return redirect('/admin/promotions/1/edit');
        });

        return $form;
    }
}
