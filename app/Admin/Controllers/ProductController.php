<?php

namespace App\Admin\Controllers;

use App\Product;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ProductController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Product';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Product);

        $grid->column('id', __('Id'));
        $grid->column('slug', __('Slug'));
        $grid->column('name', __('Name'));
        $grid->column('description', __('Description'));
        $grid->column('is_bestseller', __('Is bestseller'));
        $grid->column('product_type_id', __('Product type id'));
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
        $show = new Show(Product::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('slug', __('Slug'));
        $show->field('name', __('Name'));
        $show->field('description', __('Description'));
        $show->field('is_bestseller', __('Is bestseller'));
        $show->field('product_type_id', __('Product type id'));
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
        $form = new Form(new Product);

        $form->hidden('slug', __('Slug'));
        // $form->image('photo_products', __('Photo Product'))->uniqueName();
        $form->multipleImage('photo_products', __('Photo Product'))->uniqueName()->removable();;
        $form->text('name', __('Name'));
        $form->textarea('description', __('Description'));
        $form->switch('is_bestseller', __('Is bestseller'));
        $form->number('product_type_id', __('Product type id'));

        $form->saving(function ($form) {
            $form->slug = str_slug($form->name);
        });

        return $form;
    }
}
