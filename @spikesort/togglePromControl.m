function [] = togglePromControl(s,~,~)

if get(s.handles.prom_auto_control,'Value')
	set(s.handles.prom_ub_control,'Visible','off')
	set(s.handles.spike_prom_slider,'Visible','off')
else
	set(s.handles.prom_ub_control,'Visible','on')
	set(s.handles.spike_prom_slider,'Visible','on')
end