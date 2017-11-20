.class public Lcom/google/glass/companion/CompanionConstants;
.super Ljava/lang/Object;
.source "CompanionConstants.java"


# static fields
.field public static final ACTION_GLASS_INFO_REQUEST:Ljava/lang/String; = "com.google.glass.companion.GLASS_INFO_REQUEST"

.field public static final ACTION_INPUT_BOX_RESPONSE:Ljava/lang/String; = "com.google.glass.companion.INPUT_BOX_RESPONSE"

.field public static final ACTION_KEYBOARD_ACTIVITY_NOTIFICATION:Ljava/lang/String; = "com.google.glass.companion.SEND_KEYBOARD_ACTIVITY_NOTIFICATION"

.field public static final ACTION_NOTIFICATIONS_UPDATE:Ljava/lang/String; = "com.google.glass.companion.ACTION_NOTIFICATIONS_UPDATE"

.field public static final ACTION_OPEN_ENDED_INPUT_REQUEST:Ljava/lang/String; = "com.google.glass.companion.OPEN_ENDED_INPUT_REQUEST"

.field public static final ACTION_OPEN_ENDED_INPUT_RESPONSE:Ljava/lang/String; = "com.google.glass.companion.OPEN_ENDED_INPUT_RESPONSE"

.field public static final ACTION_SETUP_GLASS:Ljava/lang/String; = "com.google.glass.companion.SETUP_GLASS"

.field public static final ACTION_SETUP_WIFI:Ljava/lang/String; = "com.google.glass.companion.SETUP_WIFI"

.field public static final ACTION_SETUP_WIFI_REQUEST:Ljava/lang/String; = "com.google.glass.companion.SETUP_WIFI_REQUEST"

.field public static final EXTRA_GLASS_INFO_REQUEST_PROTO:Ljava/lang/String; = "glass_info_request_proto"

.field public static final EXTRA_INPUT_BOX_REQUEST_BYTES:Ljava/lang/String; = "input_box_request_bytes"

.field public static final EXTRA_INPUT_BOX_RESPONSE_BYTES:Ljava/lang/String; = "input_box_response_bytes"

.field public static final EXTRA_NOTIFICATIONS_UPDATE_BYTES:Ljava/lang/String; = "notification_update_bytes"

.field public static final EXTRA_OPEN_ENDED_INPUT_REQUEST_BYTES:Ljava/lang/String; = "open_ended_request_bytes"

.field public static final EXTRA_OPEN_ENDED_INPUT_RESPONSE_BYTES:Ljava/lang/String; = "open_ended_response_bytes"

.field public static final EXTRA_SETUP_STRING:Ljava/lang/String; = "setup_string"

.field public static final EXTRA_SETUP_WIFI:Ljava/lang/String; = "wifi_setup_string"

.field public static final EXTRA_SETUP_WIFI_REQUEST_DATA:Ljava/lang/String; = "data"

.field public static final GET_WALLPAPER_INFO_RECEIVED:Ljava/lang/String; = "com.google.glass.action.GET_WALLPAPER_INFO_RECEIVED"

.field public static final GLASS_INFO_PERMISSION:Ljava/lang/String; = "com.google.glass.companion.GLASS_INFO"

.field public static final HOW_TO_PAIR_YOUTUBE_VIDEO_SOURCE:Ljava/lang/String; = "JnUVTBDT8_o"

.field public static final LOW_BATTERY_PERCENTAGE_NOTIFICATION_THRESHOLD:I = 0x14

.field static final MAJOR_VERSION:I = 0x6

.field static final MINOR_VERSION:I = 0xa

.field public static final NOTIFICATION_SYNC_MIN_MINOR_VERSION:I = 0xa

.field public static final NO_ANDROID_SDK_VERSION:I = -0x1

.field public static final NUM_OF_PHOTOS_TO_SYNC_MIN_MINOR_VERSION:I = 0x8

.field public static final PHOTO_DELETE_MIN_MINOR_VERSION:I = 0x7

.field public static final PHOTO_SYNC_MIN_MINOR_VERSION:I = 0x6

.field public static final PHOTO_SYNC_MYGLASS_SETTINGS_MIN_MINOR_VERSION:I = 0x9

.field public static final SCREENCAST_SCREEN_OFF_MIN_MINOR_VERSION:I = 0x3

.field public static final SECURE_UUID:Landroid/os/ParcelUuid;

.field public static final SETUP_STRING_WAITING:Ljava/lang/String; = "SETUP_STRING_WAITING"

.field public static final SETUP_STRING_WAITING_MIN_MINOR_VERSION:I = 0x3

.field public static final SET_WALLPAPER_ID_KEY:Ljava/lang/String; = "set_wallpaper_id_key"

.field public static final SET_WALLPAPER_REQUEST_RECEIVED:Ljava/lang/String; = "com.google.glass.action.SET_WALLPAPER_REQUEST_RECEIVED"

.field public static final SHA1_HASH_CODE_KEY:Ljava/lang/String; = "sha1_hash_code_key"

.field public static final SOCKET_NAME:Ljava/lang/String; = "Companion"

.field public static final TYPE_WIFI_PASSWORD_ON_COMPANION_MIN_MINOR_VERSION:I = 0x4

.field public static final UPDATE_CREDENTIAL_SILENTLY_VIA_COMPANION_APP_MIN_MINOR_VERSION:I = 0x5

.field public static final VERSION:I

.field static final VERSION_BITS:I = 0xffff

.field static final VERSION_SHIFT:I = 0x10

.field public static final WELCOME_YOUTUBE_VIDEO_SOURCE:Ljava/lang/String; = "cAediAS9ADM"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const/4 v0, 0x6

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/google/glass/companion/CompanionConstants;->calculateVersion(II)I

    move-result v0

    sput v0, Lcom/google/glass/companion/CompanionConstants;->VERSION:I

    .line 64
    const-string v0, "F15CC914-E4BC-45CE-9930-CB7695385850"

    .line 65
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/CompanionConstants;->SECURE_UUID:Landroid/os/ParcelUuid;

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateVersion(II)I
    .locals 1
    .param p0, "majorVersion"    # I
    .param p1, "minorVersion"    # I

    .prologue
    .line 186
    shl-int/lit8 v0, p1, 0x10

    add-int/2addr v0, p0

    return v0
.end method
