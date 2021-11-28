/**
 * @license Copyright (c) 2003-2014, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */


// This is the only mandatory property to be defined in this file.
CKEDITOR.skin.name = 'office2013';


// The available browser specific files must be set separately for editor.css
// and dialog.css.
CKEDITOR.skin.ua_editor = '';
CKEDITOR.skin.ua_dialog = '';


//
// The "$color" placeholder can be used in the returned string. It'll be
// replaced with the desired color.
CKEDITOR.skin.chameleon = function() {
	return '';
};


//
// If a required icon is not available here, the plugin defined icon will be
// used instead. This means that a skin is not required to provide all icons.
// Actually, it is not required to provide icons at all.
//
(function() {
		// The available icons. This list must match the file names (without
		// extension) available inside the "icons" folder.
		var icons = ( 'about,anchor-rtl,anchor,autocorrect,bgcolor,bidiltr,bidirtl,blockquote,' +
			'bold,bulletedlist-rtl,bulletedlist,button,checkbox,copy-rtl,copy,' +
			'cut-rtl,cut,docprops-rtl,docprops,find-rtl,find,form,' + //TODO creatediv,flash,
			'hiddenfield,horizontalrule,icons,iframe,image,imagebutton,indent-rtl,' +
			'indent,italic,justifyblock,justifycenter,justifyleft,justifyright,' +
			'language,link,mathjax,maximize,newpage-rtl,newpage,numberedlist-rtl,numberedlist,' +
			'outdent-rtl,outdent,pagebreak-rtl,pagebreak,paste-rtl,paste,' +
			'pastefromword-rtl,pastefromword,pastetext-rtl,pastetext,preview-rtl,' +
			'preview,print,radio,redo-rtl,redo,removeformat,replace,save,scayt,' +
			'select-rtl,select,selectall,showblocks-rtl,showblocks,smiley,' +
			'sourcedialog-rtl,sourcedialog,source-rtl,source,specialchar,spellchecker,strike,subscript,' +
			'superscript,table,templates-rtl,templates,textarea-rtl,textarea,' +
			'textcolor,textfield-rtl,textfield,uicolor,underline,undo-rtl,undo,unlink' ).split( ',' );

		var iconsFolder = CKEDITOR.getUrl( CKEDITOR.skin.path() + 'icons/' + ( CKEDITOR.env.hidpi ? 'hidpi/' : '' ) );

		for ( var i = 0; i < icons.length; i++ ) {
			CKEDITOR.skin.addIcon( icons[ i ], iconsFolder + icons[ i ] + '.png' );
		}
})();

// %REMOVE_END%
