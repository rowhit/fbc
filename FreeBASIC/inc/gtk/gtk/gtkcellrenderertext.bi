''
''
'' gtkcellrenderertext -- header translated with help of SWIG FB wrapper
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
''
#ifndef __gtkcellrenderertext_bi__
#define __gtkcellrenderertext_bi__

#include once "gtk/pango.bi"
#include once "gtk/gtk/gtkcellrenderer.bi"

type GtkCellRendererText as _GtkCellRendererText
type GtkCellRendererTextClass as _GtkCellRendererTextClass

type _GtkCellRendererText
	parent as GtkCellRenderer
	text as zstring ptr
	font as PangoFontDescription ptr
	font_scale as gdouble
	foreground as PangoColor
	background as PangoColor
	extra_attrs as PangoAttrList ptr
	underline_style as PangoUnderline
	rise as gint
	fixed_height_rows as gint
	strikethrough:1 as guint
	editable:1 as guint
	scale_set:1 as guint
	foreground_set:1 as guint
	background_set:1 as guint
	underline_set:1 as guint
	rise_set:1 as guint
	strikethrough_set:1 as guint
	editable_set:1 as guint
	calc_fixed_height:1 as guint
end type

type _GtkCellRendererTextClass
	parent_class as GtkCellRendererClass
	edited as sub cdecl(byval as GtkCellRendererText ptr, byval as string, byval as string)
	_gtk_reserved1 as sub cdecl()
	_gtk_reserved2 as sub cdecl()
	_gtk_reserved3 as sub cdecl()
	_gtk_reserved4 as sub cdecl()
end type

declare function gtk_cell_renderer_text_get_type cdecl alias "gtk_cell_renderer_text_get_type" () as GType
declare function gtk_cell_renderer_text_new cdecl alias "gtk_cell_renderer_text_new" () as GtkCellRenderer ptr
declare sub gtk_cell_renderer_text_set_fixed_height_from_font cdecl alias "gtk_cell_renderer_text_set_fixed_height_from_font" (byval renderer as GtkCellRendererText ptr, byval number_of_rows as gint)

#endif
