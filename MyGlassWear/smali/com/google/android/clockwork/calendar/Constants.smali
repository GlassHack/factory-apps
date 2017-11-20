.class public final Lcom/google/android/clockwork/calendar/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACTION_CALENDAR_DISPLAY:Ljava/lang/String; = "com.google.android.wearable.app.calendar.action.DISPLAY"

.field public static final ACTION_REPLY_TRANSCRIPT_FIELD:Ljava/lang/String; = "reply"

.field public static final CAL_DATA_ITEM_NAME_PREFIX:Ljava/lang/String; = "/calendar/cal/"

.field public static final CAL_NOTIFICATION_TAG:Ljava/lang/String; = "cal_notif"

.field public static final EMAIL_ADDRESSES:Ljava/lang/String; = "email_addresses"

.field public static final EMAIL_SUBJECT:Ljava/lang/String; = "email_subject"

.field public static final EMAIL_TEXT:Ljava/lang/String; = "email_text"

.field public static final EVENT_INSTANCE:Ljava/lang/String; = "event_instance"

.field public static final EVENT_LOCATION_MAP:Ljava/lang/String; = "map"

.field public static final EXTRA_DATA_ITEM_PATHS:Ljava/lang/String; = "data_item_paths"

.field public static final FEATURE_TAG:Ljava/lang/String; = "calendar"

.field public static final GROUP_DATA_ITEM_NAME:Ljava/lang/String; = "/cal/top/0"

.field public static final GROUP_KEY:Ljava/lang/String; = "/cal/top/0"

.field public static final MS_PER_MIN:J = 0xea60L

.field public static final OTHER_NODE:Ljava/lang/String; = "othernode"

.field public static final PATH_CAL_RPC_WITH_FEATURE:Ljava/lang/String;

.field public static final PREF_BUNDLE_DISMISSED:Ljava/lang/String; = "calBundleDismissed"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    const-string v0, "calendar"

    const-string v1, "/cal"

    invoke-static {v0, v1}, Lcom/google/android/clockwork/host/WearableHostUtil;->pathWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/calendar/Constants;->PATH_CAL_RPC_WITH_FEATURE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
