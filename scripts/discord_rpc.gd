extends Node

func _ready() -> void:
	print("Discord SDK Initialized")
	DiscordRPC.app_id = 1356487505364521101   # Application ID

	DiscordRPC.details = "A TEST activity by Bandoit!"
	DiscordRPC.state = "Checkpoint 23/23"

	DiscordRPC.large_image = "example_game"  # Image key from "Art Assets"
	DiscordRPC.large_image_text = "Try it now!"

	DiscordRPC.small_image = "boss"  # Image key from "Art Assets"
	DiscordRPC.small_image_text = "Fighting the end boss! D:"

	DiscordRPC.start_timestamp = int(Time.get_unix_time_from_system())  # "02:46 elapsed"
	# DiscordRPC.end_timestamp = int(Time.get_unix_time_from_system()) + 3600  # +1 hour

	DiscordRPC.refresh()  # Always refresh after changing the values!

func _process(delta: float) -> void:
	DiscordRPC.run_callbacks()  # Ensures Discord presence updates properly
