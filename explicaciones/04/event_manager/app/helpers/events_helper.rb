module EventsHelper
  def display_event(event)
    "Evento #{event.event_type.name} para el día #{I18n.l(event.date)}"
  end
end
