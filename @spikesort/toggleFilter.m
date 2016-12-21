function [] = toggleFilter(s,~,~)

if s.verbosity > 5
    cprintf('green','\n[INFO] ')
    cprintf('text',[mfilename ' called'])
end

if get(s.handles.filtermode,'Value')
	set(s.handles.filtermode,'String','Filter is ON')
	s.filter_trace = true;

	% force A and B to update
	s.A = s.A;
	s.B = s.B;
	return
else
	set(s.handles.filtermode,'String','Filter is OFF')
	s.filter_trace = false;
	return
end

