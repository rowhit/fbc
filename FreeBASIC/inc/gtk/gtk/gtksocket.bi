''
''
'' gtksocket -- header translated with help of SWIG FB wrapper
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
''
#ifndef __gtksocket_bi__
#define __gtksocket_bi__

#include once "gtk/gtk/gtkcontainer.bi"

type GtkSocket as _GtkSocket
type GtkSocketClass as _GtkSocketClass

type _GtkSocket
	container as GtkContainer
	request_width as guint16
	request_height as guint16
	current_width as guint16
	current_height as guint16
	plug_window as GdkWindow ptr
	plug_widget as GtkWidget ptr
	xembed_version as gshort
	same_app:1 as guint
	focus_in:1 as guint
	have_size:1 as guint
	need_map:1 as guint
	is_mapped:1 as guint
	active:1 as guint
	accel_group as GtkAccelGroup ptr
	toplevel as GtkWidget ptr
end type

type _GtkSocketClass
	parent_class as GtkContainerClass
	plug_added as sub cdecl(byval as GtkSocket ptr)
	plug_removed as function cdecl(byval as GtkSocket ptr) as gboolean
	_gtk_reserved1 as sub cdecl()
	_gtk_reserved2 as sub cdecl()
	_gtk_reserved3 as sub cdecl()
	_gtk_reserved4 as sub cdecl()
end type

declare function gtk_socket_get_type cdecl alias "gtk_socket_get_type" () as GType
declare function gtk_socket_new cdecl alias "gtk_socket_new" () as GtkWidget ptr
declare sub gtk_socket_add_id cdecl alias "gtk_socket_add_id" (byval socket_ as GtkSocket ptr, byval window_id as GdkNativeWindow)
declare function gtk_socket_get_id cdecl alias "gtk_socket_get_id" (byval socket_ as GtkSocket ptr) as GdkNativeWindow
declare sub gtk_socket_steal cdecl alias "gtk_socket_steal" (byval socket_ as GtkSocket ptr, byval wid as GdkNativeWindow)

#endif
