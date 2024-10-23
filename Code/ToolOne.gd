@tool
## Every tool Script needs @tool at the top of Script
## Tool Scripts will be active during the editor and during run time.
##if Engine.is_editor_hint(): Is true when in editor 

extends TextureRect


@export var Sprite: Texture2D:
	set(value):## When ever this var is updata the below will be called
		Sprite = value
		UpdataSprite()
		

@export var ObjectDataRes:ObjectData ## Getting ref to a resource in files
@export var Rich_text_label: RichTextLabel
@onready var MoneyRich_text_label: RichTextLabel = $"../RichTextLabel"




@export var Spin:bool = false
		

func  _process(delta: float) -> void:
	if Spin: rotation += PI * delta * 1
	
func  UpdataSprite()->void:
	texture = Sprite
	
func UpdataRichText(Text:String)->void:
	Rich_text_label.text = ObjectDataRes.Name 
	
	
