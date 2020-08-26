"
https://core.telegram.org/tdlib/docs/td__json__client_8h.html
"
Class {
	#name : #TelegramLib,
	#superclass : #FFIExternalObject,
	#category : #TelegramLib
}

{ #category : #'library path' }
TelegramLib class >> ffiLibraryName [
	^ TelegramLibLibrary 
]

{ #category : #'accessing platform' }
TelegramLib class >> new [
^self td_json_client_create 
]

{ #category : #'accessing platform' }
TelegramLib class >> td_json_client_create [

	^ self ffiCall: #( TelegramLib td_json_client_create #(  ) )
]

{ #category : #'accessing platform' }
TelegramLib >> ffiLibraryName [
	^ self class ffiLibraryName
]

{ #category : #'as yet unclassified' }
TelegramLib >> receiveAsync [

	^ self td_json_client_receive: 0.1
]

{ #category : #'as yet unclassified' }
TelegramLib >> receiveAsync: jsonRequest [

	^ self td_json_client_receive: jsonRequest
]

{ #category : #'as yet unclassified' }
TelegramLib >> release [

	super release.
	self td_json_client_destroy.
	self setHandle: nil
]

{ #category : #'as yet unclassified' }
TelegramLib >> send: jsonRequest [

	^ self td_json_client_execute: jsonRequest
]

{ #category : #'as yet unclassified' }
TelegramLib >> sendAsync: jsonRequest [

	^ self td_json_client_send: jsonRequest
]

{ #category : #'as yet unclassified' }
TelegramLib >> td_json_client_destroy [

	^ self ffiCall: #( void td_json_client_destroy #( self ) )
]

{ #category : #'as yet unclassified' }
TelegramLib >> td_json_client_execute: request [

	^ self ffiCall:
		  #( const char * td_json_client_execute #( self , const
		        char * request ) )
]

{ #category : #'as yet unclassified' }
TelegramLib >> td_json_client_receive: timeout [

	^ self ffiCall:
		  #( const char * td_json_client_receive #( self , double
		        timeout ) )
]

{ #category : #'as yet unclassified' }
TelegramLib >> td_json_client_send: request [

	^ self ffiCall:
		  #( void td_json_client_send #( self , String request ) )
]
