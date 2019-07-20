<?php

namespace App\Admin\Controllers;

use App\Setting;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class SettingController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Setting';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Setting);

        $grid->column('id', __('Id'));
        $grid->column('company_description', __('Company description'));
        $grid->column('company_title', __('Company title'));
        $grid->column('address', __('Address'));
        $grid->column('site_title', __('Site title'));
        $grid->column('tagline', __('Tagline'));
        $grid->column('site_url', __('Site url'));
        $grid->column('site_icon', __('Site icon'));
        $grid->column('site_logo', __('Site logo'));
        $grid->column('facebook_url', __('Facebook url'));
        $grid->column('twitter_url', __('Twitter url'));
        $grid->column('instagram_url', __('Instagram url'));
        $grid->column('google_plus_url', __('Google plus url'));
        $grid->column('footer', __('Footer'));
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
        $show = new Show(Setting::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('company_description', __('Company description'));
        $show->field('company_title', __('Company title'));
        $show->field('address', __('Address'));
        $show->field('site_title', __('Site title'));
        $show->field('tagline', __('Tagline'));
        $show->field('site_url', __('Site url'));
        $show->field('site_icon', __('Site icon'));
        $show->field('site_logo', __('Site logo'));
        $show->url('facebook_url', __('Facebook url'));
        $show->url('twitter_url', __('Twitter url'));
        $show->url('instagram_url', __('Instagram url'));
        $show->url('google_plus_url', __('Google plus url'));
        $show->field('footer', __('Footer'));
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
        $form = new Form(new Setting);

        $form->text('company_title', __('Company title'));
        $form->textarea('company_description', __('Company description'));
        $form->textarea('address', __('Address'));
        $form->text('site_title', __('Site title'));
        $form->text('tagline', __('Tagline'));
        $form->text('site_url', __('Site url'));
        $form->image('site_icon', __('Site icon'));
        $form->image('site_logo', __('Site logo'))->thumbnail('small', $width = 156, $height = 41);;
        $form->text('facebook_url', __('Facebook url'));
        $form->text('twitter_url', __('Twitter url'));
        $form->text('instagram_url', __('Instagram url'));
        $form->text('google_plus_url', __('Google plus url'));
        $form->text('footer', __('Footer'));

        $form->saved(function ($form) {
            return redirect('/admin/setting/1/edit');
        });

        return $form;
    }
}
