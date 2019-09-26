<?php

namespace App\Admin\Controllers;

use App\Menu;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Tree;

class MenuController extends AdminController
{
    use ModelForm;
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Menu';

    public function index(Content $content)
    {
        return $content
            ->header('Index')
            ->description('description')
            // ->body($this->grid());
            ->body(Menu::tree());
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Menu);

        $grid->column('id', __('Id'));
        $grid->column('parent_id', __('Parent id'));
        $grid->column('order', __('Order'));
        $grid->column('title', __('Title'));
        $grid->column('slug', __('Slug'));
        $grid->column('is_static', __('Is static'));
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
        $show = new Show(Menu::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('parent_id', __('Parent id'));
        $show->field('order', __('Order'));
        $show->field('title', __('Title'));
        $show->field('slug', __('Slug'));
        $show->field('is_static', __('Is static'));
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
        $form = new Form(new Menu);

        $form->number('parent_id', __('Parent id'))->default(0);
        $form->number('order', __('Order'))->default(0);
        $form->text('title', __('Title'));
        $form->hidden('slug', __('Slug'));
        $form->switch('is_static', __('Is static'));

        $form->ckeditor('content');

        $form->saving(function ($form) {
            $form->slug = str_slug($form->title);
        });

        return $form;
    }
}
