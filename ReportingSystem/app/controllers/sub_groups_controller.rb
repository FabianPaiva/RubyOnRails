class SubGroupsController < ApplicationController
  def index_sub_group
   @sub_groups =SubGroup.all
  end

  def edit_sub_group
    @sub_group =SubGroup.find(params[:id])
  end

  def update
    @sub_group =SubGroup.find(params[:id])
    if @sub_group.update(sub_group_params)
      redirect_to sub_groups_path
    else
      render :edit_sub_group
    end
  end

  def new_sub_group
    @sub_group = SubGroup.new
  end

  def create
    @sub_group = SubGroup.new(sub_group_params)
    if @sub_group.save
      redirect_to sub_groups_path
    else
      render :new_sub_group
    end
  end

  private
  def sub_group_params
    params.require(:sub_group).permit(:group_id, :code_sub_group, :name_sub_group)
  end
end
