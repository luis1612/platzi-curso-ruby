require_relative "presentation/views"
require_relative "controller/state"


initial_state = State::get_state()
app = SnakeAppWindow.new(initial_state, "Snake")
app.start()