class Api::Robot::OrdersController < ApplicationController

	def create
		simulation_service.simulate
		render json: {location: simulation_service.final_position}
	end

	private

	def simulation_service
		@simulation_service ||= RobotSimulation.new(find_robot, commands)
	end

	def commands
		@commands ||= params[:commands]
	end

	def find_robot
		@robot ||= Robot.where(id: params[:id]).first_or_create
	end
end
