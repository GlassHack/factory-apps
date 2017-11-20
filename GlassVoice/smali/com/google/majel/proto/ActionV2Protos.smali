.class public interface abstract Lcom/google/majel/proto/ActionV2Protos;
.super Ljava/lang/Object;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;,
        Lcom/google/majel/proto/ActionV2Protos$TargetDevice;,
        Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;,
        Lcom/google/majel/proto/ActionV2Protos$IntentAction;,
        Lcom/google/majel/proto/ActionV2Protos$MediaItem;,
        Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;,
        Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;,
        Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;,
        Lcom/google/majel/proto/ActionV2Protos$AgendaAction;,
        Lcom/google/majel/proto/ActionV2Protos$JavaScriptCallAction;,
        Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;,
        Lcom/google/majel/proto/ActionV2Protos$DeferredAction;,
        Lcom/google/majel/proto/ActionV2Protos$SearchAction;,
        Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;,
        Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;,
        Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;,
        Lcom/google/majel/proto/ActionV2Protos$HelpAction;,
        Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;,
        Lcom/google/majel/proto/ActionV2Protos$LocalizedString;,
        Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;,
        Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;,
        Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;,
        Lcom/google/majel/proto/ActionV2Protos$GogglesAction;,
        Lcom/google/majel/proto/ActionV2Protos$SoundSearchTvAction;,
        Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;,
        Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;,
        Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;,
        Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;,
        Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;,
        Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;,
        Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;,
        Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;,
        Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;,
        Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;,
        Lcom/google/majel/proto/ActionV2Protos$ParseArgument;,
        Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;,
        Lcom/google/majel/proto/ActionV2Protos$EmailAction;,
        Lcom/google/majel/proto/ActionV2Protos$SMSAction;,
        Lcom/google/majel/proto/ActionV2Protos$CallMyVoicemailAction;,
        Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;,
        Lcom/google/majel/proto/ActionV2Protos$PhoneAction;,
        Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;,
        Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;,
        Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;,
        Lcom/google/majel/proto/ActionV2Protos$MapAction;,
        Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;,
        Lcom/google/majel/proto/ActionV2Protos$StopNavigationAction;,
        Lcom/google/majel/proto/ActionV2Protos$NavigationAction;,
        Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;,
        Lcom/google/majel/proto/ActionV2Protos$ActionContact;,
        Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;,
        Lcom/google/majel/proto/ActionV2Protos$ContactEmail;,
        Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;,
        Lcom/google/majel/proto/ActionV2Protos$Location;,
        Lcom/google/majel/proto/ActionV2Protos$ActionField;,
        Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;,
        Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;,
        Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    }
.end annotation


# static fields
.field public static final ACTION_TYPE_ADD_CALENDAR_EVENT:I = 0xc

.field public static final ACTION_TYPE_ADD_RELATIONSHIP:I = 0x2e

.field public static final ACTION_TYPE_AGENDA:I = 0x29

.field public static final ACTION_TYPE_AT_HOME_POWER_CONTROL:I = 0x1d

.field public static final ACTION_TYPE_CALL_MY_VOICEMAIL:I = 0x26

.field public static final ACTION_TYPE_CHANGE_AIRPLANE_MODE:I = 0x34

.field public static final ACTION_TYPE_CHANGE_BLUETOOTH_SETTING:I = 0x33

.field public static final ACTION_TYPE_CHANGE_DISPLAY_SETTING:I = 0x35

.field public static final ACTION_TYPE_CHANGE_GPS_SETTING:I = 0x40

.field public static final ACTION_TYPE_CHANGE_SOUND_SETTING:I = 0x36

.field public static final ACTION_TYPE_CHANGE_WIFI_SETTING:I = 0x32

.field public static final ACTION_TYPE_CONTACT_UPLOAD_OPT_IN:I = 0x2b

.field public static final ACTION_TYPE_DEPRECATED_DISPLAY_ANSWER:I = 0x12

.field public static final ACTION_TYPE_DEPRECATED_MULTIPLE_LOCAL_RESULTS:I = 0x15

.field public static final ACTION_TYPE_DEPRECATED_POST_UPDATE:I = 0x10

.field public static final ACTION_TYPE_DEPRECATED_SINGLE_LOCAL_RESULT:I = 0x14

.field public static final ACTION_TYPE_DEPRECATED_WEB_RESULT:I = 0x11

.field public static final ACTION_TYPE_DICTIONARY_RESULT:I = 0x1a

.field public static final ACTION_TYPE_DIRECTIONS:I = 0xd

.field public static final ACTION_TYPE_DOWNLOAD_APP:I = 0x24

.field public static final ACTION_TYPE_EMAIL:I = 0x2

.field public static final ACTION_TYPE_FLIGHT_RESULT:I = 0x18

.field public static final ACTION_TYPE_GMM_ACTION:I = 0x3f

.field public static final ACTION_TYPE_GOGGLES:I = 0x3b

.field public static final ACTION_TYPE_HELP:I = 0x25

.field public static final ACTION_TYPE_HTML_ANSWER:I = 0x13

.field public static final ACTION_TYPE_IMAGE_RESULTS:I = 0x16

.field public static final ACTION_TYPE_INTENT_ACTION:I = 0x30

.field public static final ACTION_TYPE_INTENT_ACTION_CALL_VOICEMAIL:I = 0x41

.field public static final ACTION_TYPE_INTENT_ACTION_PHOTO:I = 0x3d

.field public static final ACTION_TYPE_INTENT_ACTION_VIDEO:I = 0x3e

.field public static final ACTION_TYPE_JAVASCRIPT_CALL:I = 0x3c

.field public static final ACTION_TYPE_LOCAL_BUY:I = 0x44

.field public static final ACTION_TYPE_LOCATE_DEVICE:I = 0x42

.field public static final ACTION_TYPE_MAP:I = 0xe

.field public static final ACTION_TYPE_MEDIA_CONTROL:I = 0x38

.field public static final ACTION_TYPE_NAVIGATION:I = 0xf

.field public static final ACTION_TYPE_OPEN_APP:I = 0x3

.field public static final ACTION_TYPE_OPEN_BOOK:I = 0x20

.field public static final ACTION_TYPE_OPEN_URL:I = 0x5

.field public static final ACTION_TYPE_PHONE_CALL_AMBIGUOUS:I = 0x2a

.field public static final ACTION_TYPE_PHONE_CALL_BUSINESS:I = 0x9

.field public static final ACTION_TYPE_PHONE_CALL_CONTACT:I = 0xa

.field public static final ACTION_TYPE_PHONE_CALL_NUMBER:I = 0x1c

.field public static final ACTION_TYPE_PLAY_MEDIA:I = 0x4

.field public static final ACTION_TYPE_PLAY_MOVIE:I = 0x1f

.field public static final ACTION_TYPE_PLAY_MUSIC:I = 0x1e

.field public static final ACTION_TYPE_PUNT:I = 0x19

.field public static final ACTION_TYPE_READ_NOTIFICATION:I = 0x2c

.field public static final ACTION_TYPE_REMOVE_RELATIONSHIP:I = 0x2f

.field public static final ACTION_TYPE_RESERVE_RESTAURANT:I = 0x2d

.field public static final ACTION_TYPE_SELF_NOTE:I = 0x6

.field public static final ACTION_TYPE_SET_ALARM:I = 0x8

.field public static final ACTION_TYPE_SET_LOCATION_REMINDER:I = 0x22

.field public static final ACTION_TYPE_SET_TIMER:I = 0x37

.field public static final ACTION_TYPE_SHOPPING_EXPRESS_BUY:I = 0x43

.field public static final ACTION_TYPE_SHOW_CALENDAR_EVENT:I = 0xb

.field public static final ACTION_TYPE_SHOW_CONTACT_INFORMATION:I = 0x21

.field public static final ACTION_TYPE_SHOW_FRIEND_INTEL:I = 0x28

.field public static final ACTION_TYPE_SMS:I = 0x1

.field public static final ACTION_TYPE_SOUND_SEARCH:I = 0x39

.field public static final ACTION_TYPE_SOUND_SEARCH_TV:I = 0x3a

.field public static final ACTION_TYPE_SPORTS_RESULT:I = 0x1b

.field public static final ACTION_TYPE_STOP_NAVIGATION:I = 0x27

.field public static final ACTION_TYPE_UNKNOWN_ACTION:I = 0x31

.field public static final ACTION_TYPE_UNKNOWN_ACTION_TYPE:I = 0x0

.field public static final ACTION_TYPE_UPDATE_SOCIAL_NETWORK:I = 0x7

.field public static final ACTION_TYPE_VIDEO_CALL:I = 0x23

.field public static final ACTION_TYPE_WEATHER_RESULT:I = 0x17
