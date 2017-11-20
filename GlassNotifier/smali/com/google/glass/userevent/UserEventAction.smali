.class public final enum Lcom/google/glass/userevent/UserEventAction;
.super Ljava/lang/Enum;
.source "UserEventAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/userevent/UserEventAction$Platform;,
        Lcom/google/glass/userevent/UserEventAction$Obsolete;,
        Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;,
        Lcom/google/glass/userevent/UserEventAction$Source;,
        Lcom/google/glass/userevent/UserEventAction$Category;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/userevent/UserEventAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/userevent/UserEventAction;

.field public static final enum ACCEL_TAP_DETECTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final ACCEL_TAP_PARAMS:[Ljava/lang/String;

.field public static final enum ACCOUNT_RELOGIN:Lcom/google/glass/userevent/UserEventAction;

.field public static final ACCOUNT_RELOGIN_FAILURE:Ljava/lang/String; = "2"

.field public static final ACCOUNT_RELOGIN_STARTED:Ljava/lang/String; = "0"

.field public static final ACCOUNT_RELOGIN_SUCCESS:Ljava/lang/String; = "1"

.field public static final enum ACTION_RESPONSE_RECEIVED:Lcom/google/glass/userevent/UserEventAction;

.field public static final ACTIVATED_CAMERA_LONG:Ljava/lang/String; = "4"

.field public static final ACTIVATED_CAMERA_SHORT:Ljava/lang/String; = "3"

.field public static final ACTIVATED_DON:Ljava/lang/String; = "11"

.field public static final ACTIVATED_GLOBAL_LOOK_UP:Ljava/lang/String; = "7"

.field public static final ACTIVATED_GUARD_PHRASE:Ljava/lang/String; = "12"

.field public static final ACTIVATED_LOOK_AT_SCREEN:Ljava/lang/String; = "13"

.field public static final ACTIVATED_POWER_CONNECTED:Ljava/lang/String; = "6"

.field public static final ACTIVATED_POWER_SHORT:Ljava/lang/String; = "5"

.field public static final ACTIVATED_RELATIVE_LOOK_UP:Ljava/lang/String; = "10"

.field public static final ACTIVATED_SWIPE_LISTEN:Ljava/lang/String; = "2"

.field public static final ACTIVATED_TAP:Ljava/lang/String; = "9"

.field public static final ACTIVATED_WINK:Ljava/lang/String; = "8"

.field public static final enum ADB_STATE_CHANGE:Lcom/google/glass/userevent/UserEventAction;

.field public static final ADB_STATE_CHANGE_KEY:Ljava/lang/String; = "s"

.field public static final ADB_STATE_DISABLED:Ljava/lang/String; = "0"

.field public static final ADB_STATE_ENABLED:Ljava/lang/String; = "1"

.field public static final enum AM_ANR:Lcom/google/glass/userevent/UserEventAction;

.field public static final AM_ANR_PARAMS:[Ljava/lang/String;

.field public static final enum AM_CRASH:Lcom/google/glass/userevent/UserEventAction;

.field public static final AM_CRASH_PARAMS:[Ljava/lang/String;

.field public static final enum AM_PROC_DIED:Lcom/google/glass/userevent/UserEventAction;

.field public static final AM_PROC_DIED_PARAMS:[Ljava/lang/String;

.field public static final enum ANDROID_CHECK_IN:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum ASYNC_THREAD_POOL_CLOG:Lcom/google/glass/userevent/UserEventAction;

.field public static final ASYNC_THREAD_QUEUE_CLOG_CLASS:Ljava/lang/String; = "c"

.field public static final ASYNC_THREAD_QUEUE_CLOG_COUNT:Ljava/lang/String; = "n"

.field public static final ASYNC_THREAD_QUEUE_CLOG_RUNNING:Ljava/lang/String; = "r"

.field public static final enum BARCODE_FAILED_SCAN:Lcom/google/glass/userevent/UserEventAction;

.field public static final BARCODE_PICTURE_EMAIL:Ljava/lang/String; = "7"

.field public static final BARCODE_PICTURE_GEO:Ljava/lang/String; = "3"

.field public static final BARCODE_PICTURE_GLASSCAST:Ljava/lang/String; = "2"

.field public static final BARCODE_PICTURE_HANGOUT:Ljava/lang/String; = "1"

.field public static final BARCODE_PICTURE_LINK:Ljava/lang/String; = "6"

.field public static final BARCODE_PICTURE_PHONE:Ljava/lang/String; = "5"

.field public static final enum BARCODE_PICTURE_SCAN:Lcom/google/glass/userevent/UserEventAction;

.field public static final BARCODE_PICTURE_SMS:Ljava/lang/String; = "8"

.field public static final BARCODE_PICTURE_SPEAK:Ljava/lang/String; = "4"

.field public static final enum BARCODE_SUCCESSFUL_SCAN:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum BATTERY_STATE:Lcom/google/glass/userevent/UserEventAction;

.field public static final BATTERY_STATE_KEY_ACTION:Ljava/lang/String; = "a"

.field public static final BATTERY_STATE_KEY_CHARGED:Ljava/lang/String; = "cd"

.field public static final BATTERY_STATE_KEY_CHARGING:Ljava/lang/String; = "cg"

.field public static final BATTERY_STATE_KEY_GAS_GAUGE_DATA:Ljava/lang/String; = "gg"

.field public static final BATTERY_STATE_KEY_PERCENT:Ljava/lang/String; = "p"

.field public static final BATTERY_STATE_KEY_POWERED:Ljava/lang/String; = "ip"

.field public static final BATTERY_STATE_KEY_TIME_TO_EMPTY:Ljava/lang/String; = "t"

.field public static final BATTERY_STATE_VALUE_ACTION_BOOT:Ljava/lang/String; = "boot"

.field public static final BATTERY_STATE_VALUE_ACTION_LOW:Ljava/lang/String; = "low"

.field public static final BATTERY_STATE_VALUE_ACTION_OKAY:Ljava/lang/String; = "ok"

.field public static final BATTERY_STATE_VALUE_ACTION_PLUGGED:Ljava/lang/String; = "plugged"

.field public static final BATTERY_STATE_VALUE_ACTION_UNPLUGGED:Ljava/lang/String; = "unplugged"

.field public static final enum BLUETOOTH_DISCOVERABLE:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum BROWSER_ERROR:Lcom/google/glass/userevent/UserEventAction;

.field public static final BROWSER_EXTERNAL_URL_SOURCE:Ljava/lang/String; = "us"

.field public static final enum BROWSER_MENU_OPTION:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum BROWSER_PAGE_LOADED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum BROWSER_PAGE_REQUESTED_EXPLICIT:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum BROWSER_PAGE_REQUESTED_IMPLICIT:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum BROWSER_PRELOAD_ERROR:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum BROWSER_PRELOAD_REQUESTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum BROWSER_PRELOAD_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum BROWSER_PRELOAD_WASTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum BROWSER_SESSION_METRICS:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum BROWSER_TWO_FINGER_ZOOM:Lcom/google/glass/userevent/UserEventAction;

.field public static final BUNDLE_NUM_TOTAL:Ljava/lang/String; = "n"

.field public static final BUNDLE_NUM_VIEWED:Ljava/lang/String; = "v"

.field public static final enum CAMERA_BUTTON:Lcom/google/glass/userevent/UserEventAction;

.field public static final CAMERA_BUTTON_PARAMS:[Ljava/lang/String;

.field public static final enum CAMERA_ERROR_CALLBACK:Lcom/google/glass/userevent/UserEventAction;

.field public static final CAMERA_ERROR_CALLBACK_MSG:Ljava/lang/String; = "m"

.field public static final enum CAMERA_TIMINGS:Lcom/google/glass/userevent/UserEventAction;

.field public static final CAMERA_TIMINGS_CAPTURED:Ljava/lang/String; = "c"

.field public static final CAMERA_TIMINGS_GCAM:Ljava/lang/String; = "g"

.field public static final CAMERA_TIMINGS_GCAM_TYPE_GCAM:Ljava/lang/String; = "1"

.field public static final CAMERA_TIMINGS_GCAM_TYPE_HQ:Ljava/lang/String; = "0"

.field public static final CAMERA_TIMINGS_GCAM_TYPE_HQ_FALLBACK:Ljava/lang/String; = "2"

.field public static final CAMERA_TIMINGS_LOCATION_AGE_MILLIS:Ljava/lang/String; = "la"

.field public static final CAMERA_TIMINGS_POSTVIEW_TIMEOUT:Ljava/lang/String; = "to"

.field public static final CAMERA_TIMINGS_PREPARE_SAVINGS:Ljava/lang/String; = "p"

.field public static final CAMERA_TIMINGS_REQUEST_JPEG:Ljava/lang/String; = "j"

.field public static final CAMERA_TIMINGS_REQUEST_SHUTTER:Ljava/lang/String; = "s"

.field public static final CAMERA_TIMINGS_REQUEST_THUMBNAIL:Ljava/lang/String; = "t"

.field public static final CAMERA_TIMINGS_SCREEN:Ljava/lang/String; = "d"

.field public static final CAMERA_TIMINGS_TRIGGER_METHOD:Ljava/lang/String; = "tr"

.field public static final CAMERA_TIMINGS_TRIGGER_METHOD_BUTTON:Ljava/lang/String; = "0"

.field public static final CAMERA_TIMINGS_TRIGGER_METHOD_TOUCH:Ljava/lang/String; = "2"

.field public static final CAMERA_TIMINGS_TRIGGER_METHOD_UNKNOWN:Ljava/lang/String; = "-1"

.field public static final CAMERA_TIMINGS_TRIGGER_METHOD_VOICE:Ljava/lang/String; = "1"

.field public static final CAMERA_TIMINGS_TRIGGER_METHOD_WINK:Ljava/lang/String; = "3"

.field public static final CAMERA_TIMINGS_VIEWFINDER:Ljava/lang/String; = "v"

.field public static final enum CAMERA_WARMUP:Lcom/google/glass/userevent/UserEventAction;

.field public static final CAMERA_WARMUP_OPEN_FAILURE:Ljava/lang/String; = "of"

.field public static final CAMERA_WARMUP_OPEN_NULL:Ljava/lang/String; = "on"

.field public static final CAMERA_WARMUP_SUCCESS:Ljava/lang/String; = "s"

.field public static final enum CHANGE_TRIP:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum COMPANION_API_URL_REQUEST:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum COMPANION_CONNECTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum COMPANION_CONNECTION:Lcom/google/glass/userevent/UserEventAction;

.field public static final COMPANION_CONNECTION_ANDROID:Ljava/lang/String; = "1"

.field public static final COMPANION_CONNECTION_IOS:Ljava/lang/String; = "2"

.field public static final COMPANION_CONNECTION_RFCOMMON:Ljava/lang/String; = "3"

.field public static final COMPANION_CONNECTION_TETHERING_MULTICAST:Ljava/lang/String; = "5"

.field public static final COMPANION_CONNECTION_WIFI_MULTICAST:Ljava/lang/String; = "4"

.field public static final enum COMPANION_CONTACT_ADDED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum COMPANION_CONTACT_REMOVED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum COMPANION_COUNT_TILE_ACTIVATED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum COMPANION_GLASSWARE_DISABLED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum COMPANION_GLASSWARE_ENABLED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum COMPANION_IOS_CONTACTS_DOWNLOAD:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum COMPANION_IOS_CONTACTS_ERRORS:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum COMPANION_IOS_CONTACTS_EXITED_FOR_CARDDAV:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum COMPANION_IOS_CONTACTS_IMPORT:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum COMPANION_IOS_CONTACTS_STARRING:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum COMPANION_IOS_CONTACTS_UPLOAD:Lcom/google/glass/userevent/UserEventAction;

.field public static final COMPANION_IOS_DOWNLOAD_DURATION_KEY:Ljava/lang/String; = "d"

.field public static final COMPANION_IOS_DOWNLOAD_NUM_OF_CONTACTS_KEY:Ljava/lang/String; = "c"

.field public static final COMPANION_IOS_ERROR_ACTION_DOWNLOAD:Ljava/lang/String; = "d"

.field public static final COMPANION_IOS_ERROR_ACTION_KEY:Ljava/lang/String; = "a"

.field public static final COMPANION_IOS_ERROR_ACTION_STAR:Ljava/lang/String; = "s"

.field public static final COMPANION_IOS_ERROR_ACTION_UPLOAD:Ljava/lang/String; = "u"

.field public static final COMPANION_IOS_ERROR_CODE_KEY:Ljava/lang/String; = "e"

.field public static final COMPANION_IOS_EXITED_FOR_CARDDAV_KEY:Ljava/lang/String; = "s"

.field public static final COMPANION_IOS_EXITED_FOR_CARDDAV_NO:Ljava/lang/String; = "0"

.field public static final COMPANION_IOS_EXITED_FOR_CARDDAV_YES:Ljava/lang/String; = "1"

.field public static final COMPANION_IOS_IMPORT_KEY:Ljava/lang/String; = "i"

.field public static final COMPANION_IOS_IMPORT_NO:Ljava/lang/String; = "0"

.field public static final COMPANION_IOS_IMPORT_YES:Ljava/lang/String; = "1"

.field public static final COMPANION_IOS_STAR_ACTION_KEY:Ljava/lang/String; = "a"

.field public static final COMPANION_IOS_STAR_ACTION_STAR:Ljava/lang/String; = "1"

.field public static final COMPANION_IOS_STAR_ACTION_UNSTAR:Ljava/lang/String; = "0"

.field public static final COMPANION_IOS_STAR_NUM_OF_STARRED_KEY:Ljava/lang/String; = "s"

.field public static final COMPANION_IOS_STAR_TOTAL_NUM_OF_CONTACTS_KEY:Ljava/lang/String; = "t"

.field public static final COMPANION_IOS_UPLOAD_DURATION_KEY:Ljava/lang/String; = "d"

.field public static final COMPANION_IOS_UPLOAD_NUM_OF_IMPORTED_KEY:Ljava/lang/String; = "u"

.field public static final COMPANION_IOS_UPLOAD_NUM_OF_LOCAL_CONTACTS_KEY:Ljava/lang/String; = "l"

.field public static final COMPANION_IOS_UPLOAD_TOTAL_NUM_KEY:Ljava/lang/String; = "t"

.field public static final COMPANION_KEYBOARD_LAUNCH_METHOD_KEY:Ljava/lang/String; = "k"

.field public static final COMPANION_KEYBOARD_LOCK_SCREEN:Ljava/lang/String; = "1"

.field public static final COMPANION_KEYBOARD_MYGLASS:Ljava/lang/String; = "2"

.field public static final COMPANION_KEYBOARD_NOTIFICATION:Ljava/lang/String; = "3"

.field public static final enum COMPANION_MMS_FORWARDED:Lcom/google/glass/userevent/UserEventAction;

.field public static final COMPANION_MMS_HAS_IMAGE_KEY:Ljava/lang/String; = "i"

.field public static final COMPANION_MMS_IMAGE_HEIGHT_KEY:Ljava/lang/String; = "h"

.field public static final COMPANION_MMS_IMAGE_SIZE_KEY:Ljava/lang/String; = "s"

.field public static final COMPANION_MMS_IMAGE_WIDTH_KEY:Ljava/lang/String; = "w"

.field public static final COMPANION_MMS_WITHOUT_IMAGE:Ljava/lang/String; = "0"

.field public static final COMPANION_MMS_WITH_IMAGE:Ljava/lang/String; = "1"

.field public static final COMPANION_PAGE_ACTIVE_GLASSWARE:Ljava/lang/String; = "c"

.field public static final COMPANION_PAGE_ADD_CONTACT:Ljava/lang/String; = "a"

.field public static final COMPANION_PAGE_BLUETOOTH:Ljava/lang/String; = "b"

.field public static final COMPANION_PAGE_CONTACT_DETAILS:Ljava/lang/String; = "i"

.field public static final COMPANION_PAGE_DEVICE:Ljava/lang/String; = "d"

.field public static final COMPANION_PAGE_ENABLED_CONTACTS:Ljava/lang/String; = "c"

.field public static final COMPANION_PAGE_GLASSWARE_DETAILS:Ljava/lang/String; = "f"

.field public static final COMPANION_PAGE_GLASSWARE_GALLERY:Ljava/lang/String; = "g"

.field public static final COMPANION_PAGE_KEY:Ljava/lang/String; = "p"

.field public static final COMPANION_PAGE_LANGUAGE_SELECTOR:Ljava/lang/String; = "l"

.field public static final COMPANION_PAGE_MUTED_APPS:Ljava/lang/String; = "ma"

.field public static final COMPANION_PAGE_SETTINGS:Ljava/lang/String; = "s"

.field public static final COMPANION_PAGE_UNLOCK_DEVICE:Ljava/lang/String; = "u"

.field public static final enum COMPANION_PAGE_VIEW:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum COMPANION_PAGE_VIEW_ENDED:Lcom/google/glass/userevent/UserEventAction;

.field public static final COMPANION_PAGE_VIEW_TIME_KEY:Ljava/lang/String; = "t"

.field public static final COMPANION_PAGE_WIFI:Ljava/lang/String; = "w"

.field public static final enum COMPANION_PHOTO_QUEUED_FOR_SYNC:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum COMPANION_PHOTO_SYNCED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum COMPANION_PHOTO_SYNC_UPON_CONNECTION:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum COMPANION_PHOTO_SYNC_WITH_ACTIVE_CONNECTION:Lcom/google/glass/userevent/UserEventAction;

.field public static final COMPANION_REQUESTED_URL_KEY:Ljava/lang/String; = "u"

.field public static final COMPANION_REQUESTED_URL_RESPONSE_KEY:Ljava/lang/String; = "r"

.field public static final COMPANION_REQUESTED_URL_TIME:Ljava/lang/String; = "t"

.field public static final enum COMPANION_SCREENCAST:Lcom/google/glass/userevent/UserEventAction;

.field public static final COMPANION_SCREENCAST_CONNECTED:Ljava/lang/String; = "2"

.field public static final enum COMPANION_SCREENCAST_FROM_COMPANION:Lcom/google/glass/userevent/UserEventAction;

.field public static final COMPANION_SCREENCAST_QRCODE:Ljava/lang/String; = "1"

.field public static final enum COMPANION_SCREENCAST_REMOTE_CONTROL:Lcom/google/glass/userevent/UserEventAction;

.field public static final COMPANION_SCREENCAST_SOURCE:Ljava/lang/String; = "s"

.field public static final COMPANION_SCREENCAST_SOURCE_APP:Ljava/lang/String; = "0"

.field public static final COMPANION_SCREENCAST_SOURCE_NOTIFICATION:Ljava/lang/String; = "1"

.field public static final enum COMPANION_SETTINGS:Lcom/google/glass/userevent/UserEventAction;

.field public static final COMPANION_SETTINGS_PHOTO_SYNC_NOTIFICATION_TURN_OFF:Ljava/lang/String; = "3"

.field public static final COMPANION_SETTINGS_PHOTO_SYNC_NOTIFICATION_TURN_ON:Ljava/lang/String; = "2"

.field public static final COMPANION_SETTINGS_PHOTO_SYNC_TURN_OFF:Ljava/lang/String; = "1"

.field public static final COMPANION_SETTINGS_PHOTO_SYNC_TURN_ON:Ljava/lang/String; = "0"

.field public static final enum COMPANION_SETUP_ACCOUNT_SIGNED_IN:Lcom/google/glass/userevent/UserEventAction;

.field public static final COMPANION_SETUP_ACCOUNT_SIGNED_IN_EXISTING:Ljava/lang/String; = "e"

.field public static final enum COMPANION_SETUP_FAILED:Lcom/google/glass/userevent/UserEventAction;

.field public static final COMPANION_SETUP_FAILED_REASON:Ljava/lang/String; = "r"

.field public static final COMPANION_SETUP_FAILED_REASON_SERVER:Ljava/lang/String; = "0"

.field public static final COMPANION_SETUP_FAILED_REASON_TIMEOUT:Ljava/lang/String; = "1"

.field public static final COMPANION_SETUP_FAILED_SERVER_STATUS:Ljava/lang/String; = "s"

.field public static final enum COMPANION_SETUP_FLOW_STARTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum COMPANION_SETUP_PAIRING_STARTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final COMPANION_SETUP_PAIRING_SUCCESS:Ljava/lang/String; = "s"

.field public static final enum COMPANION_SETUP_PAIRING_VIDEO_PLAYED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum COMPANION_SETUP_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

.field public static final COMPANION_SETUP_SUCCESS_SKIP:Ljava/lang/String; = "s"

.field public static final enum COMPANION_SETUP_WELCOME_VIDEO_PLAYED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum COMPANION_SET_WALLPAPER:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum COMPANION_SHARE_FAIL:Lcom/google/glass/userevent/UserEventAction;

.field public static final COMPANION_SHARE_FAILED_REASON_CANCELLED:Ljava/lang/String; = "1"

.field public static final COMPANION_SHARE_FAILED_REASON_KEY:Ljava/lang/String; = "r"

.field public static final COMPANION_SHARE_FAILED_REASON_UNPARSEABLE:Ljava/lang/String; = "0"

.field public static final enum COMPANION_SHARE_START:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum COMPANION_SHARE_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

.field public static final COMPANION_SHARE_TIME_KEY:Ljava/lang/String; = "t"

.field public static final enum COMPANION_START_KEYBOARD_TEXT_ENTRY:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum COMPANION_THUMBNAIL_ACTIVATED:Lcom/google/glass/userevent/UserEventAction;

.field public static final COMPANION_THUMBNAIL_ACTIVATED_APP:Ljava/lang/String; = "1"

.field public static final COMPANION_THUMBNAIL_ACTIVATED_NOTIFICATION:Ljava/lang/String; = "0"

.field public static final enum COMPANION_WEAR_PROMO:Lcom/google/glass/userevent/UserEventAction;

.field public static final COMPANION_WEAR_PROMO_ACCEPT:Ljava/lang/String; = "a"

.field public static final COMPANION_WEAR_PROMO_DISMISS:Ljava/lang/String; = "d"

.field public static final enum COMPANION_WEAR_PROMO_NOTIFICATION:Lcom/google/glass/userevent/UserEventAction;

.field public static final COMPANION_WEAR_PROMO_NOTIFICATION_DISMISS:Ljava/lang/String; = "d"

.field public static final COMPANION_WEAR_PROMO_NOTIFICATION_ENABLE:Ljava/lang/String; = "e"

.field public static final COMPANION_WEAR_PROMO_NOTIFICATION_SHOW:Ljava/lang/String; = "s"

.field public static final COMPANION_WEAR_PROMO_NOTIFICATION_SNOOZE:Ljava/lang/String; = "n"

.field public static final COMPANION_WEAR_PROMO_SHOW:Ljava/lang/String; = "s"

.field public static final enum COMPANION_WEAR_SETTINGS:Lcom/google/glass/userevent/UserEventAction;

.field public static final COMPANION_WEAR_SETTINGS_AUTO_MUTE_DISABLE:Ljava/lang/String; = "ad"

.field public static final COMPANION_WEAR_SETTINGS_AUTO_MUTE_ENABLE:Ljava/lang/String; = "ae"

.field public static final COMPANION_WEAR_SETTINGS_DISABLE_SYNC:Ljava/lang/String; = "d"

.field public static final COMPANION_WEAR_SETTINGS_ENABLE_SYNC:Ljava/lang/String; = "e"

.field public static final COMPANION_WEAR_SETTINGS_ENTER:Ljava/lang/String; = "en"

.field public static final COMPANION_WEAR_SETTINGS_GLASSWARE_DISABLE:Ljava/lang/String; = "gd"

.field public static final COMPANION_WEAR_SETTINGS_GLASSWARE_ENABLE:Ljava/lang/String; = "ge"

.field public static final COMPANION_WEAR_SETTINGS_MUTE_APP:Ljava/lang/String; = "m"

.field public static final COMPANION_WEAR_SETTINGS_NOTIFICATION_ENABLE_ACCESS_CLICK:Ljava/lang/String; = "nc"

.field public static final COMPANION_WEAR_SETTINGS_SHOW_GLASSWARE_ID:Ljava/lang/String; = "gi"

.field public static final COMPANION_WEAR_SETTINGS_SHOW_GLASSWARE_PKG:Ljava/lang/String; = "gp"

.field public static final enum CONNECTIVITY_BROKEN_NETWORK:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum CONNECTIVITY_BT_ENABLE:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum CONNECTIVITY_BT_PAIRED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum CONNECTIVITY_BT_PAIRING_LOCAL_CANCEL:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum CONNECTIVITY_BT_PAIRING_REMOTE_CANCEL:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum CONNECTIVITY_CHECKER:Lcom/google/glass/userevent/UserEventAction;

.field public static final CONNECTIVITY_ENCRYPTION_KEY:Ljava/lang/String; = "e"

.field public static final CONNECTIVITY_FALLBACK_ATTEMPT_KEY:Ljava/lang/String; = "f"

.field public static final CONNECTIVITY_LATENCY_KEY:Ljava/lang/String; = "l"

.field public static final enum CONNECTIVITY_NETWORK_REQUEST:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum CONNECTIVITY_STATE_PERCENTAGE:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum CONNECTIVITY_STATE_SCREEN_ON:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum CONNECTIVITY_STATE_TIME:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum CONNECTIVITY_STATUS_CARD:Lcom/google/glass/userevent/UserEventAction;

.field public static final CONNECTIVITY_SUCCESS_KEY:Ljava/lang/String; = "s"

.field public static final enum CONNECTIVITY_WIFI_ASSOCIATE:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum CONNECTIVITY_WIFI_ENABLE:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum CONNECTIVITY_WIFI_ENCRYPTION_DETECTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum CONNECTIVITY_WIFI_ENCRYPTION_NOT_DETECTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum CONNECTIVITY_WIFI_SCANNING_STOPPED:Lcom/google/glass/userevent/UserEventAction;

.field public static final CSC_CARD_FRESHNESS_KEY:Ljava/lang/String; = "f"

.field public static final CSC_HIDDEN:Ljava/lang/String; = "0"

.field public static final CSC_MENU_ACTION_DISMISS_CARD:Ljava/lang/String; = "2"

.field public static final CSC_MENU_ACTION_JOIN_NETWORK:Ljava/lang/String; = "0"

.field public static final CSC_MENU_ACTION_KEY:Ljava/lang/String; = "m"

.field public static final CSC_MENU_ACTION_SHOW_MORE_INFO:Ljava/lang/String; = "1"

.field public static final CSC_NEW_CARD:Ljava/lang/String; = "0"

.field public static final CSC_NO_WIFI_BT_CONNECTED:Ljava/lang/String; = "4"

.field public static final CSC_NO_WIFI_BT_CONNECTED_NO_DATA:Ljava/lang/String; = "5"

.field public static final CSC_NO_WIFI_BT_CONNECTED_WITH_ISSUE:Ljava/lang/String; = "6"

.field public static final CSC_NO_WIFI_NO_BT:Ljava/lang/String; = "1"

.field public static final CSC_OLD_CARD:Ljava/lang/String; = "1"

.field public static final CSC_STATUS_KEY:Ljava/lang/String; = "k"

.field public static final CSC_WIFI_CONNECTED:Ljava/lang/String; = "2"

.field public static final CSC_WIFI_CONNECTED_NO_DATA:Ljava/lang/String; = "3"

.field public static final enum CSS_FAILED_LOAD:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum DEBUG:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum DEFERRED_CONTENT_LOAD:Lcom/google/glass/userevent/UserEventAction;

.field public static final DEFERRED_CONTENT_LOAD_LATENCY:Ljava/lang/String; = "l"

.field public static final DEFERRED_CONTENT_LOAD_START_LAG:Ljava/lang/String; = "g"

.field public static final DEFERRED_CONTENT_LOAD_TAG:Ljava/lang/String; = "t"

.field public static final DEFERRED_CONTENT_LOAD_TAG_CACHED_WEBVIEW:Ljava/lang/String; = "cw"

.field public static final DEFERRED_CONTENT_LOAD_TAG_ENTITY_IMAGE:Ljava/lang/String; = "ei"

.field public static final DEFERRED_CONTENT_LOAD_TAG_GLASSWARE_ICON:Ljava/lang/String; = "gi"

.field public static final DEFERRED_CONTENT_LOAD_TAG_GLASSWARE_MESSAGES:Ljava/lang/String; = "gm"

.field public static final DEFERRED_CONTENT_LOAD_TAG_IMAGE_ATTACHMENT:Ljava/lang/String; = "ia"

.field public static final DEFERRED_CONTENT_LOAD_TAG_IMAGE_PROXY:Ljava/lang/String; = "ip"

.field public static final DEFERRED_CONTENT_LOAD_TAG_IMAGE_PROXY_BITMAP:Ljava/lang/String; = "ipb"

.field public static final DEFERRED_CONTENT_LOAD_TAG_IMAGE_URI:Ljava/lang/String; = "iuri"

.field public static final DEFERRED_CONTENT_LOAD_TAG_NOWTOWN_DIRECTORY_ICON:Ljava/lang/String; = "di"

.field public static final DEFERRED_CONTENT_LOAD_TAG_SEARCH_HTML:Ljava/lang/String; = "sh"

.field public static final DEFERRED_CONTENT_LOAD_TAG_SEARCH_PROTO:Ljava/lang/String; = "sp"

.field public static final DEFERRED_CONTENT_LOAD_TAG_STATIC_MAP:Ljava/lang/String; = "sma"

.field public static final DEFERRED_CONTENT_LOAD_TAG_VIDEO:Ljava/lang/String; = "v"

.field public static final DEFERRED_CONTENT_LOAD_TAG_VIDEO_THUMBNAIL:Ljava/lang/String; = "vt"

.field public static final enum DELETE_COMPLETED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum DELETE_INITIATED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum DEVELOPER_SETTING_ANIMATION_TIME_SCALE_CHANGED:Lcom/google/glass/userevent/UserEventAction;

.field public static final DEVELOPER_SETTING_DISABLED:Ljava/lang/String; = "0"

.field public static final DEVELOPER_SETTING_ENABLED:Ljava/lang/String; = "1"

.field public static final enum DEVELOPER_SETTING_KEEP_SCREEN_ON_CHANGED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum DEVELOPER_SETTING_LAYOUT_OVERLAY_CHANGED:Lcom/google/glass/userevent/UserEventAction;

.field public static final DEVELOPER_SETTING_METHOD_ADB:Ljava/lang/String; = "adb"

.field public static final DEVELOPER_SETTING_METHOD_KEY:Ljava/lang/String; = "m"

.field public static final DEVELOPER_SETTING_METHOD_UI:Ljava/lang/String; = "ui"

.field public static final enum DEVELOPER_SETTING_SHOW_GPU_OVERDRAW_CHANGED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum DEVELOPER_SETTING_SHOW_LAYOUT_BOUNDS_CHANGED:Lcom/google/glass/userevent/UserEventAction;

.field public static final DEVELOPER_SETTING_STATE_CHANGE_KEY:Ljava/lang/String; = "s"

.field public static final enum DEVICE_DOFFED:Lcom/google/glass/userevent/UserEventAction;

.field public static final DEVICE_DOFFED_PARAMS:[Ljava/lang/String;

.field public static final enum DEVICE_DONNED:Lcom/google/glass/userevent/UserEventAction;

.field public static final DEVICE_DONNED_PARAMS:[Ljava/lang/String;

.field public static final enum DEVICE_STORAGE_BLOCK_USER_ACTION:Lcom/google/glass/userevent/UserEventAction;

.field public static final DEVICE_STORAGE_FULL:Ljava/lang/String; = "3"

.field public static final DEVICE_STORAGE_FULL_BLOCKED_PHOTO:Ljava/lang/String; = "1"

.field public static final DEVICE_STORAGE_FULL_BLOCKED_VIDEO:Ljava/lang/String; = "2"

.field public static final DEVICE_STORAGE_FULL_DURING_VIDEO:Ljava/lang/String; = "3"

.field public static final DEVICE_STORAGE_LOW:Ljava/lang/String; = "2"

.field public static final DEVICE_STORAGE_OK:Ljava/lang/String; = "1"

.field public static final enum DEVICE_STORAGE_STATE_CHANGED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum DIRECTIONS_END:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum DIRECTIONS_ERROR:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum DIRECTIONS_RECEIVED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum DIRECTIONS_REFINEMENTS:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum DIRECTIONS_SCROLL:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum DIRECTIONS_START:Lcom/google/glass/userevent/UserEventAction;

.field public static final DISMISSED_DOWNSWIPE:Ljava/lang/String; = "1"

.field public static final DISMISSED_QUICK_TIMEOUT:Ljava/lang/String; = "4"

.field public static final DISMISSED_SYSTEM_TIMEOUT:Ljava/lang/String; = "3"

.field public static final enum DON_DETECTOR_DISABLED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum DON_DETECTOR_ENABLED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum DUMMY_TEST_EVENT:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum ENTITY_SYNC_BACKOFF:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum ENTITY_SYNC_FINISHED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum ENTITY_SYNC_STARTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum EYE_GESTURES_WINK_CALIBRATION_FAILURE:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum EYE_GESTURES_WINK_CALIBRATION_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum EYE_GESTURES_WINK_DISABLED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum EYE_GESTURES_WINK_ENABLED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum EYE_GESTURES_WINK_TAKE_PHOTO:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum FACTORY_RESET:Lcom/google/glass/userevent/UserEventAction;

.field public static final FAILED_TO_UPLOAD_ALL_ATTACHMENTS:Ljava/lang/String; = "1"

.field public static final enum FILTERED_TIMELINE_DISMISS:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum FORCED_REBOOT:Lcom/google/glass/userevent/UserEventAction;

.field public static final FORCED_REBOOT_PARAMS:[Ljava/lang/String;

.field public static final enum FORCED_SHUTDOWN:Lcom/google/glass/userevent/UserEventAction;

.field public static final FORCED_SHUTDOWN_PARAMS:[Ljava/lang/String;

.field public static final enum FORCE_EVENT_LOG_FLUSH:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum FSCK_BOOTCONFIG:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum FSCK_LOGS:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum GLASSWARE_INSTALLED:Lcom/google/glass/userevent/UserEventAction;

.field public static final GLASSWARE_INSTALLED_CONNECTIVITY:Ljava/lang/String; = "c"

.field public static final GLASSWARE_INSTALLED_CONNECTIVITY_BLUETOOTH:Ljava/lang/String; = "1"

.field public static final GLASSWARE_INSTALLED_CONNECTIVITY_NONE:Ljava/lang/String; = "4"

.field public static final GLASSWARE_INSTALLED_CONNECTIVITY_OTHER:Ljava/lang/String; = "3"

.field public static final GLASSWARE_INSTALLED_CONNECTIVITY_WIFI:Ljava/lang/String; = "2"

.field public static final GLASSWARE_INSTALLED_DOWNLOAD_TIME:Ljava/lang/String; = "d"

.field public static final GLASSWARE_INSTALLED_FAILED:J = -0x1L

.field public static final GLASSWARE_INSTALLED_INSTALL_TIME:Ljava/lang/String; = "i"

.field public static final GLASSWARE_INSTALLED_PACKAGE:Ljava/lang/String; = "p"

.field public static final GLASSWARE_INSTALLED_TIME_TO_DOWNLOAD_START:Ljava/lang/String; = "s"

.field public static final GLASSWARE_INSTALLED_UPDATE:J = -0x2L

.field public static final enum GLASSWARE_UNINSTALLED:Lcom/google/glass/userevent/UserEventAction;

.field public static final GLASSWARE_UNINSTALLED_BLACKLIST:J = -0x3L

.field public static final GLASSWARE_UNINSTALLED_CONNECTIVITY:Ljava/lang/String; = "c"

.field public static final GLASSWARE_UNINSTALLED_PACKAGE:Ljava/lang/String; = "p"

.field public static final GLASSWARE_UNINSTALLED_TIME:Ljava/lang/String; = "u"

.field public static final GLASSWARE_UNINSTALLED_TIME_TO_UNINSTALL_START:Ljava/lang/String; = "s"

.field public static final enum GLASS_SENDING_WALLPAPER_INFO:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum GUEST_MODE_TURNED_OFF:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum GUEST_MODE_TURNED_ON:Lcom/google/glass/userevent/UserEventAction;

.field public static final HANDSFREE_ABOVE_ENABLE_DOUBLE_BLINK:Ljava/lang/String; = "db"

.field public static final HANDSFREE_BELOW_PITCH_HANDSFREE_DURATION:Ljava/lang/String; = "hft"

.field public static final HANDSFREE_BELOW_PITCH_HANDSFREE_ENGAGED:Ljava/lang/String; = "s"

.field public static final HANDSFREE_BELOW_PITCH_LOOKUP_DURATION:Ljava/lang/String; = "lut"

.field public static final HANDSFREE_DOUBLE_BLINK_DETECTED_DELTA_T:Ljava/lang/String; = "t"

.field public static final HANDSFREE_ITEM_DISPLACEMENT:Ljava/lang/String; = "idisp"

.field public static final HANDSFREE_ITEM_DISTANCE:Ljava/lang/String; = "idist"

.field public static final enum HANDSFREE_VOICE_ACTION:Lcom/google/glass/userevent/UserEventAction;

.field public static final HANGOUTS_BACKGROUNDED_STATUS_CONNECTING:Ljava/lang/String; = "1"

.field public static final HANGOUTS_BACKGROUNDED_STATUS_HANGING_OUT:Ljava/lang/String; = "3"

.field public static final HANGOUTS_BACKGROUNDED_STATUS_KEY:Ljava/lang/String; = "s"

.field public static final HANGOUTS_BACKGROUNDED_STATUS_UNKNOWN:Ljava/lang/String; = "0"

.field public static final HANGOUTS_BACKGROUNDED_STATUS_WAITING:Ljava/lang/String; = "2"

.field public static final enum HANGOUTS_BROUGHT_TO_FOREGROUND:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum HANGOUTS_CHAT_MESSAGE_RECEIVED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum HANGOUTS_CREATED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum HANGOUTS_ENDED:Lcom/google/glass/userevent/UserEventAction;

.field public static final HANGOUTS_ENDED_BACKGROUND_KEY:Ljava/lang/String; = "bg"

.field public static final HANGOUTS_ENDED_CONNECTIVITY_BLUETOOTH:Ljava/lang/String; = "1"

.field public static final HANGOUTS_ENDED_CONNECTIVITY_OTHER:Ljava/lang/String; = "3"

.field public static final HANGOUTS_ENDED_CONNECTIVITY_WIFI:Ljava/lang/String; = "2"

.field public static final HANGOUTS_ENDED_ERROR_KEY:Ljava/lang/String; = "e"

.field public static final HANGOUTS_ENDED_EXPERT_KEY:Ljava/lang/String; = "ex"

.field public static final enum HANGOUTS_ENDED_FROM_ACTIVE_CARD:Lcom/google/glass/userevent/UserEventAction;

.field public static final HANGOUTS_ENDED_LOG_ACTUAL_ENC_BITRATE_KEY:Ljava/lang/String; = "abr"

.field public static final HANGOUTS_ENDED_LOG_CONNECTIVITY_KEY:Ljava/lang/String; = "c"

.field public static final HANGOUTS_ENDED_LOG_DURATION_KEY:Ljava/lang/String; = "d"

.field public static final HANGOUTS_ENDED_LOG_FIRST_PARTICIPANT_JOIN_KEY:Ljava/lang/String; = "t"

.field public static final HANGOUTS_ENDED_LOG_INITIATION_KEY:Ljava/lang/String; = "i"

.field public static final HANGOUTS_ENDED_LOG_NUM_PARTICIPANTS_KEY:Ljava/lang/String; = "n"

.field public static final HANGOUTS_ENDED_LOG_OUTGOING_FRAMERATE_KEY:Ljava/lang/String; = "f"

.field public static final HANGOUTS_ENDED_LOG_PACKETS_LOST_KEY:Ljava/lang/String; = "l"

.field public static final HANGOUTS_ENDED_LOG_PACKETS_RETRANSMIT_KEY:Ljava/lang/String; = "rx"

.field public static final HANGOUTS_ENDED_LOG_PACKETS_SENT_KEY:Ljava/lang/String; = "o"

.field public static final HANGOUTS_ENDED_LOG_ROOM_KEY:Ljava/lang/String; = "r"

.field public static final HANGOUTS_ENDED_LOG_RTT_KEY:Ljava/lang/String; = "p"

.field public static final HANGOUTS_ENDED_LOG_RX_BANDWIDTH_KEY:Ljava/lang/String; = "x"

.field public static final HANGOUTS_ENDED_LOG_TARGET_ENC_BITRATE_KEY:Ljava/lang/String; = "tbr"

.field public static final HANGOUTS_ENDED_LOG_TX_BANDWIDTH_KEY:Ljava/lang/String; = "s"

.field public static final HANGOUTS_ENDED_LOG_TX_BITRATE_KEY:Ljava/lang/String; = "b"

.field public static final HANGOUTS_ENDED_NO_ERROR:Ljava/lang/String; = "-1"

.field public static final HANGOUTS_ENDED_ROOM_CREATED:Ljava/lang/String; = "0"

.field public static final HANGOUTS_ENDED_ROOM_EXISTING:Ljava/lang/String; = "1"

.field public static final enum HANGOUTS_ENTERED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum HANGOUTS_ENTERED_FROM_ACTIVE_CARD:Lcom/google/glass/userevent/UserEventAction;

.field public static final HANGOUTS_ENTERED_TIMELINE:Ljava/lang/String; = "2"

.field public static final HANGOUTS_ENTERED_VOICE:Ljava/lang/String; = "1"

.field public static final enum HANGOUTS_ERROR:Lcom/google/glass/userevent/UserEventAction;

.field public static final HANGOUTS_ERROR_FAILURE:Ljava/lang/String; = "3"

.field public static final HANGOUTS_ERROR_MEETING_ENTER:Ljava/lang/String; = "1"

.field public static final HANGOUTS_ERROR_SIGNIN:Ljava/lang/String; = "2"

.field public static final HANGOUTS_FOREGROUNDED_CAUSE_ACTIVE_CARD:Ljava/lang/String; = "2"

.field public static final HANGOUTS_FOREGROUNDED_CAUSE_KEY:Ljava/lang/String; = "c"

.field public static final HANGOUTS_FOREGROUNDED_CAUSE_PARTICIPANT_JOINED:Ljava/lang/String; = "1"

.field public static final HANGOUTS_FOREGROUNDED_CAUSE_UNKNOWN:Ljava/lang/String; = "0"

.field public static final enum HANGOUTS_INCOMING_HANGOUT:Lcom/google/glass/userevent/UserEventAction;

.field public static final HANGOUTS_INCOMING_HANGOUT_ACTION_ANSWERED:Ljava/lang/String; = "0"

.field public static final HANGOUTS_INCOMING_HANGOUT_ACTION_IGNORED:Ljava/lang/String; = "2"

.field public static final HANGOUTS_INCOMING_HANGOUT_ACTION_KEY:Ljava/lang/String; = "a"

.field public static final HANGOUTS_INCOMING_HANGOUT_ACTION_REJECTED:Ljava/lang/String; = "1"

.field public static final HANGOUTS_INCOMING_HANGOUT_SOURCE_KEY:Ljava/lang/String; = "s"

.field public static final HANGOUTS_INCOMING_HANGOUT_TYPE_KEY:Ljava/lang/String; = "t"

.field public static final enum HANGOUTS_INVITE:Lcom/google/glass/userevent/UserEventAction;

.field public static final HANGOUTS_INVITE_CIRCLE:Ljava/lang/String; = "2"

.field public static final HANGOUTS_INVITE_PERSON:Ljava/lang/String; = "1"

.field public static final enum HANGOUTS_MUTE_MY_AUDIO:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum HANGOUTS_MUTE_MY_VIDEO:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum HANGOUTS_MUTE_REMOTE:Lcom/google/glass/userevent/UserEventAction;

.field public static final HANGOUTS_PARTICIPANT_STYLE_PHOTO_AND_NAME:Ljava/lang/String; = "1"

.field public static final HANGOUTS_PARTICIPANT_STYLE_PHOTO_ONLY:Ljava/lang/String; = "2"

.field public static final HANGOUTS_PARTICIPANT_STYLE_VIDEO_AND_NAME:Ljava/lang/String; = "3"

.field public static final HANGOUTS_PARTICIPANT_STYLE_VIDEO_ONLY:Ljava/lang/String; = "4"

.field public static final enum HANGOUTS_SENT_TO_BACKGROUND:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum HANGOUTS_SET_PARTICIPANT_AUTO:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum HANGOUTS_SET_PARTICIPANT_SPECIFIC:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum HANGOUTS_UNMUTE_MY_AUDIO:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum HANGOUTS_UNMUTE_MY_VIDEO:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum HANGOUTS_WAITING_SCREEN_DISMISSED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum HEADSET_PLUG:Lcom/google/glass/userevent/UserEventAction;

.field public static final HEADSET_PLUG_MONO_OR_STEREO:Ljava/lang/String; = "ms"

.field public static final HEADSET_PLUG_NAME:Ljava/lang/String; = "n"

.field public static final HEADSET_PLUG_STATE:Ljava/lang/String; = "s"

.field public static final enum HEAD_GESTURES_HANDSFREE_ABOVE_PITCH:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum HEAD_GESTURES_HANDSFREE_BELOW_PITCH:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum HEAD_GESTURES_HANDSFREE_DOUBLE_BLINK:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum HEAD_GESTURES_HEAD_WAKE_ANGLE_SETTING:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum HEAD_GESTURES_HEAD_WAKE_DISABLED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum HEAD_GESTURES_HEAD_WAKE_ENABLED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum HEAD_GESTURES_PITCH_ON_TAP_TO_WAKE:Lcom/google/glass/userevent/UserEventAction;

.field public static final HEAD_WAKE_ENABLED:Ljava/lang/String; = "e"

.field public static final HEAD_WAKE_PITCH_ANGLE:Ljava/lang/String; = "w"

.field public static final enum HINGE:Lcom/google/glass/userevent/UserEventAction;

.field public static final HINGE_PARAMS:[Ljava/lang/String;

.field public static final enum HOME_ACTIVATED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum HOME_DISMISSED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum HOME_SCREEN_TIP:Lcom/google/glass/userevent/UserEventAction;

.field public static final HOME_SCREEN_TIP_BATTERY_LOW:Ljava/lang/String; = "6"

.field public static final HOME_SCREEN_TIP_CHECK_MY_GLASS:Ljava/lang/String; = "3"

.field public static final HOME_SCREEN_TIP_DEVICE_HOT:Ljava/lang/String; = "7"

.field public static final HOME_SCREEN_TIP_IN_CALL:Ljava/lang/String; = "1"

.field public static final HOME_SCREEN_TIP_IN_HANGOUT:Ljava/lang/String; = "2"

.field public static final HOME_SCREEN_TIP_STORAGE_FULL:Ljava/lang/String; = "4"

.field public static final HOME_SCREEN_TIP_STORAGE_LOW:Ljava/lang/String; = "5"

.field public static final enum IMAGE_DOWNLOAD_LATENCY:Lcom/google/glass/userevent/UserEventAction;

.field public static final IMAGE_DOWNLOAD_LATENCY_BYTES:Ljava/lang/String; = "b"

.field public static final IMAGE_DOWNLOAD_LATENCY_TIME:Ljava/lang/String; = "l"

.field public static final enum INPUT_BLOCKED:Lcom/google/glass/userevent/UserEventAction;

.field public static final KEYBOARD_TEXT_ENTRY_CANCELED_COMPANION:Ljava/lang/String; = "3"

.field public static final enum KEYBOARD_TEXT_ENTRY_FINISHED:Lcom/google/glass/userevent/UserEventAction;

.field public static final KEYBOARD_TEXT_ENTRY_FINISH_METHOD:Ljava/lang/String; = "finish"

.field public static final enum KEYBOARD_TEXT_ENTRY_STARTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final KEYBOARD_TEXT_ENTRY_STARTED_PHONE_SCREEN_ON:Ljava/lang/String; = "2"

.field public static final KEYBOARD_TEXT_ENTRY_STARTED_TAP:Ljava/lang/String; = "1"

.field public static final KEYBOARD_TEXT_ENTRY_START_METHOD:Ljava/lang/String; = "start"

.field public static final KEYBOARD_TEXT_ENTRY_SUBMITTED_COMPANION:Ljava/lang/String; = "2"

.field public static final KEYBOARD_TEXT_ENTRY_SUBMITTED_GLASS:Ljava/lang/String; = "1"

.field public static final enum KEYBOARD_TEXT_ENTRY_TIP_SHOWN:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum LIVE_CARD_DUPLICATE_LISTENER:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum LOCATION_MANAGER_HELPER_NO_LOCATION:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum LOCATION_MANAGER_HELPER_RECEIVED_LOCATION:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum LOCATION_SYNC:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum LOCATION_SYNC_FAILED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum LOCATION_SYNC_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum LOCKSCREEN_ACTIVATED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum LOCKSCREEN_DISABLED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum LOCKSCREEN_PATTERN_SET:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum LOCKSCREEN_PERMANENTLY_LOCKED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum LOCKSCREEN_RECOVERY_SYNC_FAILED:Lcom/google/glass/userevent/UserEventAction;

.field public static final LOCKSCREEN_RECOVERY_SYNC_FAILURE_REASON:Ljava/lang/String; = "r"

.field public static final enum LOCKSCREEN_RECOVERY_SYNC_SUCCEEDED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum LOCKSCREEN_RESCUE_UNLOCKED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum LOCKSCREEN_UNLOCKED:Lcom/google/glass/userevent/UserEventAction;

.field public static final LOCKSCREEN_UNLOCKED_PARAMS:[Ljava/lang/String;

.field public static final enum LOOK_AT_SCREEN_CALIBRATION_FAILURE:Lcom/google/glass/userevent/UserEventAction;

.field public static final LOOK_AT_SCREEN_CALIBRATION_REASON:Ljava/lang/String; = "r"

.field public static final enum LOOK_AT_SCREEN_CALIBRATION_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum LOOK_AT_SCREEN_DISABLED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum LOOK_AT_SCREEN_ENABLED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum LOOK_AT_SCREEN_NOTIFICATION_GLANCE:Lcom/google/glass/userevent/UserEventAction;

.field public static final LOOK_AT_SCREEN_REASON_CALIBRATION:Ljava/lang/String; = "0"

.field public static final LOOK_AT_SCREEN_REASON_PRACTICE:Ljava/lang/String; = "1"

.field public static final enum LOW_MEMORY:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum MAIN_MENU_ITEMS_LIST:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum MAIN_MENU_ITEM_TRIGGERED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum MANUAL_CLEAR_SYNCED_MEDIA_REQUESTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum MANUAL_SYNC_ALL_REQUESTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum MANUAL_SYNC_PHOTOS_REQUESTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum MAP_RENDER_CACHE_REQUEST:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum MAP_RENDER_CACHE_SIZE:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum MAP_RENDER_ERROR:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum MAP_RENDER_REQUEST:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum MAP_RENDER_REQUEST_ERROR:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum MAP_RENDER_REQUEST_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum MENU_OPENING_DELAY:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum MESSAGE_REPLY_NO_COMPANION:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum MIRROR_COMMAND_DISAMBIGUATION_SHOWN:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum MIRROR_COMMAND_INVOKED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum MUSIC_AUTOPLAY_RESULT:Lcom/google/glass/userevent/UserEventAction;

.field public static final MUSIC_AUTOPLAY_RESULT_AUTOPLAYED:Ljava/lang/String; = "0"

.field public static final MUSIC_AUTOPLAY_RESULT_AUTOPLAY_CANCELED:Ljava/lang/String; = "1"

.field public static final MUSIC_AUTOPLAY_RESULT_KEY:Ljava/lang/String; = "a"

.field public static final enum MUSIC_ERROR:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum MUSIC_GLASS_ERROR:Lcom/google/glass/userevent/UserEventAction;

.field public static final MUSIC_GLASS_ERROR_CAUSE_KEY:Ljava/lang/String; = "c"

.field public static final MUSIC_INITIATED_AUTOPLAY:Ljava/lang/String; = "0"

.field public static final MUSIC_INITIATED_KEY:Ljava/lang/String; = "i"

.field public static final MUSIC_INITIATED_NOW_PLAYING:Ljava/lang/String; = "2"

.field public static final MUSIC_INITIATED_RESULTS:Ljava/lang/String; = "1"

.field public static final MUSIC_INITIATED_TIMELINE:Ljava/lang/String; = "3"

.field public static final enum MUSIC_NEXT_TRACK:Lcom/google/glass/userevent/UserEventAction;

.field public static final MUSIC_NOW_PLAYING_ACTION_DISMISSED:Ljava/lang/String; = "0"

.field public static final MUSIC_NOW_PLAYING_ACTION_INTERACTED:Ljava/lang/String; = "2"

.field public static final MUSIC_NOW_PLAYING_ACTION_KEY:Ljava/lang/String; = "a"

.field public static final MUSIC_NOW_PLAYING_ACTION_SWIPED_AWAY:Ljava/lang/String; = "1"

.field public static final MUSIC_NOW_PLAYING_TIME_KEY:Ljava/lang/String; = "t"

.field public static final enum MUSIC_NOW_PLAYING_USED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum MUSIC_PAUSE:Lcom/google/glass/userevent/UserEventAction;

.field public static final MUSIC_PAUSE_DURATION_PLAYED_KEY:Ljava/lang/String; = "t"

.field public static final MUSIC_PAUSE_NUM_TRACKS_PLAYED_KEY:Ljava/lang/String; = "n"

.field public static final enum MUSIC_PLAY:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum MUSIC_PLAY_TIME:Lcom/google/glass/userevent/UserEventAction;

.field public static final MUSIC_PLAY_TIME_DURATION_KEY:Ljava/lang/String; = "t"

.field public static final MUSIC_PREVIOUS_ACTION_KEY:Ljava/lang/String; = "a"

.field public static final enum MUSIC_PREVIOUS_TRACK:Lcom/google/glass/userevent/UserEventAction;

.field public static final MUSIC_RADIO_INITIATION_KEY:Ljava/lang/String; = "i"

.field public static final MUSIC_RADIO_INITIATION_NOW_PLAYING:Ljava/lang/String; = "0"

.field public static final MUSIC_RADIO_INITIATION_RESULTS:Ljava/lang/String; = "1"

.field public static final MUSIC_RADIO_SEED_ALBUM:Ljava/lang/String; = "1"

.field public static final MUSIC_RADIO_SEED_ARTIST:Ljava/lang/String; = "0"

.field public static final MUSIC_RADIO_SEED_GENERIC:Ljava/lang/String; = "3"

.field public static final MUSIC_RADIO_SEED_IFL:Ljava/lang/String; = "4"

.field public static final MUSIC_RADIO_SEED_KEY:Ljava/lang/String; = "s"

.field public static final MUSIC_RADIO_SEED_TRACK:Ljava/lang/String; = "2"

.field public static final enum MUSIC_RADIO_STATION_PLAYED:Lcom/google/glass/userevent/UserEventAction;

.field public static final MUSIC_RESULTS_ACTIVITY_INPUT_TYPE_KEY:Ljava/lang/String; = "i"

.field public static final enum MUSIC_RESULTS_SHOWN:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum MUSIC_STOP:Lcom/google/glass/userevent/UserEventAction;

.field public static final MUSIC_TIME_SINCE_PREVIOUS_ACTION_KEY:Ljava/lang/String; = "l"

.field public static final enum MUSIC_TRACK_LOADED:Lcom/google/glass/userevent/UserEventAction;

.field public static final MUSIC_TRACK_LOADED_RESULT_ERROR:Ljava/lang/String; = "1"

.field public static final MUSIC_TRACK_LOADED_RESULT_KEY:Ljava/lang/String; = "r"

.field public static final MUSIC_TRACK_LOADED_RESULT_SUCCESS:Ljava/lang/String; = "0"

.field public static final MUSIC_TRACK_LOADED_TIME_LOADING_KEY:Ljava/lang/String; = "t"

.field private static final NAME_TO_ACTION:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/userevent/UserEventAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NATIVE_COMMAND_DISAMBIGUATION_SHOWN:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum NATIVE_COMMAND_INVOKED:Lcom/google/glass/userevent/UserEventAction;

.field public static final NATIVE_COMMAND_LITERAL_KEY:Ljava/lang/String; = "l"

.field public static final NATIVE_COMMAND_NEEDS_INPUT_KEY:Ljava/lang/String; = "i"

.field public static final NATIVE_COMMAND_PACKAGE_NAME_KEY:Ljava/lang/String; = "p"

.field public static final enum NATIVE_CRASH:Lcom/google/glass/userevent/UserEventAction;

.field public static final NATIVE_CRASH_PARAMS:[Ljava/lang/String;

.field public static final enum NATIVE_CRASH_REGISTERS_ARM:Lcom/google/glass/userevent/UserEventAction;

.field public static final NATIVE_CRASH_REGISTERS_ARM_PARAMS:[Ljava/lang/String;

.field public static final enum NAVIGATION_END:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum NAVIGATION_ERROR:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum NAVIGATION_FROM_TIMELINE:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum NAVIGATION_GPS_LOCATION_REQUEST:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum NAVIGATION_GPS_LOCATION_SWITCH:Lcom/google/glass/userevent/UserEventAction;

.field public static final NAVIGATION_LOCATION_ACCURACY:Ljava/lang/String; = "a"

.field public static final enum NAVIGATION_LOCATION_LATENCY:Lcom/google/glass/userevent/UserEventAction;

.field public static final NAVIGATION_LOCATION_REQUEST_DURATION:Ljava/lang/String; = "d"

.field public static final NAVIGATION_LOCATION_REQUEST_LATENCY:Ljava/lang/String; = "l"

.field public static final NAVIGATION_LOCATION_SOURCE:Ljava/lang/String; = "s"

.field public static final NAVIGATION_LOCATION_SWITCH_FROM:Ljava/lang/String; = "f"

.field public static final NAVIGATION_LOCATION_SWITCH_TO:Ljava/lang/String; = "t"

.field public static final enum NAVIGATION_START:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum NAVIGATION_TIMED_OUT_LOCATION:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum NAVIGATION_TIMED_OUT_NETWORK:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum NOTIFICATION_ATTACHMENT_PRELOAD:Lcom/google/glass/userevent/UserEventAction;

.field public static final NOTIFICATION_ATTACHMENT_PRELOAD_TIME:Ljava/lang/String; = "t"

.field public static final NOTIFICATION_ATTACHMENT_PRELOAD_TIMEOUT:Ljava/lang/String; = "e"

.field public static final enum NOTIFICATION_DATA_LOAD:Lcom/google/glass/userevent/UserEventAction;

.field public static final NOTIFICATION_DATA_LOAD_IS_BUNDLE:Ljava/lang/String; = "b"

.field public static final NOTIFICATION_DATA_LOAD_TIME:Ljava/lang/String; = "t"

.field public static final enum NOTIFICATION_HTML_PRELOAD:Lcom/google/glass/userevent/UserEventAction;

.field public static final NOTIFICATION_HTML_PRELOAD_TIME:Ljava/lang/String; = "t"

.field public static final NOTIFICATION_HTML_PRELOAD_TIMEOUT:Ljava/lang/String; = "e"

.field public static final enum NOTIFICATION_SHOW_REQUESTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final NOTIFICATION_SHOW_REQUESTED_FALSE:Ljava/lang/String; = "0"

.field public static final NOTIFICATION_SHOW_REQUESTED_KEY:Ljava/lang/String; = "n"

.field public static final NOTIFICATION_SHOW_REQUESTED_TRUE:Ljava/lang/String; = "1"

.field public static final enum NOTIFICATION_VIEWED_FROM_SCREEN_OFF:Lcom/google/glass/userevent/UserEventAction;

.field public static final NOTIFICATION_VIEWED_FROM_SCREEN_OFF_PARAMS:[Ljava/lang/String;

.field public static final enum NOTIFICATION_WHILE_SCREEN_OFF:Lcom/google/glass/userevent/UserEventAction;

.field public static final OLD_ITEM_PURGER_DURATION:Ljava/lang/String; = "l"

.field public static final enum OLD_ITEM_PURGER_FINISHED:Lcom/google/glass/userevent/UserEventAction;

.field public static final OOBE_ANDROID_CHOSEN:Ljava/lang/String; = "a"

.field public static final enum OOBE_CHECKLIST_DIMISS:Lcom/google/glass/userevent/UserEventAction;

.field public static final OOBE_CHECKLIST_ITEM_ADDCONTACTS:Ljava/lang/String; = "c"

.field public static final OOBE_CHECKLIST_ITEM_BLUETOOTH:Ljava/lang/String; = "b"

.field public static final OOBE_CHECKLIST_ITEM_DONDOFF:Ljava/lang/String; = "d"

.field public static final OOBE_CHECKLIST_ITEM_GLASSWARE:Ljava/lang/String; = "g"

.field public static final OOBE_CHECKLIST_ITEM_KEY:Ljava/lang/String; = "i"

.field public static final enum OOBE_CHECKLIST_ITEM_SELECTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final OOBE_CHECKLIST_ITEM_WIFI:Ljava/lang/String; = "w"

.field public static final OOBE_CHECKLIST_ITEM_WINK:Ljava/lang/String; = "k"

.field public static final enum OOBE_CHECKLIST_OPENED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum OOBE_CHECKLIST_TIMEOUT:Lcom/google/glass/userevent/UserEventAction;

.field public static final OOBE_COMPUTER_CHOSEN:Ljava/lang/String; = "c"

.field public static final OOBE_IPHONE_CHOSEN:Ljava/lang/String; = "i"

.field public static final enum OOBE_PAIRING_METHOD_CHOSEN:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum OOBE_SETUP_ERROR:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum OOBE_SIGNED_IN_SUCCESSFUL:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum OOBE_TUTORIAL_PASSED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum OOBE_TUTORIAL_STARTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum OTA_SUCCESS_STATE:Lcom/google/glass/userevent/UserEventAction;

.field public static final OTA_SUCCESS_STATE_FAILURE:Ljava/lang/String; = "0"

.field public static final OTA_SUCCESS_STATE_KEY:Ljava/lang/String; = "s"

.field public static final OTA_SUCCESS_STATE_SUCCESSFUL:Ljava/lang/String; = "1"

.field public static final enum OTA_TRIGGER:Lcom/google/glass/userevent/UserEventAction;

.field public static final OTA_TRIGGER_ACTION_KEY:Ljava/lang/String; = "a"

.field public static final OTA_TRIGGER_AUTOMATIC:Ljava/lang/String; = "au"

.field public static final OTA_TRIGGER_USER_DIALOG:Ljava/lang/String; = "ud"

.field public static final OTA_TRIGGER_USER_MENU:Ljava/lang/String; = "um"

.field public static final enum PACKAGE_INSTALLED:Lcom/google/glass/userevent/UserEventAction;

.field public static final PACKAGE_INSTALLED_PARAMS:[Ljava/lang/String;

.field public static final enum PEOPLE_GRID_FILTERED_TIMELINE:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum PEOPLE_GRID_ITEM_SELECTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum PEOPLE_GRID_SEND_MESSAGE:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum PEOPLE_GRID_START:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum PHONE_CALL:Lcom/google/glass/userevent/UserEventAction;

.field public static final PHONE_CALL_ACTION:Ljava/lang/String; = "a"

.field public static final PHONE_CALL_ADJUST_VOLUME:Ljava/lang/String; = "2"

.field public static final PHONE_CALL_CONNECTED:Ljava/lang/String; = "6"

.field public static final PHONE_CALL_DURATION:Ljava/lang/String; = "12"

.field public static final PHONE_CALL_DURATION_KEY:Ljava/lang/String; = "t"

.field public static final PHONE_CALL_ERROR:Ljava/lang/String; = "8"

.field public static final PHONE_CALL_INCOMING_CALL_ACCEPTED:Ljava/lang/String; = "1"

.field public static final PHONE_CALL_INCOMING_CALL_ACCEPTED_ON_GLASS:Ljava/lang/String; = "0"

.field public static final PHONE_CALL_INCOMING_CALL_IGNORED:Ljava/lang/String; = "3"

.field public static final PHONE_CALL_INCOMING_CALL_REJECTED:Ljava/lang/String; = "2"

.field public static final PHONE_CALL_INCOMING_CALL_REJECTED_ON_GLASS:Ljava/lang/String; = "1"

.field public static final PHONE_CALL_MISSED_CALL:Ljava/lang/String; = "4"

.field public static final PHONE_CALL_MUTE:Ljava/lang/String; = "3"

.field public static final PHONE_CALL_MUTED:Ljava/lang/String; = "7"

.field public static final PHONE_CALL_OUTGOING_CALL:Ljava/lang/String; = "5"

.field public static final PHONE_CALL_OUTGOING_INTERNATIONAL:Ljava/lang/String; = "10"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PHONE_CALL_OUTGOING_NATIONAL:Ljava/lang/String; = "9"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PHONE_CALL_OUTGOING_REGION:Ljava/lang/String; = "13"

.field public static final PHONE_CALL_OUTGOING_REGION_INTERNATIONAL:Ljava/lang/String; = "i"

.field public static final PHONE_CALL_OUTGOING_REGION_KEY:Ljava/lang/String; = "r"

.field public static final PHONE_CALL_OUTGOING_REGION_NATIONAL:Ljava/lang/String; = "n"

.field public static final PHONE_CALL_OUTGOING_REGION_UNKNOWN:Ljava/lang/String; = "u"

.field public static final PHONE_CALL_OUTGOING_UNKNOWN:Ljava/lang/String; = "11"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PHONE_CALL_UI_ACTION:Ljava/lang/String; = "u"

.field public static final enum PICTURE_MENU_DELAY:Lcom/google/glass/userevent/UserEventAction;

.field public static final PICTURE_MENU_DELAY_TIME:Ljava/lang/String; = "t"

.field public static final PITCH_ON_TAP_TO_WAKE:Ljava/lang/String; = "p"

.field public static final PLAY_VIDEO_END_DURATION:Ljava/lang/String; = "d"

.field public static final PLAY_VIDEO_END_SCRUB_BACKWARD:Ljava/lang/String; = "b"

.field public static final PLAY_VIDEO_END_SCRUB_FORWARD:Ljava/lang/String; = "f"

.field public static final PLAY_VIDEO_END_SOURCE:Ljava/lang/String; = "s"

.field public static final PLAY_VIDEO_END_TOGGLE:Ljava/lang/String; = "t"

.field public static final PLAY_VIDEO_END_WATCH_DURATION:Ljava/lang/String; = "w"

.field public static final enum PLAY_VIDEO_ERROR:Lcom/google/glass/userevent/UserEventAction;

.field public static final PLAY_VIDEO_ERROR_DURATION:Ljava/lang/String; = "d"

.field public static final enum PLAY_VIDEO_START:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum PLAY_VIDEO_STOP:Lcom/google/glass/userevent/UserEventAction;

.field public static final PRD_BYTES_REQUEST:Ljava/lang/String; = "breq"

.field public static final PRD_BYTES_RESPONSE:Ljava/lang/String; = "bres"

.field public static final PRD_ERROR:Ljava/lang/String; = "e"

.field public static final PRD_LATENCY_MS:Ljava/lang/String; = "l"

.field public static final PRD_PATH:Ljava/lang/String; = "p"

.field public static final PRD_REQUESTS:Ljava/lang/String; = "r"

.field public static final enum PRESS_TO_SEARCH_DISMISSED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum PROTO_REQUEST_DISPATCHER_BATCH:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum PROTO_REQUEST_DISPATCHER_REQUEST_SIZE:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum RECORD_VIDEO_END:Lcom/google/glass/userevent/UserEventAction;

.field public static final RECORD_VIDEO_END_EXTENDED:Ljava/lang/String; = "e"

.field public static final RECORD_VIDEO_END_LENGTH:Ljava/lang/String; = "l"

.field public static final enum RECORD_VIDEO_START:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum RECORD_VIDEO_THUMBNAIL:Lcom/google/glass/userevent/UserEventAction;

.field public static final RECORD_VIDEO_THUMBNAIL_TIME:Ljava/lang/String; = "t"

.field public static final enum RECORD_VIDEO_TRACK_INFO:Lcom/google/glass/userevent/UserEventAction;

.field public static final RECORD_VIDEO_TRACK_INFO_PARAMS:[Ljava/lang/String;

.field public static final enum REPLY_ALL_COMPLETED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum REPLY_ALL_INITIATED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum REPLY_COMPLETED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum REPLY_INITIATED:Lcom/google/glass/userevent/UserEventAction;

.field public static final RESUMABLE_UPLOADER_PAYLOAD_IDENTIFIER:Ljava/lang/String; = "m"

.field public static final enum RESUMABLE_UPLOADER_UPLOAD_FATAL_ERROR:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum RESUMABLE_UPLOADER_UPLOAD_FINISHED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum RESUMABLE_UPLOADER_UPLOAD_RECOVERABLE_ERROR:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum RESUMABLE_UPLOADER_UPLOAD_RESUMED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum RESUMABLE_UPLOADER_UPLOAD_STARTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum RETRY_REPLY:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum SCREEN_OFF_TWO_SWIPE_DOWN:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum SCREEN_ON:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum SCREEN_ON_DURATION:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum SEARCH_FROM_QUERY_GOT_RESULTS:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum SEARCH_FROM_QUERY_NO_RESULTS:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum SEARCH_FROM_QUERY_ON_ERROR:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum SEARCH_FROM_QUERY_SENT_REQUEST:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum SEARCH_FROM_QUERY_STALE_RESPONSE:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum SELECT_REFINEMENT:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum SELECT_TRIP:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum SEND_MESSAGE_COMPLETED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum SEND_MESSAGE_INCLUDES_PHOTO:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum SEND_MESSAGE_INITIATED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum SESSION_MANAGER_SESSION_BROKEN:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum SESSION_MANAGER_SESSION_ESTABLISHED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum SESSION_MANAGER_SESSION_FINISHED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum SESSION_MANAGER_SESSION_INVALID:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum SESSION_MANAGER_SESSION_NEW:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum SESSION_MANAGER_SESSION_VALID:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum SETUP_ACCOUNT_FAILED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum SETUP_BARCODE_SCANNED:Lcom/google/glass/userevent/UserEventAction;

.field public static final SETUP_ERROR_CODE:Ljava/lang/String; = "e"

.field public static final SETUP_ERROR_CODE_NETWORK_ERROR:Ljava/lang/String; = "n"

.field public static final SETUP_ERROR_CODE_SCAN_QR_CODE_ERROR:Ljava/lang/String; = "q"

.field public static final SETUP_ERROR_CODE_SETUP_FATAL_ERROR:Ljava/lang/String; = "a"

.field public static final SETUP_ERROR_CODE_SETUP_SIGN_IN_ERROR:Ljava/lang/String; = "c"

.field public static final SETUP_ERROR_CODE_SETUP_STRING_INCOMPLETE:Ljava/lang/String; = "s"

.field public static final SETUP_ERROR_CODE_UPDATE_CREDENTIAL_ERROR:Ljava/lang/String; = "r"

.field public static final SETUP_ERROR_CODE_WIFI_ERROR:Ljava/lang/String; = "w"

.field public static final SETUP_METHOD:Ljava/lang/String; = "m"

.field public static final enum SETUP_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

.field public static final SETUP_VIA_COMPANION:Ljava/lang/String; = "c"

.field public static final SETUP_VIA_WEBSITE:Ljava/lang/String; = "w"

.field public static final SHARED_ANNOTATED:Ljava/lang/String; = "a"

.field public static final SHARED_ANNOTATED_FALSE:Ljava/lang/String; = "0"

.field public static final SHARED_ANNOTATED_TRUE:Ljava/lang/String; = "1"

.field public static final SHARED_ORIGIN:Ljava/lang/String; = "o"

.field public static final SHARED_ORIGIN_POSTVIEW:Ljava/lang/String; = "p"

.field public static final SHARED_ORIGIN_SEARCH:Ljava/lang/String; = "s"

.field public static final SHARED_ORIGIN_TIMELINE:Ljava/lang/String; = "t"

.field public static final SHARED_SOURCE:Ljava/lang/String; = "s"

.field public static final SHARED_TYPE:Ljava/lang/String; = "t"

.field public static final SHARED_TYPE_PHOTO:Ljava/lang/String; = "1"

.field public static final SHARED_TYPE_UNKNOWN:Ljava/lang/String; = "0"

.field public static final SHARED_TYPE_VIDEO:Ljava/lang/String; = "2"

.field public static final enum SHOW_ROUTE_OVERVIEW:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum SHOW_STEPS:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum SHUTDOWN_IN_SETUP:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum SHUTDOWN_REBOOT:Lcom/google/glass/userevent/UserEventAction;

.field public static final SHUTDOWN_REBOOT_PARAMS:[Ljava/lang/String;

.field public static final enum SOUND_SEARCH_RESULT:Lcom/google/glass/userevent/UserEventAction;

.field private static final SPLITTER:Lcom/google/common/base/Splitter$MapSplitter;

.field public static final enum START_LISTENING_DELAY:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum SYSTEM_SERVER_EXIT:Lcom/google/glass/userevent/UserEventAction;

.field public static final SYSTEM_SERVER_EXIT_PARAMS:[Ljava/lang/String;

.field public static final enum TIMED_ACTIVITY:Lcom/google/glass/userevent/UserEventAction;

.field public static final TIMED_ACTIVITY_CLASS:Ljava/lang/String; = "c"

.field public static final TIMED_ACTIVITY_CREATE:Ljava/lang/String; = "create"

.field public static final TIMED_ACTIVITY_DESTROY:Ljava/lang/String; = "destroy"

.field public static final TIMED_ACTIVITY_METHOD:Ljava/lang/String; = "m"

.field public static final TIMED_ACTIVITY_PAUSE:Ljava/lang/String; = "pause"

.field public static final TIMED_ACTIVITY_RESTART:Ljava/lang/String; = "restart"

.field public static final TIMED_ACTIVITY_RESUME:Ljava/lang/String; = "resume"

.field public static final TIMED_ACTIVITY_START:Ljava/lang/String; = "start"

.field public static final TIMED_ACTIVITY_STOP:Ljava/lang/String; = "stop"

.field public static final TIMED_ACTIVITY_TIME:Ljava/lang/String; = "t"

.field public static final enum TIMED_BROADCAST_RECEIVER:Lcom/google/glass/userevent/UserEventAction;

.field public static final TIMED_BROADCAST_RECEIVER_ACTION:Ljava/lang/String; = "a"

.field public static final TIMED_BROADCAST_RECEIVER_CLASS:Ljava/lang/String; = "c"

.field public static final TIMED_BROADCAST_RECEIVER_TIME:Ljava/lang/String; = "t"

.field public static final enum TIMELINE_CARD_LINGER:Lcom/google/glass/userevent/UserEventAction;

.field public static final TIMELINE_CARD_LINGER_ATTRIBUTION:Ljava/lang/String; = "a"

.field public static final TIMELINE_CARD_LINGER_REASON:Ljava/lang/String; = "r"

.field public static final TIMELINE_CARD_LINGER_REASON_STOPPED:Ljava/lang/String; = "1"

.field public static final TIMELINE_CARD_LINGER_REASON_SWIPED_AWAY:Ljava/lang/String; = "0"

.field public static final TIMELINE_CARD_LINGER_SOURCE:Ljava/lang/String; = "s"

.field public static final TIMELINE_CARD_LINGER_SOURCE_CLOCK:Ljava/lang/String; = "clock"

.field public static final TIMELINE_CARD_LINGER_TIME:Ljava/lang/String; = "t"

.field public static final enum TIMELINE_DOWNSTREAM_SYNC_BACKOFF:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum TIMELINE_DOWNSTREAM_SYNC_FINISHED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum TIMELINE_DOWNSTREAM_SYNC_ITEM:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum TIMELINE_DOWNSTREAM_SYNC_STARTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum TIMELINE_ITEM_INSERTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum TIMELINE_ITEM_SHARED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum TIMELINE_ITEM_SHARE_STARTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum TIMELINE_NAVIGATION:Lcom/google/glass/userevent/UserEventAction;

.field public static final TIMELINE_NAVIGATION_DIST_FROM_CLOCK:Ljava/lang/String; = "d"

.field public static final TIMELINE_NAVIGATION_IS_NOTIFICATION:Ljava/lang/String; = "in"

.field public static final TIMELINE_NAVIGATION_NUM_ITEMS:Ljava/lang/String; = "n"

.field public static final TIMELINE_SYNC_BYTES:Ljava/lang/String; = "b"

.field public static final TIMELINE_SYNC_DURATION:Ljava/lang/String; = "l"

.field public static final enum TIMELINE_SYNC_FINISHED:Lcom/google/glass/userevent/UserEventAction;

.field public static final TIMELINE_SYNC_IS_COMPANION_WIFI_CONNECTED:Ljava/lang/String; = "cw"

.field public static final TIMELINE_SYNC_IS_POWERED:Ljava/lang/String; = "p"

.field public static final TIMELINE_SYNC_IS_SCREEN_ON:Ljava/lang/String; = "s"

.field public static final TIMELINE_SYNC_IS_WIFI_CONNECTED:Ljava/lang/String; = "w"

.field public static final TIMELINE_SYNC_ITEM_NUM:Ljava/lang/String; = "n"

.field public static final TIMELINE_SYNC_ITEM_SOURCE:Ljava/lang/String; = "is"

.field public static final enum TIMELINE_SYNC_TRIGGERED_WITH_NO_CONNECTIVITY:Lcom/google/glass/userevent/UserEventAction;

.field public static final TIMELINE_SYNC_VERSION:Ljava/lang/String; = "v"

.field public static final enum TIMELINE_UPSTREAM_SYNC_BACKOFF:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum TIMELINE_UPSTREAM_SYNC_FINISHED_SUCCESSFULLY:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum TIMELINE_UPSTREAM_SYNC_FINISHED_WITH_ERROR:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum TIMELINE_UPSTREAM_SYNC_STARTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final TOUCH_MENU_ENTITY_COMMAND_ADD_AN_EVENT:Ljava/lang/String; = "8"

.field public static final TOUCH_MENU_ENTITY_COMMAND_CALL:Ljava/lang/String; = "1"

.field public static final TOUCH_MENU_ENTITY_COMMAND_CHECK_ME_IN:Ljava/lang/String; = "7"

.field public static final TOUCH_MENU_ENTITY_COMMAND_EXPLORE_NEARBY:Ljava/lang/String; = "11"

.field public static final TOUCH_MENU_ENTITY_COMMAND_FIND_A_PLACE:Ljava/lang/String; = "10"

.field public static final TOUCH_MENU_ENTITY_COMMAND_FIND_A_RECIPE:Ljava/lang/String; = "9"

.field public static final TOUCH_MENU_ENTITY_COMMAND_KEY:Ljava/lang/String; = "command"

.field public static final TOUCH_MENU_ENTITY_COMMAND_LOG_A_MEAL:Ljava/lang/String; = "13"

.field public static final TOUCH_MENU_ENTITY_COMMAND_MESSAGE:Ljava/lang/String; = "2"

.field public static final TOUCH_MENU_ENTITY_COMMAND_POST_AN_UPDATE:Ljava/lang/String; = "6"

.field public static final TOUCH_MENU_ENTITY_COMMAND_POST_A_QUESTION:Ljava/lang/String; = "17"

.field public static final TOUCH_MENU_ENTITY_COMMAND_REMEMBER_WHERE_I_AM:Ljava/lang/String; = "14"

.field public static final TOUCH_MENU_ENTITY_COMMAND_REMIND_ME:Ljava/lang/String; = "16"

.field public static final TOUCH_MENU_ENTITY_COMMAND_SEND:Ljava/lang/String; = "12"

.field public static final TOUCH_MENU_ENTITY_COMMAND_SHARE:Ljava/lang/String; = "4"

.field public static final TOUCH_MENU_ENTITY_COMMAND_SHARE_MY_LOCATION:Ljava/lang/String; = "15"

.field public static final TOUCH_MENU_ENTITY_COMMAND_TAKE_A_NOTE:Ljava/lang/String; = "5"

.field public static final TOUCH_MENU_ENTITY_COMMAND_VIDEO_CALL:Ljava/lang/String; = "3"

.field public static final TOUCH_MENU_ENTITY_IS_PREPEND_FALSE:Ljava/lang/String; = "0"

.field public static final TOUCH_MENU_ENTITY_IS_PREPEND_KEY:Ljava/lang/String; = "pre"

.field public static final TOUCH_MENU_ENTITY_IS_PREPEND_TRUE:Ljava/lang/String; = "1"

.field public static final TOUCH_MENU_ENTITY_POSITION_KEY:Ljava/lang/String; = "pos"

.field public static final enum TOUCH_MENU_ENTITY_SELECTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum TRAVEL_MODE_CHANGE:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum TRIM_MEMORY:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum TWO_FINGER_ZOOM_OUT:Lcom/google/glass/userevent/UserEventAction;

.field public static final UI_PERFORMANCE_AVERAGE:Ljava/lang/String; = "a"

.field public static final UI_PERFORMANCE_COMPONENT_TAG:Ljava/lang/String; = "tag"

.field public static final UI_PERFORMANCE_COUNT:Ljava/lang/String; = "c"

.field public static final UI_PERFORMANCE_MAX:Ljava/lang/String; = "max"

.field public static final UI_PERFORMANCE_MIN:Ljava/lang/String; = "min"

.field public static final UI_PERFORMANCE_VARIANCE:Ljava/lang/String; = "v"

.field public static final enum UI_THREAD_QUEUE:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum UI_TIME_BETWEEN_RENDERS:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum UI_TIME_TO_RENDER:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum UPLOAD_SESSION_CANCELLED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum UPLOAD_SESSION_FINISHED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum UPLOAD_SESSION_SERVER_FAILED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum UPLOAD_SESSION_STARTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum USER_EVENT_QUEUE_FULL:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum USER_FEEDBACK_ANNOTATED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum USER_FEEDBACK_PRIVACY_VIEWED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum USER_FEEDBACK_SENT:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum USER_FEEDBACK_STARTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum USER_INITIATED_SCREEN_ON:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VIDEO_PLAYBACK:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VIDEO_TIMINGS:Lcom/google/glass/userevent/UserEventAction;

.field public static final VIDEO_TIMINGS_REQUEST_START:Ljava/lang/String; = "st"

.field public static final VIDEO_TIMINGS_REQUEST_STOP:Ljava/lang/String; = "sp"

.field public static final VIDEO_TIMINGS_TRIGGER_METHOD:Ljava/lang/String; = "tr"

.field public static final enum VIEWED_BUNDLE:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VIEWFINDER_START:Lcom/google/glass/userevent/UserEventAction;

.field public static final VIEWFINDER_START_TOUCH_TRIGGER:Ljava/lang/String; = "t"

.field public static final enum VIEWFINDER_STOP:Lcom/google/glass/userevent/UserEventAction;

.field public static final VIEWFINDER_STOP_DURATION_PREVIEW:Ljava/lang/String; = "dp"

.field public static final VIEWFINDER_STOP_DURATION_TOTAL:Ljava/lang/String; = "d"

.field public static final VIEWFINDER_STOP_NUM_PICTURES:Ljava/lang/String; = "p"

.field public static final VIEWFINDER_STOP_NUM_VIGNETTES:Ljava/lang/String; = "v"

.field public static final VIEWFINDER_STOP_TIMEOUT:Ljava/lang/String; = "to"

.field public static final VIEWFINDER_STOP_TRIGGER_TOUCH:Ljava/lang/String; = "1"

.field public static final VIEWFINDER_STOP_TRIGGER_TYPE:Ljava/lang/String; = "tr"

.field public static final VIEWFINDER_STOP_TRIGGER_VOICE:Ljava/lang/String; = "2"

.field public static final enum VOICE_INPUT_CORRECTION_CANCELED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VOICE_INPUT_CORRECTION_CONFIRMED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VOICE_INPUT_CORRECTION_STARTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VOICE_INPUT_CORRECTION_TIMED_OUT:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VOICE_INPUT_CORRECT_TIP_HIDDEN:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VOICE_INPUT_CORRECT_TIP_SHOWN:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VOICE_INPUT_DISMISS:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VOICE_INPUT_END_OF_SPEECH:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VOICE_INPUT_ERROR:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VOICE_INPUT_ERROR_DISMISSED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VOICE_INPUT_ERROR_RECOVERED:Lcom/google/glass/userevent/UserEventAction;

.field public static final VOICE_INPUT_ERROR_TIME:Ljava/lang/String; = "time"

.field public static final VOICE_INPUT_EXCEPTION_DETAIL:Ljava/lang/String; = "detail"

.field public static final VOICE_INPUT_EXCEPTION_NAME:Ljava/lang/String; = "error"

.field public static final enum VOICE_INPUT_FIRST_RECOGNITION:Lcom/google/glass/userevent/UserEventAction;

.field public static final VOICE_INPUT_HAS_RECOGNITION_RESULTS:Ljava/lang/String; = "recognition"

.field public static final VOICE_INPUT_ID:Ljava/lang/String; = "id"

.field public static final VOICE_INPUT_LOGGING_TYPE:Ljava/lang/String; = "type"

.field public static final enum VOICE_INPUT_MANUAL_ENDPOINT:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VOICE_INPUT_MANUAL_TIMEOUT:Lcom/google/glass/userevent/UserEventAction;

.field public static final VOICE_INPUT_NETWORK_TYPE:Ljava/lang/String; = "network"

.field public static final enum VOICE_INPUT_NO_SPEECH_DETECTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VOICE_INPUT_NO_SPEECH_DETECTED_TREATED_AS_END_OF_SPEECH:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VOICE_INPUT_RECOGNITION:Lcom/google/glass/userevent/UserEventAction;

.field public static final VOICE_INPUT_RECOGNITION_CONFIDENCE:Ljava/lang/String; = "confidence"

.field public static final VOICE_INPUT_RECOGNITION_RESULT:Ljava/lang/String; = "query"

.field public static final enum VOICE_INPUT_SILENT_RETRY_RECOVERED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VOICE_INPUT_STARTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final VOICE_INPUT_TIME_SINCE_START:Ljava/lang/String; = "tss"

.field public static final VOICE_INPUT_TIME_TO_END_OF_SPEECH:Ljava/lang/String; = "time"

.field public static final VOICE_INPUT_TIME_TO_FIRST_RECOGNITION:Ljava/lang/String; = "time"

.field public static final VOICE_INPUT_TIME_TO_RECOGNITION_FROM_END_OF_SPEECH:Ljava/lang/String; = "time_from_eos"

.field public static final VOICE_INPUT_TOTAL_RECOGNITION_TIME:Ljava/lang/String; = "time_total"

.field public static final VOICE_INPUT_TRIGGER:Ljava/lang/String; = "trigger"

.field public static final VOICE_MENU_COMMAND_ADD_CAPTION:Ljava/lang/String; = "22"

.field public static final VOICE_MENU_COMMAND_ANSWER_CALL_PHONE:Ljava/lang/String; = "16"

.field public static final VOICE_MENU_COMMAND_ANSWER_CALL_VIDEO:Ljava/lang/String; = "17"

.field public static final VOICE_MENU_COMMAND_GET_DIRECTIONS_TO:Ljava/lang/String; = "5"

.field public static final VOICE_MENU_COMMAND_GOOGLE:Ljava/lang/String; = "2"

.field public static final VOICE_MENU_COMMAND_HANG_OUT_WITH:Ljava/lang/String; = "8"

.field public static final VOICE_MENU_COMMAND_HIDE_ROUTE_OVERVIEW:Ljava/lang/String; = "26"

.field public static final VOICE_MENU_COMMAND_IGNORE_CALL_PHONE:Ljava/lang/String; = "18"

.field public static final VOICE_MENU_COMMAND_IGNORE_CALL_VIDEO:Ljava/lang/String; = "19"

.field public static final VOICE_MENU_COMMAND_MAKE_A_CALL_TO:Ljava/lang/String; = "7"

.field public static final VOICE_MENU_COMMAND_OK_GLASS_HOME:Ljava/lang/String; = "1"

.field public static final VOICE_MENU_COMMAND_OK_GLASS_INCOMING_PHONE_CALL:Ljava/lang/String; = "14"

.field public static final VOICE_MENU_COMMAND_OK_GLASS_INCOMING_VIDEO_CALL:Ljava/lang/String; = "15"

.field public static final VOICE_MENU_COMMAND_OK_GLASS_NAVIGATION:Ljava/lang/String; = "24"

.field public static final VOICE_MENU_COMMAND_OK_GLASS_NOTIFICATION:Ljava/lang/String; = "12"

.field public static final VOICE_MENU_COMMAND_OK_GLASS_PICTURE:Ljava/lang/String; = "13"

.field public static final VOICE_MENU_COMMAND_OK_GLASS_PICTURE_SHARE:Ljava/lang/String; = "21"

.field public static final VOICE_MENU_COMMAND_OK_GLASS_TIMELINE:Ljava/lang/String; = "33"

.field public static final VOICE_MENU_COMMAND_OK_GLASS_VIDEO:Ljava/lang/String; = "29"

.field public static final VOICE_MENU_COMMAND_PLAY_VIDEO:Ljava/lang/String; = "23"

.field public static final VOICE_MENU_COMMAND_READ_ALOUD:Ljava/lang/String; = "9"

.field public static final VOICE_MENU_COMMAND_RECORD_A_VIDEO:Ljava/lang/String; = "4"

.field public static final VOICE_MENU_COMMAND_REPLY:Ljava/lang/String; = "10"

.field public static final VOICE_MENU_COMMAND_REPLY_TO_ALL:Ljava/lang/String; = "31"

.field public static final VOICE_MENU_COMMAND_SEND_A_MESSAGE:Ljava/lang/String; = "32"

.field public static final VOICE_MENU_COMMAND_SEND_A_MESSAGE_TO:Ljava/lang/String; = "6"

.field public static final VOICE_MENU_COMMAND_SEND_IT_TO:Ljava/lang/String; = "30"

.field public static final VOICE_MENU_COMMAND_SHARE_WITH:Ljava/lang/String; = "20"

.field public static final VOICE_MENU_COMMAND_SHOW_ROUTE_OVERVIEW:Ljava/lang/String; = "25"

.field public static final enum VOICE_MENU_COMMAND_SPOKEN:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VOICE_MENU_COMMAND_SPOKEN_SCREEN_OFF:Lcom/google/glass/userevent/UserEventAction;

.field public static final VOICE_MENU_COMMAND_STOP_DIRECTIONS:Ljava/lang/String; = "27"

.field public static final VOICE_MENU_COMMAND_TAKE_A_PICTURE:Ljava/lang/String; = "3"

.field public static final enum VOICE_MENU_COMMAND_TAPPED:Lcom/google/glass/userevent/UserEventAction;

.field public static final VOICE_MENU_COMMAND_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field public static final VOICE_MENU_COMMAND_VIDEO_CALL:Ljava/lang/String; = "11"

.field public static final VOICE_MENU_COMMAND_VOICE_FOR_MIRROR:Ljava/lang/String; = "28"

.field public static final VOICE_MENU_CONTEXTUAL_MENUS:Ljava/lang/String; = "cm"

.field public static final enum VOICE_MENU_DISMISSED:Lcom/google/glass/userevent/UserEventAction;

.field public static final VOICE_MENU_DISMISSED_BACK_PRESS_COUNT:Ljava/lang/String; = "b"

.field public static final VOICE_MENU_DISMISSED_BY_USER:Ljava/lang/String; = "u"

.field public static final VOICE_MENU_ENTITY_IS_STARRED:Ljava/lang/String; = "starred"

.field public static final VOICE_MENU_ENTITY_LIST:Ljava/lang/String; = "entity_list"

.field public static final VOICE_MENU_ENTITY_LIST_CALL:Ljava/lang/String; = "call"

.field public static final VOICE_MENU_ENTITY_LIST_MESSAGE:Ljava/lang/String; = "message"

.field public static final VOICE_MENU_ENTITY_LIST_VIDEO_CALL:Ljava/lang/String; = "videocall"

.field public static final enum VOICE_MENU_ENTITY_SPOKEN:Lcom/google/glass/userevent/UserEventAction;

.field public static final VOICE_MENU_HOTWORD_MENU_HOTWORD_RECOGNIZED:Ljava/lang/String; = "r"

.field public static final VOICE_MENU_HOTWORD_MENU_TIME_ON_MENU:Ljava/lang/String; = "t"

.field public static final enum VOICE_MENU_HOTWORD_MENU_TRANSITION:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VOICE_MENU_SWIPE_FOR_ALL_CONTACTS:Lcom/google/glass/userevent/UserEventAction;

.field public static final VOICE_MENU_VOICE_TRIGGERS:Ljava/lang/String; = "vt"

.field public static final enum VOICE_MESSAGE_DISMISS:Lcom/google/glass/userevent/UserEventAction;

.field public static final VOICE_MESSAGE_MULTIPLE_HAS_SWIPED:Ljava/lang/String; = "swiped"

.field public static final enum VOICE_MESSAGE_MULTIPLE_INPUT_MODES:Lcom/google/glass/userevent/UserEventAction;

.field public static final VOICE_MESSAGE_MULTIPLE_USED_DEFAULT:Ljava/lang/String; = "used_default"

.field public static final VOICE_SEARCH_ACTION_TYPE:Ljava/lang/String; = "a"

.field public static final enum VOICE_SEARCH_FROM_TIMELINE:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VOICE_SEARCH_MUSIC_DETECTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VOICE_SEARCH_NOT_OK_HTTP_STATUS_RETRYING:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VOICE_SEARCH_NO_ANSWER:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VOICE_SEARCH_RESULT:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VOICE_SEARCH_RESULT_CARD_COUNT_CHANGED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VOICE_SEARCH_RESULT_CARD_COUNT_STABLE:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VOICE_SEARCH_RESULT_JAVASCRIPT_DISABLED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VOICE_SEARCH_RESULT_JAVASCRIPT_ERROR:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VOICE_SEARCH_RESULT_JS_BRIDGE_INITIALIZED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VOICE_SEARCH_RESULT_JS_ONLOAD:Lcom/google/glass/userevent/UserEventAction;

.field public static final VOICE_SEARCH_RESULT_NUM_CARDS:Ljava/lang/String; = "num_cards"

.field public static final enum VOICE_SEARCH_RESULT_PAGE_FINISHED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VOICE_SEARCH_RESULT_PAGE_STARTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final VOICE_SEARCH_RESULT_PARSE_LENGTH_AFTER_KEY:Ljava/lang/String; = "after"

.field public static final VOICE_SEARCH_RESULT_PARSE_LENGTH_BEFORE_KEY:Ljava/lang/String; = "before"

.field public static final enum VOICE_SEARCH_RESULT_PARSE_RESPONSE:Lcom/google/glass/userevent/UserEventAction;

.field public static final VOICE_SEARCH_RESULT_PARSE_TIME_FROM_EOS_KEY:Ljava/lang/String; = "parse_time_from_eos"

.field public static final VOICE_SEARCH_RESULT_PARSE_TYPE_KEY:Ljava/lang/String; = "type"

.field public static final VOICE_SEARCH_RESULT_PARSE_TYPE_RESULTS:Ljava/lang/String; = "results"

.field public static final VOICE_SEARCH_RESULT_PARSE_TYPE_TIMELINE:Ljava/lang/String; = "timeline"

.field public static final enum VOICE_SEARCH_RESULT_RESOURCE_LOADED:Lcom/google/glass/userevent/UserEventAction;

.field public static final VOICE_SEARCH_RESULT_TIME_FROM_EOS_KEY:Ljava/lang/String; = "time_from_eos"

.field public static final VOICE_SEARCH_RESULT_TIME_KEY:Ljava/lang/String; = "time"

.field public static final enum VOICE_SEARCH_SEND_DIRECT_GWS_REQUEST:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VOICE_SEARCH_SWIPE:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VOLUME_CONTROL_CONTEXT:Lcom/google/glass/userevent/UserEventAction;

.field public static final VOLUME_CONTROL_CONTEXT_CALL:Ljava/lang/String; = "call"

.field public static final VOLUME_CONTROL_CONTEXT_MUSIC:Ljava/lang/String; = "music"

.field public static final VOLUME_CONTROL_CONTEXT_SETTINGS:Ljava/lang/String; = "settings"

.field public static final enum VOLUME_CONTROL_ENTERED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum VOLUME_CONTROL_EXITED:Lcom/google/glass/userevent/UserEventAction;

.field public static final VOLUME_CONTROL_KEY_CONTEXT:Ljava/lang/String; = "c"

.field public static final VOLUME_CONTROL_VOLUME:Ljava/lang/String; = "v"

.field public static final enum WAKE_UP_DELAY:Lcom/google/glass/userevent/UserEventAction;

.field public static final WALLPAPER_IMAGE_BYTES:Ljava/lang/String; = "b"

.field public static final WALLPAPER_PREVIOUSLY_SET:Ljava/lang/String; = "ps"

.field public static final enum WALLPAPER_UPDATED_ON_GLASS:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum WATCHDOG:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum WATCHDOG_ERROR:Lcom/google/glass/userevent/UserEventAction;

.field public static final WATCHDOG_ERROR_AUDIO_CONTENTION:Ljava/lang/String; = "14"

.field public static final WATCHDOG_ERROR_BT_DHCP:Ljava/lang/String; = "11"

.field public static final WATCHDOG_ERROR_CAMERA:Ljava/lang/String; = "9"

.field public static final WATCHDOG_ERROR_CAMERA_PRELOAD_CANCEL:Ljava/lang/String; = "21"

.field public static final WATCHDOG_ERROR_COMPASS_SETUP_FAILS:Ljava/lang/String; = "18"

.field public static final WATCHDOG_ERROR_CONTROLLER_TIMED_OUT:Ljava/lang/String; = "19"

.field public static final WATCHDOG_ERROR_DC_CHARGER:Ljava/lang/String; = "24"

.field public static final WATCHDOG_ERROR_FPGA_RESET:Ljava/lang/String; = "17"

.field public static final WATCHDOG_ERROR_HEAP_ADDR:Ljava/lang/String; = "13"

.field public static final WATCHDOG_ERROR_MEM_HEAP:Ljava/lang/String; = "12"

.field public static final WATCHDOG_ERROR_REALTIME_CLOCK_FALLBACK:Ljava/lang/String; = "20"

.field public static final WATCHDOG_ERROR_SYSPROXY_TEARDOWN:Ljava/lang/String; = "15"

.field public static final WATCHDOG_ERROR_SYSTEM_SERVER_RESTART:Ljava/lang/String; = "22"

.field public static final WATCHDOG_ERROR_THROTTLE_CHARGER:Ljava/lang/String; = "23"

.field public static final WATCHDOG_ERROR_TOUCHPAD:Ljava/lang/String; = "10"

.field public static final WATCHDOG_ERROR_TWL_RESET:Ljava/lang/String; = "16"

.field public static final WATCHDOG_TIME:Ljava/lang/String; = "t"

.field public static final enum WEAR_ASSET_ERROR:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum WEAR_COMPANION_CONNECTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum WEAR_COMPANION_DISCONNECTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum WEAR_DATA_DELETED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum WEAR_DATA_UPDATED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum WEAR_VOICE_COMMAND_MISSING:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum WIFI_BARCODE_SCANNED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum WIFI_CONNECTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum WIFI_SCAN_RESULT_TAPPED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum WIFI_SETUP_VIA_COMPANION:Lcom/google/glass/userevent/UserEventAction;


# instance fields
.field public final action:Ljava/lang/String;

.field public final category:Lcom/google/glass/userevent/UserEventAction$Category;

.field public final source:Lcom/google/glass/userevent/UserEventAction$Source;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/google/glass/userevent/UserEventAction;

    const-string v1, "DUMMY_TEST_EVENT"

    const-string v3, "0"

    sget-object v4, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v5, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction;->DUMMY_TEST_EVENT:Lcom/google/glass/userevent/UserEventAction;

    .line 35
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "DEBUG"

    const-string v6, "100"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->DEBUG:Lcom/google/glass/userevent/UserEventAction;

    .line 37
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "SETUP_BARCODE_SCANNED"

    const-string v6, "3000"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    move v5, v13

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->SETUP_BARCODE_SCANNED:Lcom/google/glass/userevent/UserEventAction;

    .line 38
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "WATCHDOG_ERROR"

    const-string v6, "3001"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    move v5, v14

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->WATCHDOG_ERROR:Lcom/google/glass/userevent/UserEventAction;

    .line 39
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "SETUP_ACCOUNT_FAILED"

    const-string v6, "3002"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    move v5, v15

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->SETUP_ACCOUNT_FAILED:Lcom/google/glass/userevent/UserEventAction;

    .line 40
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "ACCOUNT_RELOGIN"

    const/4 v5, 0x5

    const-string v6, "3003"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->ACCOUNT_RELOGIN:Lcom/google/glass/userevent/UserEventAction;

    .line 41
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "SHUTDOWN_IN_SETUP"

    const/4 v5, 0x6

    const-string v6, "3004"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->SHUTDOWN_IN_SETUP:Lcom/google/glass/userevent/UserEventAction;

    .line 42
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "SETUP_SUCCESS"

    const/4 v5, 0x7

    const-string v6, "3135"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->SETUP_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

    .line 43
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "BLUETOOTH_DISCOVERABLE"

    const/16 v5, 0x8

    const-string v6, "3014"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->BLUETOOTH_DISCOVERABLE:Lcom/google/glass/userevent/UserEventAction;

    .line 44
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "HOME_ACTIVATED"

    const/16 v5, 0x9

    const-string v6, "3017"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->HOME_ACTIVATED:Lcom/google/glass/userevent/UserEventAction;

    .line 45
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "HOME_DISMISSED"

    const/16 v5, 0xa

    const-string v6, "3018"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->HOME_DISMISSED:Lcom/google/glass/userevent/UserEventAction;

    .line 46
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "SCREEN_ON"

    const/16 v5, 0xb

    const-string v6, "3019"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->SCREEN_ON:Lcom/google/glass/userevent/UserEventAction;

    .line 47
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "SCREEN_ON_DURATION"

    const/16 v5, 0xc

    const-string v6, "3020"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->SCREEN_ON_DURATION:Lcom/google/glass/userevent/UserEventAction;

    .line 48
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "USER_INITIATED_SCREEN_ON"

    const/16 v5, 0xd

    const-string v6, "3040"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->USER_INITIATED_SCREEN_ON:Lcom/google/glass/userevent/UserEventAction;

    .line 49
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "HANDSFREE_VOICE_ACTION"

    const/16 v5, 0xe

    const-string v6, "3041"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->HANDSFREE_VOICE_ACTION:Lcom/google/glass/userevent/UserEventAction;

    .line 50
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_INPUT_STARTED"

    const/16 v5, 0xf

    const-string v6, "3021"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_STARTED:Lcom/google/glass/userevent/UserEventAction;

    .line 51
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_INPUT_FIRST_RECOGNITION"

    const/16 v5, 0x10

    const-string v6, "3025"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_FIRST_RECOGNITION:Lcom/google/glass/userevent/UserEventAction;

    .line 52
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_INPUT_END_OF_SPEECH"

    const/16 v5, 0x11

    const-string v6, "3024"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_END_OF_SPEECH:Lcom/google/glass/userevent/UserEventAction;

    .line 53
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_INPUT_RECOGNITION"

    const/16 v5, 0x12

    const-string v6, "3022"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_RECOGNITION:Lcom/google/glass/userevent/UserEventAction;

    .line 54
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_INPUT_ERROR"

    const/16 v5, 0x13

    const-string v6, "3026"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_ERROR:Lcom/google/glass/userevent/UserEventAction;

    .line 55
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_INPUT_ERROR_DISMISSED"

    const/16 v5, 0x14

    const-string v6, "3155"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_ERROR_DISMISSED:Lcom/google/glass/userevent/UserEventAction;

    .line 56
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_INPUT_MANUAL_TIMEOUT"

    const/16 v5, 0x15

    const-string v6, "3156"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_MANUAL_TIMEOUT:Lcom/google/glass/userevent/UserEventAction;

    .line 57
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_INPUT_MANUAL_ENDPOINT"

    const/16 v5, 0x16

    const-string v6, "3159"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_MANUAL_ENDPOINT:Lcom/google/glass/userevent/UserEventAction;

    .line 58
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_INPUT_SILENT_RETRY_RECOVERED"

    const/16 v5, 0x17

    const-string v6, "3157"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_SILENT_RETRY_RECOVERED:Lcom/google/glass/userevent/UserEventAction;

    .line 60
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_INPUT_NO_SPEECH_DETECTED"

    const/16 v5, 0x18

    const-string v6, "3010"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_NO_SPEECH_DETECTED:Lcom/google/glass/userevent/UserEventAction;

    .line 61
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "INPUT_BLOCKED"

    const/16 v5, 0x19

    const-string v6, "3011"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->INPUT_BLOCKED:Lcom/google/glass/userevent/UserEventAction;

    .line 62
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_INPUT_DISMISS"

    const/16 v5, 0x1a

    const-string v6, "3005"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEARCH:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_DISMISS:Lcom/google/glass/userevent/UserEventAction;

    .line 63
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_MESSAGE_DISMISS"

    const/16 v5, 0x1b

    const-string v6, "3006"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_MESSAGE_DISMISS:Lcom/google/glass/userevent/UserEventAction;

    .line 64
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_MESSAGE_MULTIPLE_INPUT_MODES"

    const/16 v5, 0x1c

    const-string v6, "3160"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_MESSAGE_MULTIPLE_INPUT_MODES:Lcom/google/glass/userevent/UserEventAction;

    .line 67
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_SEARCH_RESULT"

    const/16 v5, 0x1d

    const-string v6, "3023"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEARCH:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT:Lcom/google/glass/userevent/UserEventAction;

    .line 68
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_SEARCH_NO_ANSWER"

    const/16 v5, 0x1e

    const-string v6, "3007"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEARCH:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_NO_ANSWER:Lcom/google/glass/userevent/UserEventAction;

    .line 69
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_SEARCH_FROM_TIMELINE"

    const/16 v5, 0x1f

    const-string v6, "3008"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEARCH:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_FROM_TIMELINE:Lcom/google/glass/userevent/UserEventAction;

    .line 70
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_SEARCH_SWIPE"

    const/16 v5, 0x20

    const-string v6, "3009"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_SWIPE:Lcom/google/glass/userevent/UserEventAction;

    .line 71
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "SOUND_SEARCH_RESULT"

    const/16 v5, 0x21

    const-string v6, "3143"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->SOUND_SEARCH_RESULT:Lcom/google/glass/userevent/UserEventAction;

    .line 72
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_SEARCH_MUSIC_DETECTED"

    const/16 v5, 0x22

    const-string v6, "3144"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_MUSIC_DETECTED:Lcom/google/glass/userevent/UserEventAction;

    .line 73
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_SEARCH_RESULT_PAGE_STARTED"

    const/16 v5, 0x23

    const-string v6, "3150"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEARCH:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT_PAGE_STARTED:Lcom/google/glass/userevent/UserEventAction;

    .line 74
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_SEARCH_RESULT_PAGE_FINISHED"

    const/16 v5, 0x24

    const-string v6, "3151"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEARCH:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT_PAGE_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    .line 75
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_SEARCH_RESULT_RESOURCE_LOADED"

    const/16 v5, 0x25

    const-string v6, "3152"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEARCH:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT_RESOURCE_LOADED:Lcom/google/glass/userevent/UserEventAction;

    .line 76
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_SEARCH_RESULT_CARD_COUNT_STABLE"

    const/16 v5, 0x26

    const-string v6, "3153"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEARCH:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT_CARD_COUNT_STABLE:Lcom/google/glass/userevent/UserEventAction;

    .line 77
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_SEARCH_RESULT_CARD_COUNT_CHANGED"

    const/16 v5, 0x27

    const-string v6, "3154"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEARCH:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT_CARD_COUNT_CHANGED:Lcom/google/glass/userevent/UserEventAction;

    .line 78
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_SEARCH_RESULT_JS_BRIDGE_INITIALIZED"

    const/16 v5, 0x28

    const-string v6, "3163"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEARCH:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT_JS_BRIDGE_INITIALIZED:Lcom/google/glass/userevent/UserEventAction;

    .line 80
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_SEARCH_RESULT_JAVASCRIPT_ERROR"

    const/16 v5, 0x29

    const-string v6, "3164"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEARCH:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT_JAVASCRIPT_ERROR:Lcom/google/glass/userevent/UserEventAction;

    .line 81
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_SEARCH_RESULT_JAVASCRIPT_DISABLED"

    const/16 v5, 0x2a

    const-string v6, "3165"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEARCH:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT_JAVASCRIPT_DISABLED:Lcom/google/glass/userevent/UserEventAction;

    .line 83
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_SEARCH_RESULT_JS_ONLOAD"

    const/16 v5, 0x2b

    const-string v6, "3168"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEARCH:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT_JS_ONLOAD:Lcom/google/glass/userevent/UserEventAction;

    .line 84
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_SEARCH_RESULT_PARSE_RESPONSE"

    const/16 v5, 0x2c

    const-string v6, "3158"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEARCH:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT_PARSE_RESPONSE:Lcom/google/glass/userevent/UserEventAction;

    .line 85
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "TIMELINE_ITEM_INSERTED"

    const/16 v5, 0x2d

    const-string v6, "3027"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEE_EVENT_DATA:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_ITEM_INSERTED:Lcom/google/glass/userevent/UserEventAction;

    .line 86
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "TIMELINE_ITEM_SHARE_STARTED"

    const/16 v5, 0x2e

    const-string v6, "3142"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEE_EVENT_DATA:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_ITEM_SHARE_STARTED:Lcom/google/glass/userevent/UserEventAction;

    .line 87
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "TIMELINE_ITEM_SHARED"

    const/16 v5, 0x2f

    const-string v6, "3028"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEE_EVENT_DATA:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_ITEM_SHARED:Lcom/google/glass/userevent/UserEventAction;

    .line 88
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "PHONE_CALL"

    const/16 v5, 0x30

    const-string v6, "3029"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->PHONE_CALL:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->PHONE_CALL:Lcom/google/glass/userevent/UserEventAction;

    .line 89
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "DEVICE_STORAGE_BLOCK_USER_ACTION"

    const/16 v5, 0x31

    const-string v6, "3120"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->DEVICE_STORAGE_BLOCK_USER_ACTION:Lcom/google/glass/userevent/UserEventAction;

    .line 90
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VIEWED_BUNDLE"

    const/16 v5, 0x32

    const-string v6, "3121"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VIEWED_BUNDLE:Lcom/google/glass/userevent/UserEventAction;

    .line 91
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "BATTERY_STATE"

    const/16 v5, 0x33

    const-string v6, "3122"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->BATTERY_STATE:Lcom/google/glass/userevent/UserEventAction;

    .line 92
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "TWO_FINGER_ZOOM_OUT"

    const/16 v5, 0x34

    const-string v6, "3123"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->TWO_FINGER_ZOOM_OUT:Lcom/google/glass/userevent/UserEventAction;

    .line 93
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "PRESS_TO_SEARCH_DISMISSED"

    const/16 v5, 0x35

    const-string v6, "3124"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->PRESS_TO_SEARCH_DISMISSED:Lcom/google/glass/userevent/UserEventAction;

    .line 94
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "FORCE_EVENT_LOG_FLUSH"

    const/16 v5, 0x36

    const-string v6, "3125"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->FORCE_EVENT_LOG_FLUSH:Lcom/google/glass/userevent/UserEventAction;

    .line 95
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "TIMELINE_NAVIGATION"

    const/16 v5, 0x37

    const-string v6, "3126"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_NAVIGATION:Lcom/google/glass/userevent/UserEventAction;

    .line 96
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VIDEO_PLAYBACK"

    const/16 v5, 0x38

    const-string v6, "3127"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VIDEO:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VIDEO_PLAYBACK:Lcom/google/glass/userevent/UserEventAction;

    .line 97
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "DEFERRED_CONTENT_LOAD"

    const/16 v5, 0x39

    const-string v6, "3128"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->DEFERRED_CONTENT_LOAD:Lcom/google/glass/userevent/UserEventAction;

    .line 98
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "HEADSET_PLUG"

    const/16 v5, 0x3a

    const-string v6, "3132"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->MUSIC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->HEADSET_PLUG:Lcom/google/glass/userevent/UserEventAction;

    .line 99
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "OTA_TRIGGER"

    const/16 v5, 0x3b

    const-string v6, "3140"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->OTA_TRIGGER:Lcom/google/glass/userevent/UserEventAction;

    .line 100
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "FACTORY_RESET"

    const/16 v5, 0x3c

    const-string v6, "3141"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->FACTORY_RESET:Lcom/google/glass/userevent/UserEventAction;

    .line 101
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "HOME_SCREEN_TIP"

    const/16 v5, 0x3d

    const-string v6, "3147"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->HOME_SCREEN_TIP:Lcom/google/glass/userevent/UserEventAction;

    .line 104
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "KEYBOARD_TEXT_ENTRY_TIP_SHOWN"

    const/16 v5, 0x3e

    const-string v6, "3208"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->KEYBOARD_TEXT_ENTRY_TIP_SHOWN:Lcom/google/glass/userevent/UserEventAction;

    .line 105
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "KEYBOARD_TEXT_ENTRY_STARTED"

    const/16 v5, 0x3f

    const-string v6, "3209"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->KEYBOARD_TEXT_ENTRY_STARTED:Lcom/google/glass/userevent/UserEventAction;

    .line 106
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "KEYBOARD_TEXT_ENTRY_FINISHED"

    const/16 v5, 0x40

    const-string v6, "3210"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->KEYBOARD_TEXT_ENTRY_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    .line 109
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "WIFI_BARCODE_SCANNED"

    const/16 v5, 0x41

    const-string v6, "3012"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->WIFI_BARCODE_SCANNED:Lcom/google/glass/userevent/UserEventAction;

    .line 110
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "WIFI_SCAN_RESULT_TAPPED"

    const/16 v5, 0x42

    const-string v6, "14001"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->WIFI_SCAN_RESULT_TAPPED:Lcom/google/glass/userevent/UserEventAction;

    .line 111
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "WIFI_SETUP_VIA_COMPANION"

    const/16 v5, 0x43

    const-string v6, "14002"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->WIFI_SETUP_VIA_COMPANION:Lcom/google/glass/userevent/UserEventAction;

    .line 112
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "WIFI_CONNECTED"

    const/16 v5, 0x44

    const-string v6, "3013"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->CONNECTIVITY:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->WIFI_CONNECTED:Lcom/google/glass/userevent/UserEventAction;

    .line 116
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "SEND_MESSAGE_INITIATED"

    const/16 v5, 0x45

    const-string v6, "3030"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEE_EVENT_DATA:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->SEND_MESSAGE_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    .line 117
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "SEND_MESSAGE_INCLUDES_PHOTO"

    const/16 v5, 0x46

    const-string v6, "3148"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEE_EVENT_DATA:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->SEND_MESSAGE_INCLUDES_PHOTO:Lcom/google/glass/userevent/UserEventAction;

    .line 118
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "SEND_MESSAGE_COMPLETED"

    const/16 v5, 0x47

    const-string v6, "3031"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEE_EVENT_DATA:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->SEND_MESSAGE_COMPLETED:Lcom/google/glass/userevent/UserEventAction;

    .line 119
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "REPLY_INITIATED"

    const/16 v5, 0x48

    const-string v6, "3032"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEE_EVENT_DATA:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->REPLY_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    .line 120
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "REPLY_COMPLETED"

    const/16 v5, 0x49

    const-string v6, "3033"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEE_EVENT_DATA:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->REPLY_COMPLETED:Lcom/google/glass/userevent/UserEventAction;

    .line 121
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "REPLY_ALL_INITIATED"

    const/16 v5, 0x4a

    const-string v6, "3034"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEE_EVENT_DATA:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->REPLY_ALL_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    .line 122
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "REPLY_ALL_COMPLETED"

    const/16 v5, 0x4b

    const-string v6, "3035"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEE_EVENT_DATA:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->REPLY_ALL_COMPLETED:Lcom/google/glass/userevent/UserEventAction;

    .line 123
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "DELETE_INITIATED"

    const/16 v5, 0x4c

    const-string v6, "3036"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEE_EVENT_DATA:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->DELETE_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    .line 124
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "DELETE_COMPLETED"

    const/16 v5, 0x4d

    const-string v6, "3037"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEE_EVENT_DATA:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->DELETE_COMPLETED:Lcom/google/glass/userevent/UserEventAction;

    .line 125
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "RETRY_REPLY"

    const/16 v5, 0x4e

    const-string v6, "3038"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEE_EVENT_DATA:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->RETRY_REPLY:Lcom/google/glass/userevent/UserEventAction;

    .line 126
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "MESSAGE_REPLY_NO_COMPANION"

    const/16 v5, 0x4f

    const-string v6, "3039"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEE_EVENT_DATA:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->MESSAGE_REPLY_NO_COMPANION:Lcom/google/glass/userevent/UserEventAction;

    .line 129
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "TIMELINE_DOWNSTREAM_SYNC_STARTED"

    const/16 v5, 0x50

    const-string v6, "3050"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_DOWNSTREAM_SYNC_STARTED:Lcom/google/glass/userevent/UserEventAction;

    .line 130
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "TIMELINE_DOWNSTREAM_SYNC_FINISHED"

    const/16 v5, 0x51

    const-string v6, "3051"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_DOWNSTREAM_SYNC_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    .line 131
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "TIMELINE_DOWNSTREAM_SYNC_BACKOFF"

    const/16 v5, 0x52

    const-string v6, "3052"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_DOWNSTREAM_SYNC_BACKOFF:Lcom/google/glass/userevent/UserEventAction;

    .line 132
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "TIMELINE_DOWNSTREAM_SYNC_ITEM"

    const/16 v5, 0x53

    const-string v6, "3053"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_DOWNSTREAM_SYNC_ITEM:Lcom/google/glass/userevent/UserEventAction;

    .line 133
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "TIMELINE_UPSTREAM_SYNC_STARTED"

    const/16 v5, 0x54

    const-string v6, "3055"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_UPSTREAM_SYNC_STARTED:Lcom/google/glass/userevent/UserEventAction;

    .line 134
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "TIMELINE_UPSTREAM_SYNC_FINISHED_SUCCESSFULLY"

    const/16 v5, 0x55

    const-string v6, "3056"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_UPSTREAM_SYNC_FINISHED_SUCCESSFULLY:Lcom/google/glass/userevent/UserEventAction;

    .line 135
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "TIMELINE_UPSTREAM_SYNC_FINISHED_WITH_ERROR"

    const/16 v5, 0x56

    const-string v6, "3057"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_UPSTREAM_SYNC_FINISHED_WITH_ERROR:Lcom/google/glass/userevent/UserEventAction;

    .line 136
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "TIMELINE_UPSTREAM_SYNC_BACKOFF"

    const/16 v5, 0x57

    const-string v6, "3058"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_UPSTREAM_SYNC_BACKOFF:Lcom/google/glass/userevent/UserEventAction;

    .line 137
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "TIMELINE_SYNC_TRIGGERED_WITH_NO_CONNECTIVITY"

    const/16 v5, 0x58

    const-string v6, "3059"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_SYNC_TRIGGERED_WITH_NO_CONNECTIVITY:Lcom/google/glass/userevent/UserEventAction;

    .line 138
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "RESUMABLE_UPLOADER_UPLOAD_STARTED"

    const/16 v5, 0x59

    const-string v6, "3060"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_STARTED:Lcom/google/glass/userevent/UserEventAction;

    .line 139
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "RESUMABLE_UPLOADER_UPLOAD_RECOVERABLE_ERROR"

    const/16 v5, 0x5a

    const-string v6, "3061"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_RECOVERABLE_ERROR:Lcom/google/glass/userevent/UserEventAction;

    .line 140
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "RESUMABLE_UPLOADER_UPLOAD_FATAL_ERROR"

    const/16 v5, 0x5b

    const-string v6, "3062"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_FATAL_ERROR:Lcom/google/glass/userevent/UserEventAction;

    .line 141
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "RESUMABLE_UPLOADER_UPLOAD_RESUMED"

    const/16 v5, 0x5c

    const-string v6, "3063"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_RESUMED:Lcom/google/glass/userevent/UserEventAction;

    .line 142
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "RESUMABLE_UPLOADER_UPLOAD_FINISHED"

    const/16 v5, 0x5d

    const-string v6, "3064"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    .line 143
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "TIMELINE_SYNC_FINISHED"

    const/16 v5, 0x5e

    const-string v6, "3067"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_SYNC_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    .line 144
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "OLD_ITEM_PURGER_FINISHED"

    const/16 v5, 0x5f

    const-string v6, "3068"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->OLD_ITEM_PURGER_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    .line 145
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "ENTITY_SYNC_STARTED"

    const/16 v5, 0x60

    const-string v6, "3070"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->ENTITY_SYNC_STARTED:Lcom/google/glass/userevent/UserEventAction;

    .line 146
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "ENTITY_SYNC_FINISHED"

    const/16 v5, 0x61

    const-string v6, "3071"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->ENTITY_SYNC_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    .line 147
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "ENTITY_SYNC_BACKOFF"

    const/16 v5, 0x62

    const-string v6, "3072"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->ENTITY_SYNC_BACKOFF:Lcom/google/glass/userevent/UserEventAction;

    .line 148
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "LOCATION_SYNC"

    const/16 v5, 0x63

    const-string v6, "3146"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->LOCATION_SYNC:Lcom/google/glass/userevent/UserEventAction;

    .line 149
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "LOCATION_SYNC_SUCCESS"

    const/16 v5, 0x64

    const-string v6, "3169"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->LOCATION_SYNC_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

    .line 150
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "LOCATION_SYNC_FAILED"

    const/16 v5, 0x65

    const-string v6, "3170"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->LOCATION_SYNC_FAILED:Lcom/google/glass/userevent/UserEventAction;

    .line 153
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "DON_DETECTOR_ENABLED"

    const/16 v5, 0x66

    const-string v6, "3080"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->DON_DETECTOR_ENABLED:Lcom/google/glass/userevent/UserEventAction;

    .line 154
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "DON_DETECTOR_DISABLED"

    const/16 v5, 0x67

    const-string v6, "3081"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->DON_DETECTOR_DISABLED:Lcom/google/glass/userevent/UserEventAction;

    .line 155
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "DEVICE_DONNED"

    const/16 v5, 0x68

    const-string v6, "3082"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->DEVICE_DONNED:Lcom/google/glass/userevent/UserEventAction;

    .line 156
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "DEVICE_DOFFED"

    const/16 v5, 0x69

    const-string v6, "3083"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->DEVICE_DOFFED:Lcom/google/glass/userevent/UserEventAction;

    .line 159
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_MENU_COMMAND_SPOKEN"

    const/16 v5, 0x6a

    const-string v6, "3090"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN:Lcom/google/glass/userevent/UserEventAction;

    .line 160
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_MENU_COMMAND_TAPPED"

    const/16 v5, 0x6b

    const-string v6, "3091"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_TAPPED:Lcom/google/glass/userevent/UserEventAction;

    .line 161
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_MENU_COMMAND_SPOKEN_SCREEN_OFF"

    const/16 v5, 0x6c

    const-string v6, "3092"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN_SCREEN_OFF:Lcom/google/glass/userevent/UserEventAction;

    .line 162
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "TOUCH_MENU_ENTITY_SELECTED"

    const/16 v5, 0x6d

    const-string v6, "3093"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->TOUCH_MENU_ENTITY_SELECTED:Lcom/google/glass/userevent/UserEventAction;

    .line 163
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_MENU_SWIPE_FOR_ALL_CONTACTS"

    const/16 v5, 0x6e

    const-string v6, "3161"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_SWIPE_FOR_ALL_CONTACTS:Lcom/google/glass/userevent/UserEventAction;

    .line 164
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_MENU_ENTITY_SPOKEN"

    const/16 v5, 0x6f

    const-string v6, "3162"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_ENTITY_SPOKEN:Lcom/google/glass/userevent/UserEventAction;

    .line 165
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_MENU_DISMISSED"

    const/16 v5, 0x70

    const-string v6, "3166"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_DISMISSED:Lcom/google/glass/userevent/UserEventAction;

    .line 166
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_MENU_HOTWORD_MENU_TRANSITION"

    const/16 v5, 0x71

    const-string v6, "3167"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_HOTWORD_MENU_TRANSITION:Lcom/google/glass/userevent/UserEventAction;

    .line 169
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "MIRROR_COMMAND_DISAMBIGUATION_SHOWN"

    const/16 v5, 0x72

    const-string v6, "3094"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->MIRROR_COMMAND_DISAMBIGUATION_SHOWN:Lcom/google/glass/userevent/UserEventAction;

    .line 171
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "MIRROR_COMMAND_INVOKED"

    const/16 v5, 0x73

    const-string v6, "3095"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->MIRROR_COMMAND_INVOKED:Lcom/google/glass/userevent/UserEventAction;

    .line 174
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "NATIVE_COMMAND_INVOKED"

    const/16 v5, 0x74

    const-string v6, "3096"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->NATIVE_COMMAND_INVOKED:Lcom/google/glass/userevent/UserEventAction;

    .line 175
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "NATIVE_COMMAND_DISAMBIGUATION_SHOWN"

    const/16 v5, 0x75

    const-string v6, "3097"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->NATIVE_COMMAND_DISAMBIGUATION_SHOWN:Lcom/google/glass/userevent/UserEventAction;

    .line 179
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "BARCODE_SUCCESSFUL_SCAN"

    const/16 v5, 0x76

    const-string v6, "3100"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->BARCODE_SUCCESSFUL_SCAN:Lcom/google/glass/userevent/UserEventAction;

    .line 180
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "BARCODE_FAILED_SCAN"

    const/16 v5, 0x77

    const-string v6, "3101"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->BARCODE_FAILED_SCAN:Lcom/google/glass/userevent/UserEventAction;

    .line 181
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "BARCODE_PICTURE_SCAN"

    const/16 v5, 0x78

    const-string v6, "3102"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->BARCODE_PICTURE_SCAN:Lcom/google/glass/userevent/UserEventAction;

    .line 184
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "PEOPLE_GRID_START"

    const/16 v5, 0x79

    const-string v6, "3129"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->PEOPLE_GRID_START:Lcom/google/glass/userevent/UserEventAction;

    .line 185
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "PEOPLE_GRID_ITEM_SELECTED"

    const/16 v5, 0x7a

    const-string v6, "3133"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->PEOPLE_GRID_ITEM_SELECTED:Lcom/google/glass/userevent/UserEventAction;

    .line 186
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "PEOPLE_GRID_FILTERED_TIMELINE"

    const/16 v5, 0x7b

    const-string v6, "3130"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->PEOPLE_GRID_FILTERED_TIMELINE:Lcom/google/glass/userevent/UserEventAction;

    .line 187
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "PEOPLE_GRID_SEND_MESSAGE"

    const/16 v5, 0x7c

    const-string v6, "3131"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->PEOPLE_GRID_SEND_MESSAGE:Lcom/google/glass/userevent/UserEventAction;

    .line 188
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "FILTERED_TIMELINE_DISMISS"

    const/16 v5, 0x7d

    const-string v6, "3134"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->FILTERED_TIMELINE_DISMISS:Lcom/google/glass/userevent/UserEventAction;

    .line 191
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "GLASSWARE_INSTALLED"

    const/16 v5, 0x7e

    const-string v6, "3200"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->GLASSWARE_INSTALLED:Lcom/google/glass/userevent/UserEventAction;

    .line 192
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "GLASSWARE_UNINSTALLED"

    const/16 v5, 0x7f

    const-string v6, "3201"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->GLASSWARE_UNINSTALLED:Lcom/google/glass/userevent/UserEventAction;

    .line 193
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "MAIN_MENU_ITEM_TRIGGERED"

    const/16 v5, 0x80

    const-string v6, "3202"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->MAIN_MENU_ITEM_TRIGGERED:Lcom/google/glass/userevent/UserEventAction;

    .line 194
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "MAIN_MENU_ITEMS_LIST"

    const/16 v5, 0x81

    const-string v6, "3203"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->MAIN_MENU_ITEMS_LIST:Lcom/google/glass/userevent/UserEventAction;

    .line 195
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "ACTION_RESPONSE_RECEIVED"

    const/16 v5, 0x82

    const-string v6, "3204"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->ACTION_RESPONSE_RECEIVED:Lcom/google/glass/userevent/UserEventAction;

    .line 198
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "WALLPAPER_UPDATED_ON_GLASS"

    const/16 v5, 0x83

    const-string v6, "3205"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->WALLPAPER_UPDATED_ON_GLASS:Lcom/google/glass/userevent/UserEventAction;

    .line 199
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "GLASS_SENDING_WALLPAPER_INFO"

    const/16 v5, 0x84

    const-string v6, "3207"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->GLASS_SENDING_WALLPAPER_INFO:Lcom/google/glass/userevent/UserEventAction;

    .line 201
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "TIMELINE_CARD_LINGER"

    const/16 v5, 0x85

    const-string v6, "3206"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_CARD_LINGER:Lcom/google/glass/userevent/UserEventAction;

    .line 204
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "NAVIGATION_START"

    const/16 v5, 0x86

    const-string v6, "4001"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_START:Lcom/google/glass/userevent/UserEventAction;

    .line 205
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "NAVIGATION_END"

    const/16 v5, 0x87

    const-string v6, "4002"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_END:Lcom/google/glass/userevent/UserEventAction;

    .line 206
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "TRAVEL_MODE_CHANGE"

    const/16 v5, 0x88

    const-string v6, "4003"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->TRAVEL_MODE_CHANGE:Lcom/google/glass/userevent/UserEventAction;

    .line 207
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "NAVIGATION_ERROR"

    const/16 v5, 0x89

    const-string v6, "4004"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_ERROR:Lcom/google/glass/userevent/UserEventAction;

    .line 208
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "DIRECTIONS_START"

    const/16 v5, 0x8a

    const-string v6, "4005"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_START:Lcom/google/glass/userevent/UserEventAction;

    .line 209
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "DIRECTIONS_RECEIVED"

    const/16 v5, 0x8b

    const-string v6, "4006"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_RECEIVED:Lcom/google/glass/userevent/UserEventAction;

    .line 210
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "DIRECTIONS_REFINEMENTS"

    const/16 v5, 0x8c

    const-string v6, "4007"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_REFINEMENTS:Lcom/google/glass/userevent/UserEventAction;

    .line 211
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "DIRECTIONS_ERROR"

    const/16 v5, 0x8d

    const-string v6, "4008"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_ERROR:Lcom/google/glass/userevent/UserEventAction;

    .line 212
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "DIRECTIONS_END"

    const/16 v5, 0x8e

    const-string v6, "4009"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_END:Lcom/google/glass/userevent/UserEventAction;

    .line 213
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "DIRECTIONS_SCROLL"

    const/16 v5, 0x8f

    const-string v6, "4010"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_SCROLL:Lcom/google/glass/userevent/UserEventAction;

    .line 214
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "SHOW_ROUTE_OVERVIEW"

    const/16 v5, 0x90

    const-string v6, "4011"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->SHOW_ROUTE_OVERVIEW:Lcom/google/glass/userevent/UserEventAction;

    .line 215
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "CHANGE_TRIP"

    const/16 v5, 0x91

    const-string v6, "4012"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->CHANGE_TRIP:Lcom/google/glass/userevent/UserEventAction;

    .line 216
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "SELECT_TRIP"

    const/16 v5, 0x92

    const-string v6, "4013"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->SELECT_TRIP:Lcom/google/glass/userevent/UserEventAction;

    .line 217
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "SELECT_REFINEMENT"

    const/16 v5, 0x93

    const-string v6, "4014"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->SELECT_REFINEMENT:Lcom/google/glass/userevent/UserEventAction;

    .line 218
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "NAVIGATION_FROM_TIMELINE"

    const/16 v5, 0x94

    const-string v6, "4015"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_FROM_TIMELINE:Lcom/google/glass/userevent/UserEventAction;

    .line 219
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "SHOW_STEPS"

    const/16 v5, 0x95

    const-string v6, "4016"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->SHOW_STEPS:Lcom/google/glass/userevent/UserEventAction;

    .line 220
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "MAP_RENDER_ERROR"

    const/16 v5, 0x96

    const-string v6, "4017"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->MAP_RENDER_ERROR:Lcom/google/glass/userevent/UserEventAction;

    .line 221
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "MAP_RENDER_REQUEST_ERROR"

    const/16 v5, 0x97

    const-string v6, "4018"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->MAP_RENDER_REQUEST_ERROR:Lcom/google/glass/userevent/UserEventAction;

    .line 222
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "MAP_RENDER_REQUEST_SUCCESS"

    const/16 v5, 0x98

    const-string v6, "4019"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->MAP_RENDER_REQUEST_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

    .line 223
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "MAP_RENDER_REQUEST"

    const/16 v5, 0x99

    const-string v6, "4020"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->MAP_RENDER_REQUEST:Lcom/google/glass/userevent/UserEventAction;

    .line 224
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "NAVIGATION_LOCATION_LATENCY"

    const/16 v5, 0x9a

    const-string v6, "4021"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_LOCATION_LATENCY:Lcom/google/glass/userevent/UserEventAction;

    .line 225
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "NAVIGATION_TIMED_OUT_LOCATION"

    const/16 v5, 0x9b

    const-string v6, "4022"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_TIMED_OUT_LOCATION:Lcom/google/glass/userevent/UserEventAction;

    .line 226
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "NAVIGATION_TIMED_OUT_NETWORK"

    const/16 v5, 0x9c

    const-string v6, "4023"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_TIMED_OUT_NETWORK:Lcom/google/glass/userevent/UserEventAction;

    .line 227
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "MAP_RENDER_CACHE_REQUEST"

    const/16 v5, 0x9d

    const-string v6, "4024"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->MAP_RENDER_CACHE_REQUEST:Lcom/google/glass/userevent/UserEventAction;

    .line 228
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "MAP_RENDER_CACHE_SIZE"

    const/16 v5, 0x9e

    const-string v6, "4025"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->MAP_RENDER_CACHE_SIZE:Lcom/google/glass/userevent/UserEventAction;

    .line 229
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "NAVIGATION_GPS_LOCATION_REQUEST"

    const/16 v5, 0x9f

    const-string v6, "4026"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_GPS_LOCATION_REQUEST:Lcom/google/glass/userevent/UserEventAction;

    .line 230
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "NAVIGATION_GPS_LOCATION_SWITCH"

    const/16 v5, 0xa0

    const-string v6, "4027"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_GPS_LOCATION_SWITCH:Lcom/google/glass/userevent/UserEventAction;

    .line 233
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "RECORD_VIDEO_START"

    const/16 v5, 0xa1

    const-string v6, "4100"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VIDEO:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->RECORD_VIDEO_START:Lcom/google/glass/userevent/UserEventAction;

    .line 234
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "RECORD_VIDEO_END"

    const/16 v5, 0xa2

    const-string v6, "4101"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VIDEO:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->RECORD_VIDEO_END:Lcom/google/glass/userevent/UserEventAction;

    .line 235
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "RECORD_VIDEO_THUMBNAIL"

    const/16 v5, 0xa3

    const-string v6, "4102"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VIDEO:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->RECORD_VIDEO_THUMBNAIL:Lcom/google/glass/userevent/UserEventAction;

    .line 236
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "RECORD_VIDEO_TRACK_INFO"

    const/16 v5, 0xa4

    const-string v6, "4103"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->RECORD_VIDEO_TRACK_INFO:Lcom/google/glass/userevent/UserEventAction;

    .line 239
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "PLAY_VIDEO_START"

    const/16 v5, 0xa5

    const-string v6, "4200"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VIDEO:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->PLAY_VIDEO_START:Lcom/google/glass/userevent/UserEventAction;

    .line 240
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "PLAY_VIDEO_STOP"

    const/16 v5, 0xa6

    const-string v6, "4201"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VIDEO:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->PLAY_VIDEO_STOP:Lcom/google/glass/userevent/UserEventAction;

    .line 241
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "PLAY_VIDEO_ERROR"

    const/16 v5, 0xa7

    const-string v6, "4203"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VIDEO:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->PLAY_VIDEO_ERROR:Lcom/google/glass/userevent/UserEventAction;

    .line 244
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VIEWFINDER_START"

    const/16 v5, 0xa8

    const-string v6, "4300"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->PHOTO:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VIEWFINDER_START:Lcom/google/glass/userevent/UserEventAction;

    .line 245
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VIEWFINDER_STOP"

    const/16 v5, 0xa9

    const-string v6, "4301"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->PHOTO:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VIEWFINDER_STOP:Lcom/google/glass/userevent/UserEventAction;

    .line 248
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "CAMERA_ERROR_CALLBACK"

    const/16 v5, 0xaa

    const-string v6, "4400"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->PHOTO:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->CAMERA_ERROR_CALLBACK:Lcom/google/glass/userevent/UserEventAction;

    .line 249
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "CAMERA_WARMUP"

    const/16 v5, 0xab

    const-string v6, "4401"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->PHOTO:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->CAMERA_WARMUP:Lcom/google/glass/userevent/UserEventAction;

    .line 252
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "PROTO_REQUEST_DISPATCHER_BATCH"

    const/16 v5, 0xac

    const-string v6, "5000"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->PROTO_REQUEST_DISPATCHER_BATCH:Lcom/google/glass/userevent/UserEventAction;

    .line 253
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_CONNECTION"

    const/16 v5, 0xad

    const-string v6, "5002"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->CONNECTIVITY:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_CONNECTION:Lcom/google/glass/userevent/UserEventAction;

    .line 254
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "ANDROID_CHECK_IN"

    const/16 v5, 0xae

    const-string v6, "5003"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->ANDROID_CHECK_IN:Lcom/google/glass/userevent/UserEventAction;

    .line 255
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "DEVICE_STORAGE_STATE_CHANGED"

    const/16 v5, 0xaf

    const-string v6, "5004"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->DEVICE_STORAGE_STATE_CHANGED:Lcom/google/glass/userevent/UserEventAction;

    .line 256
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "USER_EVENT_QUEUE_FULL"

    const/16 v5, 0xb0

    const-string v6, "5005"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->USER_EVENT_QUEUE_FULL:Lcom/google/glass/userevent/UserEventAction;

    .line 257
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "PROTO_REQUEST_DISPATCHER_REQUEST_SIZE"

    const/16 v5, 0xb1

    const-string v6, "5006"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->PROTO_REQUEST_DISPATCHER_REQUEST_SIZE:Lcom/google/glass/userevent/UserEventAction;

    .line 258
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "OTA_SUCCESS_STATE"

    const/16 v5, 0xb2

    const-string v6, "5010"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->OTA_SUCCESS_STATE:Lcom/google/glass/userevent/UserEventAction;

    .line 259
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "IMAGE_DOWNLOAD_LATENCY"

    const/16 v5, 0xb3

    const-string v6, "5011"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->IMAGE_DOWNLOAD_LATENCY:Lcom/google/glass/userevent/UserEventAction;

    .line 260
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "LOCATION_MANAGER_HELPER_RECEIVED_LOCATION"

    const/16 v5, 0xb4

    const-string v6, "5012"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->LOCATION_MANAGER_HELPER_RECEIVED_LOCATION:Lcom/google/glass/userevent/UserEventAction;

    .line 261
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "LOCATION_MANAGER_HELPER_NO_LOCATION"

    const/16 v5, 0xb5

    const-string v6, "5013"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->LOCATION_MANAGER_HELPER_NO_LOCATION:Lcom/google/glass/userevent/UserEventAction;

    .line 262
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "WATCHDOG"

    const/16 v5, 0xb6

    const-string v6, "5014"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->WATCHDOG:Lcom/google/glass/userevent/UserEventAction;

    .line 265
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "HANGOUTS_ERROR"

    const/16 v5, 0xb7

    const-string v6, "6001"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_ERROR:Lcom/google/glass/userevent/UserEventAction;

    .line 266
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "HANGOUTS_ENTERED"

    const/16 v5, 0xb8

    const-string v6, "6002"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_ENTERED:Lcom/google/glass/userevent/UserEventAction;

    .line 267
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "HANGOUTS_CREATED"

    const/16 v5, 0xb9

    const-string v6, "6003"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_CREATED:Lcom/google/glass/userevent/UserEventAction;

    .line 268
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "HANGOUTS_CHAT_MESSAGE_RECEIVED"

    const/16 v5, 0xba

    const-string v6, "6004"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_CHAT_MESSAGE_RECEIVED:Lcom/google/glass/userevent/UserEventAction;

    .line 269
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "HANGOUTS_MUTE_REMOTE"

    const/16 v5, 0xbb

    const-string v6, "6005"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_MUTE_REMOTE:Lcom/google/glass/userevent/UserEventAction;

    .line 270
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "HANGOUTS_MUTE_MY_VIDEO"

    const/16 v5, 0xbc

    const-string v6, "6006"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_MUTE_MY_VIDEO:Lcom/google/glass/userevent/UserEventAction;

    .line 271
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "HANGOUTS_UNMUTE_MY_VIDEO"

    const/16 v5, 0xbd

    const-string v6, "6007"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_UNMUTE_MY_VIDEO:Lcom/google/glass/userevent/UserEventAction;

    .line 272
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "HANGOUTS_MUTE_MY_AUDIO"

    const/16 v5, 0xbe

    const-string v6, "6008"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_MUTE_MY_AUDIO:Lcom/google/glass/userevent/UserEventAction;

    .line 273
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "HANGOUTS_UNMUTE_MY_AUDIO"

    const/16 v5, 0xbf

    const-string v6, "6009"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_UNMUTE_MY_AUDIO:Lcom/google/glass/userevent/UserEventAction;

    .line 274
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "HANGOUTS_SET_PARTICIPANT_AUTO"

    const/16 v5, 0xc0

    const-string v6, "6010"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_SET_PARTICIPANT_AUTO:Lcom/google/glass/userevent/UserEventAction;

    .line 275
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "HANGOUTS_SET_PARTICIPANT_SPECIFIC"

    const/16 v5, 0xc1

    const-string v6, "6011"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_SET_PARTICIPANT_SPECIFIC:Lcom/google/glass/userevent/UserEventAction;

    .line 276
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "HANGOUTS_INVITE"

    const/16 v5, 0xc2

    const-string v6, "6012"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_INVITE:Lcom/google/glass/userevent/UserEventAction;

    .line 277
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "HANGOUTS_ENDED"

    const/16 v5, 0xc3

    const-string v6, "6013"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_ENDED:Lcom/google/glass/userevent/UserEventAction;

    .line 278
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "HANGOUTS_WAITING_SCREEN_DISMISSED"

    const/16 v5, 0xc4

    const-string v6, "6014"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_WAITING_SCREEN_DISMISSED:Lcom/google/glass/userevent/UserEventAction;

    .line 279
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "HANGOUTS_ENTERED_FROM_ACTIVE_CARD"

    const/16 v5, 0xc5

    const-string v6, "6015"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_ENTERED_FROM_ACTIVE_CARD:Lcom/google/glass/userevent/UserEventAction;

    .line 280
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "HANGOUTS_ENDED_FROM_ACTIVE_CARD"

    const/16 v5, 0xc6

    const-string v6, "6016"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_ENDED_FROM_ACTIVE_CARD:Lcom/google/glass/userevent/UserEventAction;

    .line 281
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "HANGOUTS_INCOMING_HANGOUT"

    const/16 v5, 0xc7

    const-string v6, "6017"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_INCOMING_HANGOUT:Lcom/google/glass/userevent/UserEventAction;

    .line 282
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "HANGOUTS_SENT_TO_BACKGROUND"

    const/16 v5, 0xc8

    const-string v6, "6018"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_SENT_TO_BACKGROUND:Lcom/google/glass/userevent/UserEventAction;

    .line 283
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "HANGOUTS_BROUGHT_TO_FOREGROUND"

    const/16 v5, 0xc9

    const-string v6, "6019"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_BROUGHT_TO_FOREGROUND:Lcom/google/glass/userevent/UserEventAction;

    .line 286
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "WAKE_UP_DELAY"

    const/16 v5, 0xca

    const-string v6, "7001"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->WAKE_UP_DELAY:Lcom/google/glass/userevent/UserEventAction;

    .line 287
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "CAMERA_TIMINGS"

    const/16 v5, 0xcb

    const-string v6, "7002"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->PHOTO:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->CAMERA_TIMINGS:Lcom/google/glass/userevent/UserEventAction;

    .line 288
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "UI_THREAD_QUEUE"

    const/16 v5, 0xcc

    const-string v6, "7003"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->UI_THREAD_QUEUE:Lcom/google/glass/userevent/UserEventAction;

    .line 289
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "UI_TIME_BETWEEN_RENDERS"

    const/16 v5, 0xcd

    const-string v6, "7004"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->UI_TIME_BETWEEN_RENDERS:Lcom/google/glass/userevent/UserEventAction;

    .line 290
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "UI_TIME_TO_RENDER"

    const/16 v5, 0xce

    const-string v6, "7005"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->UI_TIME_TO_RENDER:Lcom/google/glass/userevent/UserEventAction;

    .line 291
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VIDEO_TIMINGS"

    const/16 v5, 0xcf

    const-string v6, "7006"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VIDEO:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VIDEO_TIMINGS:Lcom/google/glass/userevent/UserEventAction;

    .line 292
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "START_LISTENING_DELAY"

    const/16 v5, 0xd0

    const-string v6, "7007"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->START_LISTENING_DELAY:Lcom/google/glass/userevent/UserEventAction;

    .line 293
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "TIMED_ACTIVITY"

    const/16 v5, 0xd1

    const-string v6, "7008"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEE_EVENT_DATA:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMED_ACTIVITY:Lcom/google/glass/userevent/UserEventAction;

    .line 294
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "TIMED_BROADCAST_RECEIVER"

    const/16 v5, 0xd2

    const-string v6, "7009"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEE_EVENT_DATA:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMED_BROADCAST_RECEIVER:Lcom/google/glass/userevent/UserEventAction;

    .line 295
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "NOTIFICATION_DATA_LOAD"

    const/16 v5, 0xd3

    const-string v6, "7010"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->NOTIFICATION_DATA_LOAD:Lcom/google/glass/userevent/UserEventAction;

    .line 296
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "MENU_OPENING_DELAY"

    const/16 v5, 0xd4

    const-string v6, "7011"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->MENU_OPENING_DELAY:Lcom/google/glass/userevent/UserEventAction;

    .line 297
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "NOTIFICATION_HTML_PRELOAD"

    const/16 v5, 0xd5

    const-string v6, "7012"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->NOTIFICATION_HTML_PRELOAD:Lcom/google/glass/userevent/UserEventAction;

    .line 298
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "NOTIFICATION_SHOW_REQUESTED"

    const/16 v5, 0xd6

    const-string v6, "7013"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->NOTIFICATION_SHOW_REQUESTED:Lcom/google/glass/userevent/UserEventAction;

    .line 299
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "NOTIFICATION_ATTACHMENT_PRELOAD"

    const/16 v5, 0xd7

    const-string v6, "7014"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->NOTIFICATION_ATTACHMENT_PRELOAD:Lcom/google/glass/userevent/UserEventAction;

    .line 300
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "PICTURE_MENU_DELAY"

    const/16 v5, 0xd8

    const-string v6, "7015"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->PICTURE_MENU_DELAY:Lcom/google/glass/userevent/UserEventAction;

    .line 301
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "ASYNC_THREAD_POOL_CLOG"

    const/16 v5, 0xd9

    const-string v6, "7016"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->ASYNC_THREAD_POOL_CLOG:Lcom/google/glass/userevent/UserEventAction;

    .line 304
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "CONNECTIVITY_BT_PAIRED"

    const/16 v5, 0xda

    const-string v6, "9001"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->CONNECTIVITY:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_BT_PAIRED:Lcom/google/glass/userevent/UserEventAction;

    .line 305
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "CONNECTIVITY_CHECKER"

    const/16 v5, 0xdb

    const-string v6, "9002"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->CONNECTIVITY:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_CHECKER:Lcom/google/glass/userevent/UserEventAction;

    .line 306
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "CONNECTIVITY_BROKEN_NETWORK"

    const/16 v5, 0xdc

    const-string v6, "9003"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->CONNECTIVITY:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_BROKEN_NETWORK:Lcom/google/glass/userevent/UserEventAction;

    .line 307
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "CONNECTIVITY_STATE_PERCENTAGE"

    const/16 v5, 0xdd

    const-string v6, "9004"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->CONNECTIVITY:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_STATE_PERCENTAGE:Lcom/google/glass/userevent/UserEventAction;

    .line 308
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "CONNECTIVITY_STATE_TIME"

    const/16 v5, 0xde

    const-string v6, "9005"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->CONNECTIVITY:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_STATE_TIME:Lcom/google/glass/userevent/UserEventAction;

    .line 309
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "CONNECTIVITY_STATE_SCREEN_ON"

    const/16 v5, 0xdf

    const-string v6, "9006"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->CONNECTIVITY:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_STATE_SCREEN_ON:Lcom/google/glass/userevent/UserEventAction;

    .line 310
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "CONNECTIVITY_BT_PAIRING_LOCAL_CANCEL"

    const/16 v5, 0xe0

    const-string v6, "9007"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->CONNECTIVITY:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_BT_PAIRING_LOCAL_CANCEL:Lcom/google/glass/userevent/UserEventAction;

    .line 311
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "CONNECTIVITY_BT_PAIRING_REMOTE_CANCEL"

    const/16 v5, 0xe1

    const-string v6, "9008"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->CONNECTIVITY:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_BT_PAIRING_REMOTE_CANCEL:Lcom/google/glass/userevent/UserEventAction;

    .line 312
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "CONNECTIVITY_NETWORK_REQUEST"

    const/16 v5, 0xe2

    const-string v6, "9009"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->CONNECTIVITY:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_NETWORK_REQUEST:Lcom/google/glass/userevent/UserEventAction;

    .line 313
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "CONNECTIVITY_WIFI_ASSOCIATE"

    const/16 v5, 0xe3

    const-string v6, "9010"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->CONNECTIVITY:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_WIFI_ASSOCIATE:Lcom/google/glass/userevent/UserEventAction;

    .line 314
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "CONNECTIVITY_WIFI_ENABLE"

    const/16 v5, 0xe4

    const-string v6, "9011"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->CONNECTIVITY:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_WIFI_ENABLE:Lcom/google/glass/userevent/UserEventAction;

    .line 315
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "CONNECTIVITY_BT_ENABLE"

    const/16 v5, 0xe5

    const-string v6, "9012"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->CONNECTIVITY:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_BT_ENABLE:Lcom/google/glass/userevent/UserEventAction;

    .line 316
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "CONNECTIVITY_WIFI_ENCRYPTION_DETECTED"

    const/16 v5, 0xe6

    const-string v6, "9013"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->CONNECTIVITY:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_WIFI_ENCRYPTION_DETECTED:Lcom/google/glass/userevent/UserEventAction;

    .line 317
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "CONNECTIVITY_WIFI_ENCRYPTION_NOT_DETECTED"

    const/16 v5, 0xe7

    const-string v6, "9014"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->CONNECTIVITY:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_WIFI_ENCRYPTION_NOT_DETECTED:Lcom/google/glass/userevent/UserEventAction;

    .line 319
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "CONNECTIVITY_WIFI_SCANNING_STOPPED"

    const/16 v5, 0xe8

    const-string v6, "9015"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->CONNECTIVITY:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_WIFI_SCANNING_STOPPED:Lcom/google/glass/userevent/UserEventAction;

    .line 320
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "CONNECTIVITY_STATUS_CARD"

    const/16 v5, 0xe9

    const-string v6, "9016"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->CONNECTIVITY:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_STATUS_CARD:Lcom/google/glass/userevent/UserEventAction;

    .line 324
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "HEAD_GESTURES_HEAD_WAKE_ENABLED"

    const/16 v5, 0xea

    const-string v6, "10000"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_HEAD_WAKE_ENABLED:Lcom/google/glass/userevent/UserEventAction;

    .line 325
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "HEAD_GESTURES_HEAD_WAKE_DISABLED"

    const/16 v5, 0xeb

    const-string v6, "10001"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_HEAD_WAKE_DISABLED:Lcom/google/glass/userevent/UserEventAction;

    .line 326
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "HEAD_GESTURES_HEAD_WAKE_ANGLE_SETTING"

    const/16 v5, 0xec

    const-string v6, "10002"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_HEAD_WAKE_ANGLE_SETTING:Lcom/google/glass/userevent/UserEventAction;

    .line 327
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "HEAD_GESTURES_HANDSFREE_ABOVE_PITCH"

    const/16 v5, 0xed

    const-string v6, "10100"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_HANDSFREE_ABOVE_PITCH:Lcom/google/glass/userevent/UserEventAction;

    .line 328
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "HEAD_GESTURES_HANDSFREE_DOUBLE_BLINK"

    const/16 v5, 0xee

    const-string v6, "10101"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_HANDSFREE_DOUBLE_BLINK:Lcom/google/glass/userevent/UserEventAction;

    .line 329
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "HEAD_GESTURES_HANDSFREE_BELOW_PITCH"

    const/16 v5, 0xef

    const-string v6, "10102"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_HANDSFREE_BELOW_PITCH:Lcom/google/glass/userevent/UserEventAction;

    .line 330
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "HEAD_GESTURES_PITCH_ON_TAP_TO_WAKE"

    const/16 v5, 0xf0

    const-string v6, "10103"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_PITCH_ON_TAP_TO_WAKE:Lcom/google/glass/userevent/UserEventAction;

    .line 331
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "ACCEL_TAP_DETECTED"

    const/16 v5, 0xf1

    const-string v6, "10105"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->ACCEL_TAP_DETECTED:Lcom/google/glass/userevent/UserEventAction;

    .line 336
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "EYE_GESTURES_WINK_ENABLED"

    const/16 v5, 0xf2

    const-string v6, "11000"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->EYE_GESTURES_WINK_ENABLED:Lcom/google/glass/userevent/UserEventAction;

    .line 337
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "EYE_GESTURES_WINK_DISABLED"

    const/16 v5, 0xf3

    const-string v6, "11001"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->EYE_GESTURES_WINK_DISABLED:Lcom/google/glass/userevent/UserEventAction;

    .line 338
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "EYE_GESTURES_WINK_CALIBRATION_SUCCESS"

    const/16 v5, 0xf4

    const-string v6, "11002"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->EYE_GESTURES_WINK_CALIBRATION_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

    .line 339
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "EYE_GESTURES_WINK_CALIBRATION_FAILURE"

    const/16 v5, 0xf5

    const-string v6, "11003"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->EYE_GESTURES_WINK_CALIBRATION_FAILURE:Lcom/google/glass/userevent/UserEventAction;

    .line 340
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "EYE_GESTURES_WINK_TAKE_PHOTO"

    const/16 v5, 0xf6

    const-string v6, "11010"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->PHOTO:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->EYE_GESTURES_WINK_TAKE_PHOTO:Lcom/google/glass/userevent/UserEventAction;

    .line 343
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "LOOK_AT_SCREEN_ENABLED"

    const/16 v5, 0xf7

    const-string v6, "11100"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->LOOK_AT_SCREEN_ENABLED:Lcom/google/glass/userevent/UserEventAction;

    .line 344
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "LOOK_AT_SCREEN_DISABLED"

    const/16 v5, 0xf8

    const-string v6, "11101"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->LOOK_AT_SCREEN_DISABLED:Lcom/google/glass/userevent/UserEventAction;

    .line 345
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "LOOK_AT_SCREEN_CALIBRATION_SUCCESS"

    const/16 v5, 0xf9

    const-string v6, "11102"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->LOOK_AT_SCREEN_CALIBRATION_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

    .line 346
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "LOOK_AT_SCREEN_CALIBRATION_FAILURE"

    const/16 v5, 0xfa

    const-string v6, "11103"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->LOOK_AT_SCREEN_CALIBRATION_FAILURE:Lcom/google/glass/userevent/UserEventAction;

    .line 349
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "LOOK_AT_SCREEN_NOTIFICATION_GLANCE"

    const/16 v5, 0xfb

    const-string v6, "11111"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->LOOK_AT_SCREEN_NOTIFICATION_GLANCE:Lcom/google/glass/userevent/UserEventAction;

    .line 352
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "BROWSER_PAGE_REQUESTED_EXPLICIT"

    const/16 v5, 0xfc

    const-string v6, "12000"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PAGE_REQUESTED_EXPLICIT:Lcom/google/glass/userevent/UserEventAction;

    .line 353
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "BROWSER_PAGE_REQUESTED_IMPLICIT"

    const/16 v5, 0xfd

    const-string v6, "12001"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PAGE_REQUESTED_IMPLICIT:Lcom/google/glass/userevent/UserEventAction;

    .line 354
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "BROWSER_PAGE_LOADED"

    const/16 v5, 0xfe

    const-string v6, "12002"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PAGE_LOADED:Lcom/google/glass/userevent/UserEventAction;

    .line 355
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "BROWSER_MENU_OPTION"

    const/16 v5, 0xff

    const-string v6, "12003"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->BROWSER_MENU_OPTION:Lcom/google/glass/userevent/UserEventAction;

    .line 356
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "BROWSER_TWO_FINGER_ZOOM"

    const/16 v5, 0x100

    const-string v6, "12004"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->BROWSER_TWO_FINGER_ZOOM:Lcom/google/glass/userevent/UserEventAction;

    .line 357
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "BROWSER_ERROR"

    const/16 v5, 0x101

    const-string v6, "12005"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->BROWSER_ERROR:Lcom/google/glass/userevent/UserEventAction;

    .line 358
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "BROWSER_PRELOAD_REQUESTED"

    const/16 v5, 0x102

    const-string v6, "12006"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PRELOAD_REQUESTED:Lcom/google/glass/userevent/UserEventAction;

    .line 359
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "BROWSER_PRELOAD_SUCCESS"

    const/16 v5, 0x103

    const-string v6, "12007"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PRELOAD_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

    .line 360
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "BROWSER_PRELOAD_ERROR"

    const/16 v5, 0x104

    const-string v6, "12008"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PRELOAD_ERROR:Lcom/google/glass/userevent/UserEventAction;

    .line 361
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "BROWSER_PRELOAD_WASTED"

    const/16 v5, 0x105

    const-string v6, "12009"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PRELOAD_WASTED:Lcom/google/glass/userevent/UserEventAction;

    .line 362
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "BROWSER_SESSION_METRICS"

    const/16 v5, 0x106

    const-string v6, "12010"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->BROWSER_SESSION_METRICS:Lcom/google/glass/userevent/UserEventAction;

    .line 365
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "GUEST_MODE_TURNED_ON"

    const/16 v5, 0x107

    const-string v6, "13000"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->GUEST_MODE_TURNED_ON:Lcom/google/glass/userevent/UserEventAction;

    .line 366
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "GUEST_MODE_TURNED_OFF"

    const/16 v5, 0x108

    const-string v6, "13001"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->GUEST_MODE_TURNED_OFF:Lcom/google/glass/userevent/UserEventAction;

    .line 369
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_SCREENCAST"

    const/16 v5, 0x109

    const-string v6, "14000"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SCREENCAST:Lcom/google/glass/userevent/UserEventAction;

    .line 370
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_SCREENCAST_REMOTE_CONTROL"

    const/16 v5, 0x10a

    const-string v6, "14003"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SCREENCAST_REMOTE_CONTROL:Lcom/google/glass/userevent/UserEventAction;

    .line 371
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_CONNECTED"

    const/16 v5, 0x10b

    const-string v6, "14004"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_CONNECTED:Lcom/google/glass/userevent/UserEventAction;

    .line 372
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_PHOTO_QUEUED_FOR_SYNC"

    const/16 v5, 0x10c

    const-string v6, "14005"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_PHOTO_QUEUED_FOR_SYNC:Lcom/google/glass/userevent/UserEventAction;

    .line 373
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_PHOTO_SYNC_UPON_CONNECTION"

    const/16 v5, 0x10d

    const-string v6, "14006"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_PHOTO_SYNC_UPON_CONNECTION:Lcom/google/glass/userevent/UserEventAction;

    .line 374
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_PHOTO_SYNC_WITH_ACTIVE_CONNECTION"

    const/16 v5, 0x10e

    const-string v6, "14007"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_PHOTO_SYNC_WITH_ACTIVE_CONNECTION:Lcom/google/glass/userevent/UserEventAction;

    .line 378
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_SCREENCAST_FROM_COMPANION"

    const/16 v5, 0x10f

    const-string v6, "14100"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SCREENCAST_FROM_COMPANION:Lcom/google/glass/userevent/UserEventAction;

    .line 379
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_SETUP_FLOW_STARTED"

    const/16 v5, 0x110

    const-string v6, "14101"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SETUP_FLOW_STARTED:Lcom/google/glass/userevent/UserEventAction;

    .line 380
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_SETUP_WELCOME_VIDEO_PLAYED"

    const/16 v5, 0x111

    const-string v6, "14102"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SETUP_WELCOME_VIDEO_PLAYED:Lcom/google/glass/userevent/UserEventAction;

    .line 381
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_SETUP_ACCOUNT_SIGNED_IN"

    const/16 v5, 0x112

    const-string v6, "14103"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SETUP_ACCOUNT_SIGNED_IN:Lcom/google/glass/userevent/UserEventAction;

    .line 382
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_SETUP_PAIRING_VIDEO_PLAYED"

    const/16 v5, 0x113

    const-string v6, "14104"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SETUP_PAIRING_VIDEO_PLAYED:Lcom/google/glass/userevent/UserEventAction;

    .line 383
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_SETUP_PAIRING_STARTED"

    const/16 v5, 0x114

    const-string v6, "14105"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SETUP_PAIRING_STARTED:Lcom/google/glass/userevent/UserEventAction;

    .line 384
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_SETUP_SUCCESS"

    const/16 v5, 0x115

    const-string v6, "14106"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SETUP_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

    .line 385
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_SETUP_FAILED"

    const/16 v5, 0x116

    const-string v6, "14107"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SETUP_FAILED:Lcom/google/glass/userevent/UserEventAction;

    .line 386
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_PHOTO_SYNCED"

    const/16 v5, 0x117

    const-string v6, "14109"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->PHOTO:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_PHOTO_SYNCED:Lcom/google/glass/userevent/UserEventAction;

    .line 387
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_THUMBNAIL_ACTIVATED"

    const/16 v5, 0x118

    const-string v6, "14110"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->PHOTO:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_THUMBNAIL_ACTIVATED:Lcom/google/glass/userevent/UserEventAction;

    .line 388
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_COUNT_TILE_ACTIVATED"

    const/16 v5, 0x119

    const-string v6, "14111"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_COUNT_TILE_ACTIVATED:Lcom/google/glass/userevent/UserEventAction;

    .line 389
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_PAGE_VIEW"

    const/16 v5, 0x11a

    const-string v6, "14112"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_PAGE_VIEW:Lcom/google/glass/userevent/UserEventAction;

    .line 390
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_PAGE_VIEW_ENDED"

    const/16 v5, 0x11b

    const-string v6, "14113"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_PAGE_VIEW_ENDED:Lcom/google/glass/userevent/UserEventAction;

    .line 391
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_API_URL_REQUEST"

    const/16 v5, 0x11c

    const-string v6, "14114"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_API_URL_REQUEST:Lcom/google/glass/userevent/UserEventAction;

    .line 392
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_CONTACT_ADDED"

    const/16 v5, 0x11d

    const-string v6, "14115"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_CONTACT_ADDED:Lcom/google/glass/userevent/UserEventAction;

    .line 393
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_CONTACT_REMOVED"

    const/16 v5, 0x11e

    const-string v6, "14116"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_CONTACT_REMOVED:Lcom/google/glass/userevent/UserEventAction;

    .line 394
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_GLASSWARE_ENABLED"

    const/16 v5, 0x11f

    const-string v6, "14117"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_GLASSWARE_ENABLED:Lcom/google/glass/userevent/UserEventAction;

    .line 395
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_GLASSWARE_DISABLED"

    const/16 v5, 0x120

    const-string v6, "14118"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_GLASSWARE_DISABLED:Lcom/google/glass/userevent/UserEventAction;

    .line 396
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_SHARE_START"

    const/16 v5, 0x121

    const-string v6, "14119"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SHARE_START:Lcom/google/glass/userevent/UserEventAction;

    .line 397
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_SHARE_FAIL"

    const/16 v5, 0x122

    const-string v6, "14120"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SHARE_FAIL:Lcom/google/glass/userevent/UserEventAction;

    .line 398
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_SHARE_SUCCESS"

    const/16 v5, 0x123

    const-string v6, "14121"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SHARE_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

    .line 399
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_SETTINGS"

    const/16 v5, 0x124

    const-string v6, "14122"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SETTINGS:Lcom/google/glass/userevent/UserEventAction;

    .line 400
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_MMS_FORWARDED"

    const/16 v5, 0x125

    const-string v6, "14123"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_MMS_FORWARDED:Lcom/google/glass/userevent/UserEventAction;

    .line 401
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_SET_WALLPAPER"

    const/16 v5, 0x126

    const-string v6, "14124"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SET_WALLPAPER:Lcom/google/glass/userevent/UserEventAction;

    .line 402
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_START_KEYBOARD_TEXT_ENTRY"

    const/16 v5, 0x127

    const-string v6, "14125"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_START_KEYBOARD_TEXT_ENTRY:Lcom/google/glass/userevent/UserEventAction;

    .line 403
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_WEAR_PROMO"

    const/16 v5, 0x128

    const-string v6, "14126"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_WEAR_PROMO:Lcom/google/glass/userevent/UserEventAction;

    .line 404
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_WEAR_PROMO_NOTIFICATION"

    const/16 v5, 0x129

    const-string v6, "14127"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_WEAR_PROMO_NOTIFICATION:Lcom/google/glass/userevent/UserEventAction;

    .line 405
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_WEAR_SETTINGS"

    const/16 v5, 0x12a

    const-string v6, "14128"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_WEAR_SETTINGS:Lcom/google/glass/userevent/UserEventAction;

    .line 408
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "SESSION_MANAGER_SESSION_NEW"

    const/16 v5, 0x12b

    const-string v6, "15000"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->SESSION_MANAGER_SESSION_NEW:Lcom/google/glass/userevent/UserEventAction;

    .line 409
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "SESSION_MANAGER_SESSION_ESTABLISHED"

    const/16 v5, 0x12c

    const-string v6, "15001"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->SESSION_MANAGER_SESSION_ESTABLISHED:Lcom/google/glass/userevent/UserEventAction;

    .line 410
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "SESSION_MANAGER_SESSION_VALID"

    const/16 v5, 0x12d

    const-string v6, "15002"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->SESSION_MANAGER_SESSION_VALID:Lcom/google/glass/userevent/UserEventAction;

    .line 411
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "SESSION_MANAGER_SESSION_INVALID"

    const/16 v5, 0x12e

    const-string v6, "15003"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->SESSION_MANAGER_SESSION_INVALID:Lcom/google/glass/userevent/UserEventAction;

    .line 412
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "SESSION_MANAGER_SESSION_FINISHED"

    const/16 v5, 0x12f

    const-string v6, "15004"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->SESSION_MANAGER_SESSION_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    .line 413
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "SESSION_MANAGER_SESSION_BROKEN"

    const/16 v5, 0x130

    const-string v6, "15005"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->SESSION_MANAGER_SESSION_BROKEN:Lcom/google/glass/userevent/UserEventAction;

    .line 414
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "UPLOAD_SESSION_STARTED"

    const/16 v5, 0x131

    const-string v6, "15100"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_STARTED:Lcom/google/glass/userevent/UserEventAction;

    .line 415
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "UPLOAD_SESSION_CANCELLED"

    const/16 v5, 0x132

    const-string v6, "15101"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_CANCELLED:Lcom/google/glass/userevent/UserEventAction;

    .line 416
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "UPLOAD_SESSION_SERVER_FAILED"

    const/16 v5, 0x133

    const-string v6, "15102"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_SERVER_FAILED:Lcom/google/glass/userevent/UserEventAction;

    .line 417
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "UPLOAD_SESSION_FINISHED"

    const/16 v5, 0x134

    const-string v6, "15103"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    .line 420
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "MUSIC_PLAY"

    const/16 v5, 0x135

    const-string v6, "17000"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->MUSIC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->MUSIC_PLAY:Lcom/google/glass/userevent/UserEventAction;

    .line 421
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "MUSIC_PAUSE"

    const/16 v5, 0x136

    const-string v6, "17001"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->MUSIC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->MUSIC_PAUSE:Lcom/google/glass/userevent/UserEventAction;

    .line 422
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "MUSIC_PREVIOUS_TRACK"

    const/16 v5, 0x137

    const-string v6, "17002"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->MUSIC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->MUSIC_PREVIOUS_TRACK:Lcom/google/glass/userevent/UserEventAction;

    .line 423
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "MUSIC_NEXT_TRACK"

    const/16 v5, 0x138

    const-string v6, "17003"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->MUSIC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->MUSIC_NEXT_TRACK:Lcom/google/glass/userevent/UserEventAction;

    .line 424
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "MUSIC_STOP"

    const/16 v5, 0x139

    const-string v6, "17004"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->MUSIC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->MUSIC_STOP:Lcom/google/glass/userevent/UserEventAction;

    .line 425
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "MUSIC_ERROR"

    const/16 v5, 0x13a

    const-string v6, "17005"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->MUSIC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->MUSIC_ERROR:Lcom/google/glass/userevent/UserEventAction;

    .line 426
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "MUSIC_TRACK_LOADED"

    const/16 v5, 0x13b

    const-string v6, "17006"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->MUSIC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->MUSIC_TRACK_LOADED:Lcom/google/glass/userevent/UserEventAction;

    .line 427
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "MUSIC_AUTOPLAY_RESULT"

    const/16 v5, 0x13c

    const-string v6, "17007"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->MUSIC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->MUSIC_AUTOPLAY_RESULT:Lcom/google/glass/userevent/UserEventAction;

    .line 428
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "MUSIC_RADIO_STATION_PLAYED"

    const/16 v5, 0x13d

    const-string v6, "17008"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->MUSIC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->MUSIC_RADIO_STATION_PLAYED:Lcom/google/glass/userevent/UserEventAction;

    .line 429
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "MUSIC_NOW_PLAYING_USED"

    const/16 v5, 0x13e

    const-string v6, "17009"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->MUSIC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->MUSIC_NOW_PLAYING_USED:Lcom/google/glass/userevent/UserEventAction;

    .line 430
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "MUSIC_RESULTS_SHOWN"

    const/16 v5, 0x13f

    const-string v6, "17010"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->MUSIC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->MUSIC_RESULTS_SHOWN:Lcom/google/glass/userevent/UserEventAction;

    .line 431
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "MUSIC_GLASS_ERROR"

    const/16 v5, 0x140

    const-string v6, "17011"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->MUSIC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->MUSIC_GLASS_ERROR:Lcom/google/glass/userevent/UserEventAction;

    .line 432
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "MUSIC_PLAY_TIME"

    const/16 v5, 0x141

    const-string v6, "17012"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->MUSIC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->MUSIC_PLAY_TIME:Lcom/google/glass/userevent/UserEventAction;

    .line 435
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_INPUT_NO_SPEECH_DETECTED_TREATED_AS_END_OF_SPEECH"

    const/16 v5, 0x142

    const-string v6, "18000"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_NO_SPEECH_DETECTED_TREATED_AS_END_OF_SPEECH:Lcom/google/glass/userevent/UserEventAction;

    .line 437
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_SEARCH_NOT_OK_HTTP_STATUS_RETRYING"

    const/16 v5, 0x143

    const-string v6, "18001"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_NOT_OK_HTTP_STATUS_RETRYING:Lcom/google/glass/userevent/UserEventAction;

    .line 439
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_SEARCH_SEND_DIRECT_GWS_REQUEST"

    const/16 v5, 0x144

    const-string v6, "18002"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_SEND_DIRECT_GWS_REQUEST:Lcom/google/glass/userevent/UserEventAction;

    .line 441
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_INPUT_ERROR_RECOVERED"

    const/16 v5, 0x145

    const-string v6, "18003"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_ERROR_RECOVERED:Lcom/google/glass/userevent/UserEventAction;

    .line 443
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_INPUT_CORRECT_TIP_SHOWN"

    const/16 v5, 0x146

    const-string v6, "18004"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_CORRECT_TIP_SHOWN:Lcom/google/glass/userevent/UserEventAction;

    .line 445
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_INPUT_CORRECT_TIP_HIDDEN"

    const/16 v5, 0x147

    const-string v6, "18005"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_CORRECT_TIP_HIDDEN:Lcom/google/glass/userevent/UserEventAction;

    .line 447
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_INPUT_CORRECTION_STARTED"

    const/16 v5, 0x148

    const-string v6, "18006"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_CORRECTION_STARTED:Lcom/google/glass/userevent/UserEventAction;

    .line 449
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_INPUT_CORRECTION_CONFIRMED"

    const/16 v5, 0x149

    const-string v6, "18007"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_CORRECTION_CONFIRMED:Lcom/google/glass/userevent/UserEventAction;

    .line 451
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_INPUT_CORRECTION_CANCELED"

    const/16 v5, 0x14a

    const-string v6, "18008"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_CORRECTION_CANCELED:Lcom/google/glass/userevent/UserEventAction;

    .line 453
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOICE_INPUT_CORRECTION_TIMED_OUT"

    const/16 v5, 0x14b

    const-string v6, "18009"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_CORRECTION_TIMED_OUT:Lcom/google/glass/userevent/UserEventAction;

    .line 457
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOLUME_CONTROL_ENTERED"

    const/16 v5, 0x14c

    const-string v6, "19000"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOLUME:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOLUME_CONTROL_ENTERED:Lcom/google/glass/userevent/UserEventAction;

    .line 458
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOLUME_CONTROL_EXITED"

    const/16 v5, 0x14d

    const-string v6, "19001"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOLUME:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOLUME_CONTROL_EXITED:Lcom/google/glass/userevent/UserEventAction;

    .line 459
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "VOLUME_CONTROL_CONTEXT"

    const/16 v5, 0x14e

    const-string v6, "19002"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->VOLUME:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->VOLUME_CONTROL_CONTEXT:Lcom/google/glass/userevent/UserEventAction;

    .line 462
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "OOBE_TUTORIAL_STARTED"

    const/16 v5, 0x14f

    const-string v6, "20001"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->OOBE_TUTORIAL_STARTED:Lcom/google/glass/userevent/UserEventAction;

    .line 463
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "OOBE_TUTORIAL_PASSED"

    const/16 v5, 0x150

    const-string v6, "20002"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->OOBE_TUTORIAL_PASSED:Lcom/google/glass/userevent/UserEventAction;

    .line 464
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "OOBE_PAIRING_METHOD_CHOSEN"

    const/16 v5, 0x151

    const-string v6, "20003"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->OOBE_PAIRING_METHOD_CHOSEN:Lcom/google/glass/userevent/UserEventAction;

    .line 465
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "OOBE_SIGNED_IN_SUCCESSFUL"

    const/16 v5, 0x152

    const-string v6, "20004"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->OOBE_SIGNED_IN_SUCCESSFUL:Lcom/google/glass/userevent/UserEventAction;

    .line 466
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "OOBE_SETUP_ERROR"

    const/16 v5, 0x153

    const-string v6, "20005"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->OOBE_SETUP_ERROR:Lcom/google/glass/userevent/UserEventAction;

    .line 467
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "OOBE_CHECKLIST_OPENED"

    const/16 v5, 0x154

    const-string v6, "20006"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->OOBE_CHECKLIST_OPENED:Lcom/google/glass/userevent/UserEventAction;

    .line 468
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "OOBE_CHECKLIST_ITEM_SELECTED"

    const/16 v5, 0x155

    const-string v6, "20007"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->OOBE_CHECKLIST_ITEM_SELECTED:Lcom/google/glass/userevent/UserEventAction;

    .line 469
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "OOBE_CHECKLIST_TIMEOUT"

    const/16 v5, 0x156

    const-string v6, "20008"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->OOBE_CHECKLIST_TIMEOUT:Lcom/google/glass/userevent/UserEventAction;

    .line 470
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "OOBE_CHECKLIST_DIMISS"

    const/16 v5, 0x157

    const-string v6, "20009"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->OOBE_CHECKLIST_DIMISS:Lcom/google/glass/userevent/UserEventAction;

    .line 473
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "SEARCH_FROM_QUERY_SENT_REQUEST"

    const/16 v5, 0x158

    const-string v6, "21000"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEARCH:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->SEARCH_FROM_QUERY_SENT_REQUEST:Lcom/google/glass/userevent/UserEventAction;

    .line 474
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "SEARCH_FROM_QUERY_GOT_RESULTS"

    const/16 v5, 0x159

    const-string v6, "21001"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEARCH:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->SEARCH_FROM_QUERY_GOT_RESULTS:Lcom/google/glass/userevent/UserEventAction;

    .line 475
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "SEARCH_FROM_QUERY_NO_RESULTS"

    const/16 v5, 0x15a

    const-string v6, "21002"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEARCH:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->SEARCH_FROM_QUERY_NO_RESULTS:Lcom/google/glass/userevent/UserEventAction;

    .line 476
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "SEARCH_FROM_QUERY_ON_ERROR"

    const/16 v5, 0x15b

    const-string v6, "21003"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEARCH:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->SEARCH_FROM_QUERY_ON_ERROR:Lcom/google/glass/userevent/UserEventAction;

    .line 477
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "SEARCH_FROM_QUERY_STALE_RESPONSE"

    const/16 v5, 0x15c

    const-string v6, "21004"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SEARCH:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->SEARCH_FROM_QUERY_STALE_RESPONSE:Lcom/google/glass/userevent/UserEventAction;

    .line 480
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "USER_FEEDBACK_STARTED"

    const/16 v5, 0x15d

    const-string v6, "22000"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->USER_FEEDBACK_STARTED:Lcom/google/glass/userevent/UserEventAction;

    .line 481
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "USER_FEEDBACK_ANNOTATED"

    const/16 v5, 0x15e

    const-string v6, "22001"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->USER_FEEDBACK_ANNOTATED:Lcom/google/glass/userevent/UserEventAction;

    .line 482
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "USER_FEEDBACK_SENT"

    const/16 v5, 0x15f

    const-string v6, "22002"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->USER_FEEDBACK_SENT:Lcom/google/glass/userevent/UserEventAction;

    .line 483
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "USER_FEEDBACK_PRIVACY_VIEWED"

    const/16 v5, 0x160

    const-string v6, "22003"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->USER_FEEDBACK_PRIVACY_VIEWED:Lcom/google/glass/userevent/UserEventAction;

    .line 486
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_IOS_CONTACTS_ERRORS"

    const/16 v5, 0x161

    const-string v6, "23000"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_IOS_CONTACTS_ERRORS:Lcom/google/glass/userevent/UserEventAction;

    .line 487
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_IOS_CONTACTS_STARRING"

    const/16 v5, 0x162

    const-string v6, "23001"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_IOS_CONTACTS_STARRING:Lcom/google/glass/userevent/UserEventAction;

    .line 488
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_IOS_CONTACTS_UPLOAD"

    const/16 v5, 0x163

    const-string v6, "23002"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_IOS_CONTACTS_UPLOAD:Lcom/google/glass/userevent/UserEventAction;

    .line 489
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_IOS_CONTACTS_EXITED_FOR_CARDDAV"

    const/16 v5, 0x164

    const-string v6, "23003"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_IOS_CONTACTS_EXITED_FOR_CARDDAV:Lcom/google/glass/userevent/UserEventAction;

    .line 490
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_IOS_CONTACTS_DOWNLOAD"

    const/16 v5, 0x165

    const-string v6, "23004"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_IOS_CONTACTS_DOWNLOAD:Lcom/google/glass/userevent/UserEventAction;

    .line 491
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "COMPANION_IOS_CONTACTS_IMPORT"

    const/16 v5, 0x166

    const-string v6, "23005"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_IOS_CONTACTS_IMPORT:Lcom/google/glass/userevent/UserEventAction;

    .line 494
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "WEAR_COMPANION_CONNECTED"

    const/16 v5, 0x167

    const-string v6, "24000"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->WEAR_COMPANION_CONNECTED:Lcom/google/glass/userevent/UserEventAction;

    .line 495
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "WEAR_COMPANION_DISCONNECTED"

    const/16 v5, 0x168

    const-string v6, "24001"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->WEAR_COMPANION_DISCONNECTED:Lcom/google/glass/userevent/UserEventAction;

    .line 496
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "WEAR_DATA_UPDATED"

    const/16 v5, 0x169

    const-string v6, "24002"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->WEAR_DATA_UPDATED:Lcom/google/glass/userevent/UserEventAction;

    .line 497
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "WEAR_DATA_DELETED"

    const/16 v5, 0x16a

    const-string v6, "24003"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->WEAR_DATA_DELETED:Lcom/google/glass/userevent/UserEventAction;

    .line 498
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "WEAR_VOICE_COMMAND_MISSING"

    const/16 v5, 0x16b

    const-string v6, "24004"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->WEAR_VOICE_COMMAND_MISSING:Lcom/google/glass/userevent/UserEventAction;

    .line 499
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "WEAR_ASSET_ERROR"

    const/16 v5, 0x16c

    const-string v6, "24005"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->WEAR_ASSET_ERROR:Lcom/google/glass/userevent/UserEventAction;

    .line 502
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "MANUAL_SYNC_ALL_REQUESTED"

    const/16 v5, 0x16d

    const-string v6, "13100"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->MANUAL_SYNC_ALL_REQUESTED:Lcom/google/glass/userevent/UserEventAction;

    .line 503
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "MANUAL_SYNC_PHOTOS_REQUESTED"

    const/16 v5, 0x16e

    const-string v6, "13101"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->MANUAL_SYNC_PHOTOS_REQUESTED:Lcom/google/glass/userevent/UserEventAction;

    .line 504
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "MANUAL_CLEAR_SYNCED_MEDIA_REQUESTED"

    const/16 v5, 0x16f

    const-string v6, "13102"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->MANUAL_CLEAR_SYNCED_MEDIA_REQUESTED:Lcom/google/glass/userevent/UserEventAction;

    .line 507
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "SCREEN_OFF_TWO_SWIPE_DOWN"

    const/16 v5, 0x170

    const-string v6, "30101"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->SCREEN_OFF_TWO_SWIPE_DOWN:Lcom/google/glass/userevent/UserEventAction;

    .line 508
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "PACKAGE_INSTALLED"

    const/16 v5, 0x171

    const-string v6, "30102"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->PACKAGE_INSTALLED:Lcom/google/glass/userevent/UserEventAction;

    .line 509
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "CAMERA_BUTTON"

    const/16 v5, 0x172

    const-string v6, "30103"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->CAMERA_BUTTON:Lcom/google/glass/userevent/UserEventAction;

    .line 510
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "LIVE_CARD_DUPLICATE_LISTENER"

    const/16 v5, 0x173

    const-string v6, "30104"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->LIVE_CARD_DUPLICATE_LISTENER:Lcom/google/glass/userevent/UserEventAction;

    .line 511
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "HINGE"

    const/16 v5, 0x174

    const-string v6, "30105"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->HINGE:Lcom/google/glass/userevent/UserEventAction;

    .line 514
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "LOCKSCREEN_RECOVERY_SYNC_SUCCEEDED"

    const/16 v5, 0x175

    const-string v6, "30200"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->LOCKSCREEN_RECOVERY_SYNC_SUCCEEDED:Lcom/google/glass/userevent/UserEventAction;

    .line 515
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "LOCKSCREEN_RECOVERY_SYNC_FAILED"

    const/16 v5, 0x176

    const-string v6, "30201"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->LOCKSCREEN_RECOVERY_SYNC_FAILED:Lcom/google/glass/userevent/UserEventAction;

    .line 516
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "LOCKSCREEN_RESCUE_UNLOCKED"

    const/16 v5, 0x177

    const-string v6, "30202"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->LOCKSCREEN_RESCUE_UNLOCKED:Lcom/google/glass/userevent/UserEventAction;

    .line 517
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "LOCKSCREEN_ACTIVATED"

    const/16 v5, 0x178

    const-string v6, "30203"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->LOCKSCREEN_ACTIVATED:Lcom/google/glass/userevent/UserEventAction;

    .line 518
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "LOCKSCREEN_DISABLED"

    const/16 v5, 0x179

    const-string v6, "30204"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->LOCKSCREEN_DISABLED:Lcom/google/glass/userevent/UserEventAction;

    .line 519
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "LOCKSCREEN_PATTERN_SET"

    const/16 v5, 0x17a

    const-string v6, "30205"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->LOCKSCREEN_PATTERN_SET:Lcom/google/glass/userevent/UserEventAction;

    .line 520
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "LOCKSCREEN_PERMANENTLY_LOCKED"

    const/16 v5, 0x17b

    const-string v6, "30206"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->LOCKSCREEN_PERMANENTLY_LOCKED:Lcom/google/glass/userevent/UserEventAction;

    .line 522
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "LOCKSCREEN_UNLOCKED"

    const/16 v5, 0x17c

    const-string v6, "30207"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_IN_REPONSE_TO_USER:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->LOCKSCREEN_UNLOCKED:Lcom/google/glass/userevent/UserEventAction;

    .line 527
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "AM_ANR"

    const/16 v5, 0x17d

    const-string v6, "30300"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->STABILITY:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->AM_ANR:Lcom/google/glass/userevent/UserEventAction;

    .line 528
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "AM_CRASH"

    const/16 v5, 0x17e

    const-string v6, "30303"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->STABILITY:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->AM_CRASH:Lcom/google/glass/userevent/UserEventAction;

    .line 529
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "SHUTDOWN_REBOOT"

    const/16 v5, 0x17f

    const-string v6, "30304"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->STABILITY:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->SHUTDOWN_REBOOT:Lcom/google/glass/userevent/UserEventAction;

    .line 530
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "AM_PROC_DIED"

    const/16 v5, 0x180

    const-string v6, "30305"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->STABILITY:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->AM_PROC_DIED:Lcom/google/glass/userevent/UserEventAction;

    .line 531
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "FORCED_SHUTDOWN"

    const/16 v5, 0x181

    const-string v6, "30306"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->STABILITY:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->FORCED_SHUTDOWN:Lcom/google/glass/userevent/UserEventAction;

    .line 532
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "FORCED_REBOOT"

    const/16 v5, 0x182

    const-string v6, "30307"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->STABILITY:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->FORCED_REBOOT:Lcom/google/glass/userevent/UserEventAction;

    .line 533
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "SYSTEM_SERVER_EXIT"

    const/16 v5, 0x183

    const-string v6, "30308"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->STABILITY:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->SYSTEM_SERVER_EXIT:Lcom/google/glass/userevent/UserEventAction;

    .line 534
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "NATIVE_CRASH"

    const/16 v5, 0x184

    const-string v6, "30309"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->STABILITY:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->NATIVE_CRASH:Lcom/google/glass/userevent/UserEventAction;

    .line 535
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "NATIVE_CRASH_REGISTERS_ARM"

    const/16 v5, 0x185

    const-string v6, "30310"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->STABILITY:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->NATIVE_CRASH_REGISTERS_ARM:Lcom/google/glass/userevent/UserEventAction;

    .line 538
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "ADB_STATE_CHANGE"

    const/16 v5, 0x186

    const-string v6, "30400"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->ADB_STATE_CHANGE:Lcom/google/glass/userevent/UserEventAction;

    .line 539
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "DEVELOPER_SETTING_KEEP_SCREEN_ON_CHANGED"

    const/16 v5, 0x187

    const-string v6, "30401"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->DEVELOPER_SETTING_KEEP_SCREEN_ON_CHANGED:Lcom/google/glass/userevent/UserEventAction;

    .line 540
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "DEVELOPER_SETTING_SHOW_LAYOUT_BOUNDS_CHANGED"

    const/16 v5, 0x188

    const-string v6, "30402"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->DEVELOPER_SETTING_SHOW_LAYOUT_BOUNDS_CHANGED:Lcom/google/glass/userevent/UserEventAction;

    .line 541
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "DEVELOPER_SETTING_SHOW_GPU_OVERDRAW_CHANGED"

    const/16 v5, 0x189

    const-string v6, "30403"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->DEVELOPER_SETTING_SHOW_GPU_OVERDRAW_CHANGED:Lcom/google/glass/userevent/UserEventAction;

    .line 542
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "DEVELOPER_SETTING_ANIMATION_TIME_SCALE_CHANGED"

    const/16 v5, 0x18a

    const-string v6, "30404"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->DEVELOPER_SETTING_ANIMATION_TIME_SCALE_CHANGED:Lcom/google/glass/userevent/UserEventAction;

    .line 543
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "DEVELOPER_SETTING_LAYOUT_OVERLAY_CHANGED"

    const/16 v5, 0x18b

    const-string v6, "30405"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->DEVELOPER_SETTING_LAYOUT_OVERLAY_CHANGED:Lcom/google/glass/userevent/UserEventAction;

    .line 546
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "FSCK_LOGS"

    const/16 v5, 0x18c

    const-string v6, "30500"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->FSCK_LOGS:Lcom/google/glass/userevent/UserEventAction;

    .line 547
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "FSCK_BOOTCONFIG"

    const/16 v5, 0x18d

    const-string v6, "30501"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->FSCK_BOOTCONFIG:Lcom/google/glass/userevent/UserEventAction;

    .line 550
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "LOW_MEMORY"

    const/16 v5, 0x18e

    const-string v6, "30600"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->LOW_MEMORY:Lcom/google/glass/userevent/UserEventAction;

    .line 551
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "TRIM_MEMORY"

    const/16 v5, 0x18f

    const-string v6, "30601"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->TRIM_MEMORY:Lcom/google/glass/userevent/UserEventAction;

    .line 554
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "CSS_FAILED_LOAD"

    const/16 v5, 0x190

    const-string v6, "30700"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->CSS_FAILED_LOAD:Lcom/google/glass/userevent/UserEventAction;

    .line 557
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "NOTIFICATION_WHILE_SCREEN_OFF"

    const/16 v5, 0x191

    const-string v6, "30800"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->SYSTEM_BACKGROUND:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->NOTIFICATION_WHILE_SCREEN_OFF:Lcom/google/glass/userevent/UserEventAction;

    .line 558
    new-instance v3, Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "NOTIFICATION_VIEWED_FROM_SCREEN_OFF"

    const/16 v5, 0x192

    const-string v6, "30801"

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction$Source;->USER_INITIATED:Lcom/google/glass/userevent/UserEventAction$Source;

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V

    sput-object v3, Lcom/google/glass/userevent/UserEventAction;->NOTIFICATION_VIEWED_FROM_SCREEN_OFF:Lcom/google/glass/userevent/UserEventAction;

    .line 30
    const/16 v0, 0x193

    new-array v0, v0, [Lcom/google/glass/userevent/UserEventAction;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->DUMMY_TEST_EVENT:Lcom/google/glass/userevent/UserEventAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->DEBUG:Lcom/google/glass/userevent/UserEventAction;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->SETUP_BARCODE_SCANNED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->WATCHDOG_ERROR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v1, v0, v14

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->SETUP_ACCOUNT_FAILED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v1, v0, v15

    const/4 v1, 0x5

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->ACCOUNT_RELOGIN:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/4 v1, 0x6

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->SHUTDOWN_IN_SETUP:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/4 v1, 0x7

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->SETUP_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x8

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->BLUETOOTH_DISCOVERABLE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x9

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HOME_ACTIVATED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xa

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HOME_DISMISSED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xb

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->SCREEN_ON:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xc

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->SCREEN_ON_DURATION:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xd

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->USER_INITIATED_SCREEN_ON:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xe

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HANDSFREE_VOICE_ACTION:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xf

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_STARTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x10

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_FIRST_RECOGNITION:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x11

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_END_OF_SPEECH:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x12

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_RECOGNITION:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x13

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_ERROR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x14

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_ERROR_DISMISSED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x15

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_MANUAL_TIMEOUT:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x16

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_MANUAL_ENDPOINT:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x17

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_SILENT_RETRY_RECOVERED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x18

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_NO_SPEECH_DETECTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x19

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->INPUT_BLOCKED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x1a

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_DISMISS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x1b

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_MESSAGE_DISMISS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x1c

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_MESSAGE_MULTIPLE_INPUT_MODES:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x1d

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x1e

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_NO_ANSWER:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x1f

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_FROM_TIMELINE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x20

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_SWIPE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x21

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->SOUND_SEARCH_RESULT:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x22

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_MUSIC_DETECTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x23

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT_PAGE_STARTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x24

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT_PAGE_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x25

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT_RESOURCE_LOADED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x26

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT_CARD_COUNT_STABLE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x27

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT_CARD_COUNT_CHANGED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x28

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT_JS_BRIDGE_INITIALIZED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x29

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT_JAVASCRIPT_ERROR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x2a

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT_JAVASCRIPT_DISABLED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x2b

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT_JS_ONLOAD:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x2c

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT_PARSE_RESPONSE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x2d

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_ITEM_INSERTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x2e

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_ITEM_SHARE_STARTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x2f

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_ITEM_SHARED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x30

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->PHONE_CALL:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x31

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->DEVICE_STORAGE_BLOCK_USER_ACTION:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x32

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VIEWED_BUNDLE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x33

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->BATTERY_STATE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x34

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->TWO_FINGER_ZOOM_OUT:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x35

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->PRESS_TO_SEARCH_DISMISSED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x36

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->FORCE_EVENT_LOG_FLUSH:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x37

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_NAVIGATION:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x38

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VIDEO_PLAYBACK:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x39

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->DEFERRED_CONTENT_LOAD:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x3a

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HEADSET_PLUG:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x3b

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->OTA_TRIGGER:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x3c

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->FACTORY_RESET:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x3d

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HOME_SCREEN_TIP:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x3e

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->KEYBOARD_TEXT_ENTRY_TIP_SHOWN:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x3f

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->KEYBOARD_TEXT_ENTRY_STARTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x40

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->KEYBOARD_TEXT_ENTRY_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x41

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->WIFI_BARCODE_SCANNED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x42

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->WIFI_SCAN_RESULT_TAPPED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x43

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->WIFI_SETUP_VIA_COMPANION:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x44

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->WIFI_CONNECTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x45

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->SEND_MESSAGE_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x46

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->SEND_MESSAGE_INCLUDES_PHOTO:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x47

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->SEND_MESSAGE_COMPLETED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x48

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->REPLY_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x49

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->REPLY_COMPLETED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x4a

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->REPLY_ALL_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x4b

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->REPLY_ALL_COMPLETED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x4c

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->DELETE_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x4d

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->DELETE_COMPLETED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x4e

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->RETRY_REPLY:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x4f

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->MESSAGE_REPLY_NO_COMPANION:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x50

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_DOWNSTREAM_SYNC_STARTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x51

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_DOWNSTREAM_SYNC_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x52

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_DOWNSTREAM_SYNC_BACKOFF:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x53

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_DOWNSTREAM_SYNC_ITEM:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x54

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_UPSTREAM_SYNC_STARTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x55

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_UPSTREAM_SYNC_FINISHED_SUCCESSFULLY:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x56

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_UPSTREAM_SYNC_FINISHED_WITH_ERROR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x57

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_UPSTREAM_SYNC_BACKOFF:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x58

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_SYNC_TRIGGERED_WITH_NO_CONNECTIVITY:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x59

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_STARTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x5a

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_RECOVERABLE_ERROR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x5b

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_FATAL_ERROR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x5c

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_RESUMED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x5d

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x5e

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_SYNC_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x5f

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->OLD_ITEM_PURGER_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x60

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->ENTITY_SYNC_STARTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x61

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->ENTITY_SYNC_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x62

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->ENTITY_SYNC_BACKOFF:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x63

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->LOCATION_SYNC:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x64

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->LOCATION_SYNC_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x65

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->LOCATION_SYNC_FAILED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x66

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->DON_DETECTOR_ENABLED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x67

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->DON_DETECTOR_DISABLED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x68

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->DEVICE_DONNED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x69

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->DEVICE_DOFFED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x6a

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x6b

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_TAPPED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x6c

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN_SCREEN_OFF:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x6d

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->TOUCH_MENU_ENTITY_SELECTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x6e

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_SWIPE_FOR_ALL_CONTACTS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x6f

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_ENTITY_SPOKEN:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x70

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_DISMISSED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x71

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_HOTWORD_MENU_TRANSITION:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x72

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->MIRROR_COMMAND_DISAMBIGUATION_SHOWN:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x73

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->MIRROR_COMMAND_INVOKED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x74

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->NATIVE_COMMAND_INVOKED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x75

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->NATIVE_COMMAND_DISAMBIGUATION_SHOWN:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x76

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->BARCODE_SUCCESSFUL_SCAN:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x77

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->BARCODE_FAILED_SCAN:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x78

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->BARCODE_PICTURE_SCAN:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x79

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->PEOPLE_GRID_START:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x7a

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->PEOPLE_GRID_ITEM_SELECTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x7b

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->PEOPLE_GRID_FILTERED_TIMELINE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x7c

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->PEOPLE_GRID_SEND_MESSAGE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x7d

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->FILTERED_TIMELINE_DISMISS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x7e

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->GLASSWARE_INSTALLED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x7f

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->GLASSWARE_UNINSTALLED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x80

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->MAIN_MENU_ITEM_TRIGGERED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x81

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->MAIN_MENU_ITEMS_LIST:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x82

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->ACTION_RESPONSE_RECEIVED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x83

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->WALLPAPER_UPDATED_ON_GLASS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x84

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->GLASS_SENDING_WALLPAPER_INFO:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x85

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_CARD_LINGER:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x86

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_START:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x87

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_END:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x88

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->TRAVEL_MODE_CHANGE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x89

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_ERROR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x8a

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_START:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x8b

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_RECEIVED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x8c

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_REFINEMENTS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x8d

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_ERROR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x8e

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_END:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x8f

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_SCROLL:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x90

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->SHOW_ROUTE_OVERVIEW:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x91

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->CHANGE_TRIP:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x92

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->SELECT_TRIP:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x93

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->SELECT_REFINEMENT:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x94

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_FROM_TIMELINE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x95

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->SHOW_STEPS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x96

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->MAP_RENDER_ERROR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x97

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->MAP_RENDER_REQUEST_ERROR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x98

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->MAP_RENDER_REQUEST_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x99

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->MAP_RENDER_REQUEST:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x9a

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_LOCATION_LATENCY:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x9b

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_TIMED_OUT_LOCATION:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x9c

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_TIMED_OUT_NETWORK:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x9d

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->MAP_RENDER_CACHE_REQUEST:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x9e

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->MAP_RENDER_CACHE_SIZE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x9f

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_GPS_LOCATION_REQUEST:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xa0

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_GPS_LOCATION_SWITCH:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xa1

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->RECORD_VIDEO_START:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xa2

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->RECORD_VIDEO_END:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xa3

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->RECORD_VIDEO_THUMBNAIL:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xa4

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->RECORD_VIDEO_TRACK_INFO:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xa5

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->PLAY_VIDEO_START:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xa6

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->PLAY_VIDEO_STOP:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xa7

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->PLAY_VIDEO_ERROR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xa8

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VIEWFINDER_START:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xa9

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VIEWFINDER_STOP:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xaa

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->CAMERA_ERROR_CALLBACK:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xab

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->CAMERA_WARMUP:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xac

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->PROTO_REQUEST_DISPATCHER_BATCH:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xad

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_CONNECTION:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xae

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->ANDROID_CHECK_IN:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xaf

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->DEVICE_STORAGE_STATE_CHANGED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xb0

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->USER_EVENT_QUEUE_FULL:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xb1

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->PROTO_REQUEST_DISPATCHER_REQUEST_SIZE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xb2

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->OTA_SUCCESS_STATE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xb3

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->IMAGE_DOWNLOAD_LATENCY:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xb4

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->LOCATION_MANAGER_HELPER_RECEIVED_LOCATION:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xb5

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->LOCATION_MANAGER_HELPER_NO_LOCATION:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xb6

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->WATCHDOG:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xb7

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_ERROR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xb8

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_ENTERED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xb9

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_CREATED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xba

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_CHAT_MESSAGE_RECEIVED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xbb

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_MUTE_REMOTE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xbc

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_MUTE_MY_VIDEO:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xbd

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_UNMUTE_MY_VIDEO:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xbe

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_MUTE_MY_AUDIO:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xbf

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_UNMUTE_MY_AUDIO:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xc0

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_SET_PARTICIPANT_AUTO:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xc1

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_SET_PARTICIPANT_SPECIFIC:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xc2

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_INVITE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xc3

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_ENDED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xc4

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_WAITING_SCREEN_DISMISSED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xc5

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_ENTERED_FROM_ACTIVE_CARD:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xc6

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_ENDED_FROM_ACTIVE_CARD:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xc7

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_INCOMING_HANGOUT:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xc8

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_SENT_TO_BACKGROUND:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xc9

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_BROUGHT_TO_FOREGROUND:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xca

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->WAKE_UP_DELAY:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xcb

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->CAMERA_TIMINGS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xcc

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->UI_THREAD_QUEUE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xcd

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->UI_TIME_BETWEEN_RENDERS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xce

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->UI_TIME_TO_RENDER:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xcf

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VIDEO_TIMINGS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xd0

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->START_LISTENING_DELAY:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xd1

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMED_ACTIVITY:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xd2

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMED_BROADCAST_RECEIVER:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xd3

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->NOTIFICATION_DATA_LOAD:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xd4

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->MENU_OPENING_DELAY:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xd5

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->NOTIFICATION_HTML_PRELOAD:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xd6

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->NOTIFICATION_SHOW_REQUESTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xd7

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->NOTIFICATION_ATTACHMENT_PRELOAD:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xd8

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->PICTURE_MENU_DELAY:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xd9

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->ASYNC_THREAD_POOL_CLOG:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xda

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_BT_PAIRED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xdb

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_CHECKER:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xdc

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_BROKEN_NETWORK:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xdd

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_STATE_PERCENTAGE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xde

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_STATE_TIME:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xdf

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_STATE_SCREEN_ON:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xe0

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_BT_PAIRING_LOCAL_CANCEL:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xe1

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_BT_PAIRING_REMOTE_CANCEL:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xe2

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_NETWORK_REQUEST:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xe3

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_WIFI_ASSOCIATE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xe4

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_WIFI_ENABLE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xe5

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_BT_ENABLE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xe6

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_WIFI_ENCRYPTION_DETECTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xe7

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_WIFI_ENCRYPTION_NOT_DETECTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xe8

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_WIFI_SCANNING_STOPPED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xe9

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_STATUS_CARD:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xea

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_HEAD_WAKE_ENABLED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xeb

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_HEAD_WAKE_DISABLED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xec

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_HEAD_WAKE_ANGLE_SETTING:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xed

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_HANDSFREE_ABOVE_PITCH:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xee

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_HANDSFREE_DOUBLE_BLINK:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xef

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_HANDSFREE_BELOW_PITCH:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xf0

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_PITCH_ON_TAP_TO_WAKE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xf1

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->ACCEL_TAP_DETECTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xf2

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->EYE_GESTURES_WINK_ENABLED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xf3

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->EYE_GESTURES_WINK_DISABLED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xf4

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->EYE_GESTURES_WINK_CALIBRATION_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xf5

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->EYE_GESTURES_WINK_CALIBRATION_FAILURE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xf6

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->EYE_GESTURES_WINK_TAKE_PHOTO:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xf7

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->LOOK_AT_SCREEN_ENABLED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xf8

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->LOOK_AT_SCREEN_DISABLED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xf9

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->LOOK_AT_SCREEN_CALIBRATION_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xfa

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->LOOK_AT_SCREEN_CALIBRATION_FAILURE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xfb

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->LOOK_AT_SCREEN_NOTIFICATION_GLANCE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xfc

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PAGE_REQUESTED_EXPLICIT:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xfd

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PAGE_REQUESTED_IMPLICIT:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xfe

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PAGE_LOADED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0xff

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->BROWSER_MENU_OPTION:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x100

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->BROWSER_TWO_FINGER_ZOOM:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x101

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->BROWSER_ERROR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x102

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PRELOAD_REQUESTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x103

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PRELOAD_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x104

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PRELOAD_ERROR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x105

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PRELOAD_WASTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x106

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->BROWSER_SESSION_METRICS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x107

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->GUEST_MODE_TURNED_ON:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x108

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->GUEST_MODE_TURNED_OFF:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x109

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SCREENCAST:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x10a

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SCREENCAST_REMOTE_CONTROL:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x10b

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_CONNECTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x10c

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_PHOTO_QUEUED_FOR_SYNC:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x10d

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_PHOTO_SYNC_UPON_CONNECTION:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x10e

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_PHOTO_SYNC_WITH_ACTIVE_CONNECTION:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x10f

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SCREENCAST_FROM_COMPANION:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x110

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SETUP_FLOW_STARTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x111

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SETUP_WELCOME_VIDEO_PLAYED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x112

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SETUP_ACCOUNT_SIGNED_IN:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x113

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SETUP_PAIRING_VIDEO_PLAYED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x114

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SETUP_PAIRING_STARTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x115

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SETUP_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x116

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SETUP_FAILED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x117

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_PHOTO_SYNCED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x118

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_THUMBNAIL_ACTIVATED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x119

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_COUNT_TILE_ACTIVATED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x11a

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_PAGE_VIEW:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x11b

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_PAGE_VIEW_ENDED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x11c

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_API_URL_REQUEST:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x11d

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_CONTACT_ADDED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x11e

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_CONTACT_REMOVED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x11f

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_GLASSWARE_ENABLED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x120

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_GLASSWARE_DISABLED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x121

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SHARE_START:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x122

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SHARE_FAIL:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x123

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SHARE_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x124

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SETTINGS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x125

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_MMS_FORWARDED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x126

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SET_WALLPAPER:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x127

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_START_KEYBOARD_TEXT_ENTRY:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x128

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_WEAR_PROMO:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x129

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_WEAR_PROMO_NOTIFICATION:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x12a

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_WEAR_SETTINGS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x12b

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->SESSION_MANAGER_SESSION_NEW:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x12c

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->SESSION_MANAGER_SESSION_ESTABLISHED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x12d

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->SESSION_MANAGER_SESSION_VALID:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x12e

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->SESSION_MANAGER_SESSION_INVALID:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x12f

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->SESSION_MANAGER_SESSION_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x130

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->SESSION_MANAGER_SESSION_BROKEN:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x131

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_STARTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x132

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_CANCELLED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x133

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_SERVER_FAILED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x134

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x135

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->MUSIC_PLAY:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x136

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->MUSIC_PAUSE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x137

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->MUSIC_PREVIOUS_TRACK:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x138

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->MUSIC_NEXT_TRACK:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x139

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->MUSIC_STOP:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x13a

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->MUSIC_ERROR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x13b

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->MUSIC_TRACK_LOADED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x13c

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->MUSIC_AUTOPLAY_RESULT:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x13d

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->MUSIC_RADIO_STATION_PLAYED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x13e

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->MUSIC_NOW_PLAYING_USED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x13f

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->MUSIC_RESULTS_SHOWN:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x140

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->MUSIC_GLASS_ERROR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x141

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->MUSIC_PLAY_TIME:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x142

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_NO_SPEECH_DETECTED_TREATED_AS_END_OF_SPEECH:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x143

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_NOT_OK_HTTP_STATUS_RETRYING:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x144

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_SEND_DIRECT_GWS_REQUEST:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x145

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_ERROR_RECOVERED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x146

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_CORRECT_TIP_SHOWN:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x147

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_CORRECT_TIP_HIDDEN:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x148

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_CORRECTION_STARTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x149

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_CORRECTION_CONFIRMED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x14a

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_CORRECTION_CANCELED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x14b

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_CORRECTION_TIMED_OUT:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x14c

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOLUME_CONTROL_ENTERED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x14d

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOLUME_CONTROL_EXITED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x14e

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOLUME_CONTROL_CONTEXT:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x14f

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->OOBE_TUTORIAL_STARTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x150

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->OOBE_TUTORIAL_PASSED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x151

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->OOBE_PAIRING_METHOD_CHOSEN:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x152

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->OOBE_SIGNED_IN_SUCCESSFUL:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x153

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->OOBE_SETUP_ERROR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x154

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->OOBE_CHECKLIST_OPENED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x155

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->OOBE_CHECKLIST_ITEM_SELECTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x156

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->OOBE_CHECKLIST_TIMEOUT:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x157

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->OOBE_CHECKLIST_DIMISS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x158

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->SEARCH_FROM_QUERY_SENT_REQUEST:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x159

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->SEARCH_FROM_QUERY_GOT_RESULTS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x15a

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->SEARCH_FROM_QUERY_NO_RESULTS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x15b

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->SEARCH_FROM_QUERY_ON_ERROR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x15c

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->SEARCH_FROM_QUERY_STALE_RESPONSE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x15d

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->USER_FEEDBACK_STARTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x15e

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->USER_FEEDBACK_ANNOTATED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x15f

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->USER_FEEDBACK_SENT:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x160

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->USER_FEEDBACK_PRIVACY_VIEWED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x161

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_IOS_CONTACTS_ERRORS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x162

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_IOS_CONTACTS_STARRING:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x163

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_IOS_CONTACTS_UPLOAD:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x164

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_IOS_CONTACTS_EXITED_FOR_CARDDAV:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x165

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_IOS_CONTACTS_DOWNLOAD:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x166

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_IOS_CONTACTS_IMPORT:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x167

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->WEAR_COMPANION_CONNECTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x168

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->WEAR_COMPANION_DISCONNECTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x169

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->WEAR_DATA_UPDATED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x16a

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->WEAR_DATA_DELETED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x16b

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->WEAR_VOICE_COMMAND_MISSING:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x16c

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->WEAR_ASSET_ERROR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x16d

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->MANUAL_SYNC_ALL_REQUESTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x16e

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->MANUAL_SYNC_PHOTOS_REQUESTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x16f

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->MANUAL_CLEAR_SYNCED_MEDIA_REQUESTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x170

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->SCREEN_OFF_TWO_SWIPE_DOWN:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x171

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->PACKAGE_INSTALLED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x172

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->CAMERA_BUTTON:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x173

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->LIVE_CARD_DUPLICATE_LISTENER:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x174

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HINGE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x175

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->LOCKSCREEN_RECOVERY_SYNC_SUCCEEDED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x176

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->LOCKSCREEN_RECOVERY_SYNC_FAILED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x177

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->LOCKSCREEN_RESCUE_UNLOCKED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x178

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->LOCKSCREEN_ACTIVATED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x179

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->LOCKSCREEN_DISABLED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x17a

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->LOCKSCREEN_PATTERN_SET:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x17b

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->LOCKSCREEN_PERMANENTLY_LOCKED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x17c

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->LOCKSCREEN_UNLOCKED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x17d

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->AM_ANR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x17e

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->AM_CRASH:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x17f

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->SHUTDOWN_REBOOT:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x180

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->AM_PROC_DIED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x181

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->FORCED_SHUTDOWN:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x182

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->FORCED_REBOOT:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x183

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->SYSTEM_SERVER_EXIT:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x184

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->NATIVE_CRASH:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x185

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->NATIVE_CRASH_REGISTERS_ARM:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x186

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->ADB_STATE_CHANGE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x187

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->DEVELOPER_SETTING_KEEP_SCREEN_ON_CHANGED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x188

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->DEVELOPER_SETTING_SHOW_LAYOUT_BOUNDS_CHANGED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x189

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->DEVELOPER_SETTING_SHOW_GPU_OVERDRAW_CHANGED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x18a

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->DEVELOPER_SETTING_ANIMATION_TIME_SCALE_CHANGED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x18b

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->DEVELOPER_SETTING_LAYOUT_OVERLAY_CHANGED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x18c

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->FSCK_LOGS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x18d

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->FSCK_BOOTCONFIG:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x18e

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->LOW_MEMORY:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x18f

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->TRIM_MEMORY:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x190

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->CSS_FAILED_LOAD:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x191

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->NOTIFICATION_WHILE_SCREEN_OFF:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    const/16 v1, 0x192

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->NOTIFICATION_VIEWED_FROM_SCREEN_OFF:Lcom/google/glass/userevent/UserEventAction;

    aput-object v3, v0, v1

    sput-object v0, Lcom/google/glass/userevent/UserEventAction;->$VALUES:[Lcom/google/glass/userevent/UserEventAction;

    .line 591
    new-array v0, v12, [Ljava/lang/String;

    const-string v1, "i"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/glass/userevent/UserEventAction;->PACKAGE_INSTALLED_PARAMS:[Ljava/lang/String;

    .line 592
    new-array v0, v12, [Ljava/lang/String;

    const-string v1, "a"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/glass/userevent/UserEventAction;->CAMERA_BUTTON_PARAMS:[Ljava/lang/String;

    .line 593
    new-array v0, v13, [Ljava/lang/String;

    const-string v1, "s"

    aput-object v1, v0, v2

    const-string v1, "t"

    aput-object v1, v0, v12

    sput-object v0, Lcom/google/glass/userevent/UserEventAction;->HINGE_PARAMS:[Ljava/lang/String;

    .line 597
    new-array v0, v12, [Ljava/lang/String;

    const-string v1, "a"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/glass/userevent/UserEventAction;->LOCKSCREEN_UNLOCKED_PARAMS:[Ljava/lang/String;

    .line 598
    new-array v0, v13, [Ljava/lang/String;

    const-string v1, "ohd_active"

    aput-object v1, v0, v2

    const-string v1, "m"

    aput-object v1, v0, v12

    sput-object v0, Lcom/google/glass/userevent/UserEventAction;->DEVICE_DONNED_PARAMS:[Ljava/lang/String;

    .line 602
    new-array v0, v14, [Ljava/lang/String;

    const-string v1, "ohd_active"

    aput-object v1, v0, v2

    const-string v1, "don_time_ms"

    aput-object v1, v0, v12

    const-string v1, "m"

    aput-object v1, v0, v13

    sput-object v0, Lcom/google/glass/userevent/UserEventAction;->DEVICE_DOFFED_PARAMS:[Ljava/lang/String;

    .line 607
    new-array v0, v14, [Ljava/lang/String;

    const-string v1, "dir"

    aput-object v1, v0, v2

    const-string v1, "count"

    aput-object v1, v0, v12

    const-string v1, "v"

    aput-object v1, v0, v13

    sput-object v0, Lcom/google/glass/userevent/UserEventAction;->ACCEL_TAP_PARAMS:[Ljava/lang/String;

    .line 612
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "u"

    aput-object v1, v0, v2

    const-string v1, "pid"

    aput-object v1, v0, v12

    const-string v1, "n"

    aput-object v1, v0, v13

    const-string v1, "f"

    aput-object v1, v0, v14

    const-string v1, "r"

    aput-object v1, v0, v15

    sput-object v0, Lcom/google/glass/userevent/UserEventAction;->AM_ANR_PARAMS:[Ljava/lang/String;

    .line 619
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pid"

    aput-object v1, v0, v2

    const-string v1, "u"

    aput-object v1, v0, v12

    const-string v1, "n"

    aput-object v1, v0, v13

    const-string v1, "f"

    aput-object v1, v0, v14

    const-string v1, "e"

    aput-object v1, v0, v15

    const/4 v1, 0x5

    const-string v3, "m"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "s"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "l"

    aput-object v3, v0, v1

    sput-object v0, Lcom/google/glass/userevent/UserEventAction;->AM_CRASH_PARAMS:[Ljava/lang/String;

    .line 629
    new-array v0, v13, [Ljava/lang/String;

    const-string v1, "r"

    aput-object v1, v0, v2

    const-string v1, "p"

    aput-object v1, v0, v12

    sput-object v0, Lcom/google/glass/userevent/UserEventAction;->SHUTDOWN_REBOOT_PARAMS:[Ljava/lang/String;

    .line 633
    new-array v0, v15, [Ljava/lang/String;

    const-string v1, "u"

    aput-object v1, v0, v2

    const-string v1, "i"

    aput-object v1, v0, v12

    const-string v1, "p"

    aput-object v1, v0, v13

    const-string v1, "r"

    aput-object v1, v0, v14

    sput-object v0, Lcom/google/glass/userevent/UserEventAction;->AM_PROC_DIED_PARAMS:[Ljava/lang/String;

    .line 639
    new-array v0, v12, [Ljava/lang/String;

    const-string v1, "r"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/glass/userevent/UserEventAction;->FORCED_SHUTDOWN_PARAMS:[Ljava/lang/String;

    .line 642
    new-array v0, v12, [Ljava/lang/String;

    const-string v1, "r"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/glass/userevent/UserEventAction;->FORCED_REBOOT_PARAMS:[Ljava/lang/String;

    .line 645
    new-array v0, v13, [Ljava/lang/String;

    const-string v1, "s"

    aput-object v1, v0, v2

    const-string v1, "rc"

    aput-object v1, v0, v12

    sput-object v0, Lcom/google/glass/userevent/UserEventAction;->SYSTEM_SERVER_EXIT_PARAMS:[Ljava/lang/String;

    .line 649
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "tid"

    aput-object v1, v0, v2

    const-string v1, "pid"

    aput-object v1, v0, v12

    const-string v1, "t"

    aput-object v1, v0, v13

    const-string v1, "p"

    aput-object v1, v0, v14

    const-string v1, "sn"

    aput-object v1, v0, v15

    const/4 v1, 0x5

    const-string v3, "sc"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "a"

    aput-object v3, v0, v1

    sput-object v0, Lcom/google/glass/userevent/UserEventAction;->NATIVE_CRASH_PARAMS:[Ljava/lang/String;

    .line 658
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "tid"

    aput-object v1, v0, v2

    const-string v1, "r0"

    aput-object v1, v0, v12

    const-string v1, "r1"

    aput-object v1, v0, v13

    const-string v1, "r2"

    aput-object v1, v0, v14

    const-string v1, "r3"

    aput-object v1, v0, v15

    const/4 v1, 0x5

    const-string v3, "r4"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "r5"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "r6"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "r7"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-string v3, "r8"

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v3, "r9"

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-string v3, "r10"

    aput-object v3, v0, v1

    const/16 v1, 0xc

    const-string v3, "fp"

    aput-object v3, v0, v1

    const/16 v1, 0xd

    const-string v3, "ip"

    aput-object v3, v0, v1

    const/16 v1, 0xe

    const-string v3, "sp"

    aput-object v3, v0, v1

    const/16 v1, 0xf

    const-string v3, "lr"

    aput-object v3, v0, v1

    const/16 v1, 0x10

    const-string v3, "pc"

    aput-object v3, v0, v1

    const/16 v1, 0x11

    const-string v3, "cpsr"

    aput-object v3, v0, v1

    sput-object v0, Lcom/google/glass/userevent/UserEventAction;->NATIVE_CRASH_REGISTERS_ARM_PARAMS:[Ljava/lang/String;

    .line 663
    new-array v0, v13, [Ljava/lang/String;

    const-string v1, "t"

    aput-object v1, v0, v2

    const-string v1, "p"

    aput-object v1, v0, v12

    sput-object v0, Lcom/google/glass/userevent/UserEventAction;->NOTIFICATION_VIEWED_FROM_SCREEN_OFF_PARAMS:[Ljava/lang/String;

    .line 843
    new-array v0, v12, [Ljava/lang/String;

    const-string v1, "s"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/glass/userevent/UserEventAction;->RECORD_VIDEO_TRACK_INFO_PARAMS:[Ljava/lang/String;

    .line 1566
    const-class v0, Lcom/google/glass/userevent/UserEventAction;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v10

    .line 1567
    .local v10, "actionEnumSet":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/google/glass/userevent/UserEventAction;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v11

    .line 1568
    .local v11, "nameToActionBuilder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Lcom/google/glass/userevent/UserEventAction;>;"
    invoke-virtual {v10}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/glass/userevent/UserEventAction;

    .line 1569
    .local v9, "actionEnum":Lcom/google/glass/userevent/UserEventAction;
    iget-object v1, v9, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    invoke-virtual {v11, v1, v9}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 1571
    .end local v9    # "actionEnum":Lcom/google/glass/userevent/UserEventAction;
    :cond_0
    invoke-virtual {v11}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/glass/userevent/UserEventAction;->NAME_TO_ACTION:Lcom/google/common/collect/ImmutableMap;

    .line 1582
    const/16 v0, 0x7c

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    .line 1583
    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->omitEmptyStrings()Lcom/google/common/base/Splitter;

    move-result-object v0

    const-string v1, "="

    .line 1584
    invoke-virtual {v0, v1}, Lcom/google/common/base/Splitter;->withKeyValueSeparator(Ljava/lang/String;)Lcom/google/common/base/Splitter$MapSplitter;

    move-result-object v0

    sput-object v0, Lcom/google/glass/userevent/UserEventAction;->SPLITTER:Lcom/google/common/base/Splitter$MapSplitter;

    .line 1582
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/glass/userevent/UserEventAction$Category;Lcom/google/glass/userevent/UserEventAction$Source;)V
    .locals 0
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "category"    # Lcom/google/glass/userevent/UserEventAction$Category;
    .param p5, "source"    # Lcom/google/glass/userevent/UserEventAction$Source;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/glass/userevent/UserEventAction$Category;",
            "Lcom/google/glass/userevent/UserEventAction$Source;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1557
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1558
    iput-object p3, p0, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    .line 1559
    iput-object p4, p0, Lcom/google/glass/userevent/UserEventAction;->category:Lcom/google/glass/userevent/UserEventAction$Category;

    .line 1560
    iput-object p5, p0, Lcom/google/glass/userevent/UserEventAction;->source:Lcom/google/glass/userevent/UserEventAction$Source;

    .line 1561
    return-void
.end method

.method public static fromAction(Ljava/lang/String;)Lcom/google/glass/userevent/UserEventAction;
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 1579
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->NAME_TO_ACTION:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/userevent/UserEventAction;

    return-object v0
.end method

.method public static parseKeyValueData(Ljava/lang/String;)Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1590
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->SPLITTER:Lcom/google/common/base/Splitter$MapSplitter;

    invoke-virtual {v0, p0}, Lcom/google/common/base/Splitter$MapSplitter;->split(Ljava/lang/CharSequence;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/userevent/UserEventAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/google/glass/userevent/UserEventAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/userevent/UserEventAction;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/userevent/UserEventAction;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->$VALUES:[Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0}, [Lcom/google/glass/userevent/UserEventAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/userevent/UserEventAction;

    return-object v0
.end method
