.class public Lcom/android/providers/calendar/CalendarProvider2;
.super Lcom/android/providers/calendar/SQLiteContentProvider;
.source "CalendarProvider2.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/CalendarProvider2$AccountsUpdatedThread;,
        Lcom/android/providers/calendar/CalendarProvider2$TimezoneCheckerThread;,
        Lcom/android/providers/calendar/CalendarProvider2$PostInitializeThread;
    }
.end annotation


# static fields
.field private static final ACCOUNT_PROJECTION:[Ljava/lang/String;

.field private static final ALLDAY_TIME_PROJECTION:[Ljava/lang/String;

.field private static final ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALLOWED_URI_PARAMETERS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final COLORS_PROJECTION:[Ljava/lang/String;

.field private static final DONT_CLONE_INTO_EXCEPTION:[Ljava/lang/String;

.field private static final EVENTS_PROJECTION:[Ljava/lang/String;

.field private static final ID_ONLY_PROJECTION:[Ljava/lang/String;

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final PROVIDER_WRITABLE_DEFAULT_COLUMNS:[Ljava/lang/String;

.field private static final SEARCH_COLUMNS:[Ljava/lang/String;

.field private static final SEARCH_ESCAPE_PATTERN:Ljava/util/regex/Pattern;

.field private static final SEARCH_TOKEN_PATTERN:Ljava/util/regex/Pattern;

.field private static final SYNC_WRITABLE_DEFAULT_COLUMNS:[Ljava/lang/String;

.field private static mInstance:Lcom/android/providers/calendar/CalendarProvider2;

.field private static final sAttendeesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCalendarAlertsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCalendarCacheProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCalendarsIdProjection:[Ljava/lang/String;

.field protected static final sCalendarsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sColorsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCountProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sEventEntitiesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sEventsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sInstancesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRemindersProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final mBroadcastHandler:Landroid/os/Handler;

.field protected mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

.field mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

.field private mInstancesHelper:Lcom/android/providers/calendar/CalendarInstancesHelper;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mMetaData:Lcom/android/providers/calendar/MetaData;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 101
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ID_ONLY_PROJECTION:[Ljava/lang/String;

    .line 104
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_sync_id"

    aput-object v1, v0, v3

    const-string v1, "rrule"

    aput-object v1, v0, v4

    const-string v1, "rdate"

    aput-object v1, v0, v5

    const-string v1, "original_id"

    aput-object v1, v0, v6

    const-string v1, "original_sync_id"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->EVENTS_PROJECTION:[Ljava/lang/String;

    .line 118
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "account_name"

    aput-object v1, v0, v3

    const-string v1, "account_type"

    aput-object v1, v0, v4

    const-string v1, "color_type"

    aput-object v1, v0, v5

    const-string v1, "color_index"

    aput-object v1, v0, v6

    const-string v1, "color"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->COLORS_PROJECTION:[Ljava/lang/String;

    .line 137
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "account_name"

    aput-object v1, v0, v3

    const-string v1, "account_type"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 148
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "event_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ID_PROJECTION:[Ljava/lang/String;

    .line 158
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "dtstart"

    aput-object v1, v0, v4

    const-string v1, "dtend"

    aput-object v1, v0, v5

    const-string v1, "duration"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLDAY_TIME_PROJECTION:[Ljava/lang/String;

    .line 266
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsIdProjection:[Ljava/lang/String;

    .line 320
    const-string v0, "[^\\s\"\'.?!,]+|\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->SEARCH_TOKEN_PATTERN:Ljava/util/regex/Pattern;

    .line 337
    const-string v0, "([%_#])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->SEARCH_ESCAPE_PATTERN:Ljava/util/regex/Pattern;

    .line 354
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "description"

    aput-object v1, v0, v4

    const-string v1, "eventLocation"

    aput-object v1, v0, v5

    const-string v1, "group_concat(attendeeEmail)"

    aput-object v1, v0, v6

    const-string v1, "group_concat(attendeeName)"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->SEARCH_COLUMNS:[Ljava/lang/String;

    .line 379
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "caller_is_syncadapter"

    aput-object v1, v0, v3

    const-string v1, "account_name"

    aput-object v1, v0, v4

    const-string v1, "account_type"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_URI_PARAMETERS:Ljava/util/HashSet;

    .line 385
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    .line 388
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "_sync_id"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 389
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "sync_data1"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 390
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "sync_data7"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 391
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "sync_data3"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 392
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 393
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "eventLocation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 394
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "description"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 395
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "eventColor"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 396
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "eventColor_index"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 397
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "eventStatus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 398
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "selfAttendeeStatus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 399
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "sync_data6"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 400
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "dtstart"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 402
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "eventTimezone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 403
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "eventEndTimezone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 404
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 405
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "allDay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 406
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "accessLevel"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 407
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "availability"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 408
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "hasAlarm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 409
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "hasExtendedProperties"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 410
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "rrule"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 411
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "rdate"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 412
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "exrule"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 413
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "exdate"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 414
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "original_sync_id"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 415
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "originalInstanceTime"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 417
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "hasAttendeeData"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 418
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "guestsCanModify"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 419
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "guestsCanInviteOthers"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 420
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "guestsCanSeeGuests"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 421
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "organizer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 422
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "customAppPackage"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 423
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "customAppUri"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 424
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "uid2445"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 429
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_sync_id"

    aput-object v1, v0, v3

    const-string v1, "sync_data1"

    aput-object v1, v0, v4

    const-string v1, "sync_data2"

    aput-object v1, v0, v5

    const-string v1, "sync_data3"

    aput-object v1, v0, v6

    const-string v1, "sync_data4"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "sync_data5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sync_data6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sync_data7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sync_data8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sync_data9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sync_data10"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->DONT_CLONE_INTO_EXCEPTION:[Ljava/lang/String;

    .line 4587
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "dirty"

    aput-object v1, v0, v3

    const-string v1, "_sync_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->SYNC_WRITABLE_DEFAULT_COLUMNS:[Ljava/lang/String;

    .line 4591
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->PROVIDER_WRITABLE_DEFAULT_COLUMNS:[Ljava/lang/String;

    .line 4628
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    .line 4641
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "instances/when/*/*"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4642
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "instances/whenbyday/*/*"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4643
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "instances/search/*/*/*"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4644
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "instances/searchbyday/*/*/*"

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4646
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "instances/groupbyday/*/*"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4647
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "events"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4648
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "events/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4649
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "event_entities"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4650
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "event_entities/#"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4651
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "calendars"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4652
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "calendars/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4653
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "calendar_entities"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4654
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "calendar_entities/#"

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4655
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "attendees"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4656
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "attendees/#"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4657
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "reminders"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4658
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "reminders/#"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4659
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "extendedproperties"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4660
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "extendedproperties/#"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4662
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "calendar_alerts"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4663
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "calendar_alerts/#"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4664
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "calendar_alerts/by_instance"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4666
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "syncstate"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4667
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "syncstate/#"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4668
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "schedule_alarms"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4670
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "schedule_alarms_remove"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4672
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "time/#"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4673
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "time"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4674
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "properties"

    const/16 v3, 0x1c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4675
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "exception/#"

    const/16 v3, 0x1d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4676
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "exception/#/#"

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4677
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "emma"

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4678
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "colors"

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4681
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCountProjectionMap:Ljava/util/HashMap;

    .line 4682
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCountProjectionMap:Ljava/util/HashMap;

    const-string v1, "_count"

    const-string v2, "COUNT(*)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4684
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sColorsProjectionMap:Ljava/util/HashMap;

    .line 4685
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sColorsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4686
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sColorsProjectionMap:Ljava/util/HashMap;

    const-string v1, "data"

    const-string v2, "data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4687
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sColorsProjectionMap:Ljava/util/HashMap;

    const-string v1, "account_name"

    const-string v2, "account_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4688
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sColorsProjectionMap:Ljava/util/HashMap;

    const-string v1, "account_type"

    const-string v2, "account_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4689
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sColorsProjectionMap:Ljava/util/HashMap;

    const-string v1, "color_index"

    const-string v2, "color_index"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4690
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sColorsProjectionMap:Ljava/util/HashMap;

    const-string v1, "color_type"

    const-string v2, "color_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4691
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sColorsProjectionMap:Ljava/util/HashMap;

    const-string v1, "color"

    const-string v2, "color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4693
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    .line 4694
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4695
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "account_name"

    const-string v2, "account_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4696
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "account_type"

    const-string v2, "account_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4697
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_id"

    const-string v2, "_sync_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4698
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "dirty"

    const-string v2, "dirty"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4699
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "mutators"

    const-string v2, "mutators"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4700
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4701
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "calendar_displayName"

    const-string v2, "calendar_displayName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4703
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "calendar_color"

    const-string v2, "calendar_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4704
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "calendar_color_index"

    const-string v2, "calendar_color_index"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4705
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "calendar_access_level"

    const-string v2, "calendar_access_level"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4707
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "visible"

    const-string v2, "visible"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4708
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_events"

    const-string v2, "sync_events"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4709
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "calendar_location"

    const-string v2, "calendar_location"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4710
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "calendar_timezone"

    const-string v2, "calendar_timezone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4711
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "ownerAccount"

    const-string v2, "ownerAccount"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4712
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "isPrimary"

    const-string v2, "COALESCE(isPrimary, ownerAccount = account_name)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4715
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "canOrganizerRespond"

    const-string v2, "canOrganizerRespond"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4717
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "canModifyTimeZone"

    const-string v2, "canModifyTimeZone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4718
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "canPartiallyUpdate"

    const-string v2, "canPartiallyUpdate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4719
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "maxReminders"

    const-string v2, "maxReminders"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4720
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "allowedReminders"

    const-string v2, "allowedReminders"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4721
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "allowedAvailability"

    const-string v2, "allowedAvailability"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4722
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "allowedAttendeeTypes"

    const-string v2, "allowedAttendeeTypes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4724
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "deleted"

    const-string v2, "deleted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4725
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync1"

    const-string v2, "cal_sync1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4726
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync2"

    const-string v2, "cal_sync2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4727
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync3"

    const-string v2, "cal_sync3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4728
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync4"

    const-string v2, "cal_sync4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4729
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync5"

    const-string v2, "cal_sync5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4730
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync6"

    const-string v2, "cal_sync6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4731
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync7"

    const-string v2, "cal_sync7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4732
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync8"

    const-string v2, "cal_sync8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4733
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync9"

    const-string v2, "cal_sync9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4734
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync10"

    const-string v2, "cal_sync10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4736
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    .line 4738
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "account_name"

    const-string v2, "account_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4739
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "account_type"

    const-string v2, "account_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4740
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "title"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4741
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventLocation"

    const-string v2, "eventLocation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4742
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "description"

    const-string v2, "description"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4743
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventStatus"

    const-string v2, "eventStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4744
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventColor"

    const-string v2, "eventColor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4745
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventColor_index"

    const-string v2, "eventColor_index"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4746
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "selfAttendeeStatus"

    const-string v2, "selfAttendeeStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4747
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "dtstart"

    const-string v2, "dtstart"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4748
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "dtend"

    const-string v2, "dtend"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4749
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventTimezone"

    const-string v2, "eventTimezone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4750
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventEndTimezone"

    const-string v2, "eventEndTimezone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4751
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "duration"

    const-string v2, "duration"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4752
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "allDay"

    const-string v2, "allDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4753
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "accessLevel"

    const-string v2, "accessLevel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4754
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "availability"

    const-string v2, "availability"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4755
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "hasAlarm"

    const-string v2, "hasAlarm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4756
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "hasExtendedProperties"

    const-string v2, "hasExtendedProperties"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4757
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "rrule"

    const-string v2, "rrule"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4758
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "rdate"

    const-string v2, "rdate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4759
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "exrule"

    const-string v2, "exrule"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4760
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "exdate"

    const-string v2, "exdate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4761
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "original_sync_id"

    const-string v2, "original_sync_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4762
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "original_id"

    const-string v2, "original_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4763
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "originalInstanceTime"

    const-string v2, "originalInstanceTime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4764
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "originalAllDay"

    const-string v2, "originalAllDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4765
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "lastDate"

    const-string v2, "lastDate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4766
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "hasAttendeeData"

    const-string v2, "hasAttendeeData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4767
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "calendar_id"

    const-string v2, "calendar_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4768
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "guestsCanInviteOthers"

    const-string v2, "guestsCanInviteOthers"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4769
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "guestsCanModify"

    const-string v2, "guestsCanModify"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4770
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "guestsCanSeeGuests"

    const-string v2, "guestsCanSeeGuests"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4771
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "organizer"

    const-string v2, "organizer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4772
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "isOrganizer"

    const-string v2, "isOrganizer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4773
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "customAppPackage"

    const-string v2, "customAppPackage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4774
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "customAppUri"

    const-string v2, "customAppUri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4775
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "uid2445"

    const-string v2, "uid2445"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4776
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "deleted"

    const-string v2, "deleted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4777
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_id"

    const-string v2, "_sync_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4780
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    .line 4781
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    .line 4784
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "calendar_color"

    const-string v2, "calendar_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4785
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "calendar_color_index"

    const-string v2, "calendar_color_index"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4786
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "calendar_access_level"

    const-string v2, "calendar_access_level"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4787
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "visible"

    const-string v2, "visible"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4788
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "calendar_timezone"

    const-string v2, "calendar_timezone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4789
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "ownerAccount"

    const-string v2, "ownerAccount"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4790
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "calendar_displayName"

    const-string v2, "calendar_displayName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4791
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "allowedReminders"

    const-string v2, "allowedReminders"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4792
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "allowedAttendeeTypes"

    const-string v2, "allowedAttendeeTypes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4794
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "allowedAvailability"

    const-string v2, "allowedAvailability"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4795
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "maxReminders"

    const-string v2, "maxReminders"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4796
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "canOrganizerRespond"

    const-string v2, "canOrganizerRespond"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4797
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "canModifyTimeZone"

    const-string v2, "canModifyTimeZone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4798
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "displayColor"

    const-string v2, "displayColor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4803
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    .line 4804
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    .line 4806
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4807
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data1"

    const-string v2, "sync_data1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4808
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data2"

    const-string v2, "sync_data2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4809
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data3"

    const-string v2, "sync_data3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4810
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data4"

    const-string v2, "sync_data4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4811
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data5"

    const-string v2, "sync_data5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4812
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data6"

    const-string v2, "sync_data6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4813
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data7"

    const-string v2, "sync_data7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4814
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data8"

    const-string v2, "sync_data8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4815
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data9"

    const-string v2, "sync_data9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4816
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data10"

    const-string v2, "sync_data10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4817
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync1"

    const-string v2, "cal_sync1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4818
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync2"

    const-string v2, "cal_sync2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4819
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync3"

    const-string v2, "cal_sync3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4820
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync4"

    const-string v2, "cal_sync4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4821
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync5"

    const-string v2, "cal_sync5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4822
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync6"

    const-string v2, "cal_sync6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4823
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync7"

    const-string v2, "cal_sync7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4824
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync8"

    const-string v2, "cal_sync8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4825
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync9"

    const-string v2, "cal_sync9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4826
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync10"

    const-string v2, "cal_sync10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4827
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "dirty"

    const-string v2, "dirty"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4828
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "mutators"

    const-string v2, "mutators"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4829
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "lastSynced"

    const-string v2, "lastSynced"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4831
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    .line 4832
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "title"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4833
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventLocation"

    const-string v2, "eventLocation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4834
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "description"

    const-string v2, "description"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4835
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventStatus"

    const-string v2, "eventStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4836
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventColor"

    const-string v2, "eventColor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4837
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventColor_index"

    const-string v2, "eventColor_index"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4838
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "selfAttendeeStatus"

    const-string v2, "selfAttendeeStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4839
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "dtstart"

    const-string v2, "dtstart"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4840
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "dtend"

    const-string v2, "dtend"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4841
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventTimezone"

    const-string v2, "eventTimezone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4842
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventEndTimezone"

    const-string v2, "eventEndTimezone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4843
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "duration"

    const-string v2, "duration"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4844
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "allDay"

    const-string v2, "allDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4845
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "accessLevel"

    const-string v2, "accessLevel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4846
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "availability"

    const-string v2, "availability"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4847
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "hasAlarm"

    const-string v2, "hasAlarm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4848
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "hasExtendedProperties"

    const-string v2, "hasExtendedProperties"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4850
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "rrule"

    const-string v2, "rrule"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4851
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "rdate"

    const-string v2, "rdate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4852
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "exrule"

    const-string v2, "exrule"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4853
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "exdate"

    const-string v2, "exdate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4854
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "original_sync_id"

    const-string v2, "original_sync_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4855
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "original_id"

    const-string v2, "original_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4856
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "originalInstanceTime"

    const-string v2, "originalInstanceTime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4858
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "originalAllDay"

    const-string v2, "originalAllDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4859
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "lastDate"

    const-string v2, "lastDate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4860
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "hasAttendeeData"

    const-string v2, "hasAttendeeData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4861
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "calendar_id"

    const-string v2, "calendar_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4862
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "guestsCanInviteOthers"

    const-string v2, "guestsCanInviteOthers"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4864
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "guestsCanModify"

    const-string v2, "guestsCanModify"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4865
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "guestsCanSeeGuests"

    const-string v2, "guestsCanSeeGuests"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4866
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "organizer"

    const-string v2, "organizer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4867
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "isOrganizer"

    const-string v2, "isOrganizer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4868
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "customAppPackage"

    const-string v2, "customAppPackage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4869
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "customAppUri"

    const-string v2, "customAppUri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4870
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "uid2445"

    const-string v2, "uid2445"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4871
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "deleted"

    const-string v2, "deleted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4872
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4873
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_id"

    const-string v2, "_sync_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4874
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data1"

    const-string v2, "sync_data1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4875
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data2"

    const-string v2, "sync_data2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4876
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data3"

    const-string v2, "sync_data3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4877
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data4"

    const-string v2, "sync_data4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4878
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data5"

    const-string v2, "sync_data5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4879
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data6"

    const-string v2, "sync_data6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4880
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data7"

    const-string v2, "sync_data7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4881
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data8"

    const-string v2, "sync_data8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4882
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data9"

    const-string v2, "sync_data9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4883
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data10"

    const-string v2, "sync_data10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4884
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "dirty"

    const-string v2, "dirty"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4885
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "mutators"

    const-string v2, "mutators"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4886
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "lastSynced"

    const-string v2, "lastSynced"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4887
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync1"

    const-string v2, "cal_sync1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4888
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync2"

    const-string v2, "cal_sync2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4889
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync3"

    const-string v2, "cal_sync3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4890
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync4"

    const-string v2, "cal_sync4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4891
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync5"

    const-string v2, "cal_sync5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4892
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync6"

    const-string v2, "cal_sync6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4893
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync7"

    const-string v2, "cal_sync7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4894
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync8"

    const-string v2, "cal_sync8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4895
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync9"

    const-string v2, "cal_sync9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4896
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync10"

    const-string v2, "cal_sync10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4899
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "deleted"

    const-string v2, "Events.deleted as deleted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4900
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "begin"

    const-string v2, "begin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4901
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "end"

    const-string v2, "end"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4902
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "event_id"

    const-string v2, "Instances.event_id AS event_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4903
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "Instances._id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4904
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "startDay"

    const-string v2, "startDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4905
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "endDay"

    const-string v2, "endDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4906
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "startMinute"

    const-string v2, "startMinute"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4907
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "endMinute"

    const-string v2, "endMinute"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4910
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "event_id"

    const-string v2, "event_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4911
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "Attendees._id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4912
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeName"

    const-string v2, "attendeeName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4913
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeEmail"

    const-string v2, "attendeeEmail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4914
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeStatus"

    const-string v2, "attendeeStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4915
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeRelationship"

    const-string v2, "attendeeRelationship"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4916
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeType"

    const-string v2, "attendeeType"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4917
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeIdentity"

    const-string v2, "attendeeIdentity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4918
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeIdNamespace"

    const-string v2, "attendeeIdNamespace"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4919
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "deleted"

    const-string v2, "Events.deleted AS deleted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4920
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_id"

    const-string v2, "Events._sync_id AS _sync_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4923
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    const-string v1, "event_id"

    const-string v2, "event_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4924
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "Reminders._id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4925
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    const-string v1, "minutes"

    const-string v2, "minutes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4926
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    const-string v1, "method"

    const-string v2, "method"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4927
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    const-string v1, "deleted"

    const-string v2, "Events.deleted AS deleted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4928
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_id"

    const-string v2, "Events._sync_id AS _sync_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4931
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "event_id"

    const-string v2, "event_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4932
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "CalendarAlerts._id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4933
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "begin"

    const-string v2, "begin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4934
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "end"

    const-string v2, "end"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4935
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "alarmTime"

    const-string v2, "alarmTime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4936
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "notifyTime"

    const-string v2, "notifyTime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4937
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "state"

    const-string v2, "state"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4938
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "minutes"

    const-string v2, "minutes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4941
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarCacheProjectionMap:Ljava/util/HashMap;

    .line 4942
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarCacheProjectionMap:Ljava/util/HashMap;

    const-string v1, "key"

    const-string v2, "key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4943
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarCacheProjectionMap:Ljava/util/HashMap;

    const-string v1, "value"

    const-string v2, "value"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4944
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;-><init>()V

    .line 454
    new-instance v0, Lcom/android/providers/calendar/CalendarProvider2$1;

    invoke-direct {v0, p0}, Lcom/android/providers/calendar/CalendarProvider2$1;-><init>(Lcom/android/providers/calendar/CalendarProvider2;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mBroadcastHandler:Landroid/os/Handler;

    .line 474
    new-instance v0, Lcom/android/providers/calendar/CalendarProvider2$2;

    invoke-direct {v0, p0}, Lcom/android/providers/calendar/CalendarProvider2$2;-><init>(Lcom/android/providers/calendar/CalendarProvider2;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 4963
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/calendar/CalendarProvider2;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/calendar/CalendarProvider2;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/providers/calendar/CalendarProvider2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/calendar/CalendarProvider2;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->doSendUpdateNotification()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/providers/calendar/CalendarProvider2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/calendar/CalendarProvider2;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->verifyAccounts()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/providers/calendar/CalendarProvider2;[Landroid/accounts/Account;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/calendar/CalendarProvider2;
    .param p1, "x1"    # [Landroid/accounts/Account;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->removeStaleAccounts([Landroid/accounts/Account;)V

    return-void
.end method

.method private acquireInstanceRange(JJZZLjava/lang/String;Z)V
    .locals 2
    .param p1, "begin"    # J
    .param p3, "end"    # J
    .param p5, "useMinimumExpansionWindow"    # Z
    .param p6, "forceExpansion"    # Z
    .param p7, "instancesTimezone"    # Ljava/lang/String;
    .param p8, "isHomeTimezone"    # Z

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1350
    :try_start_0
    invoke-virtual/range {p0 .. p8}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRangeLocked(JJZZLjava/lang/String;Z)V

    .line 1352
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1354
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1356
    return-void

    .line 1354
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private addMutator(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 5087
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getCallingPackageName()Ljava/lang/String;

    move-result-object v1

    .line 5088
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5089
    .local v0, "mutators":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5090
    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5094
    :goto_0
    return-void

    .line 5092
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "accountNameColumn"    # Ljava/lang/String;
    .param p4, "accountTypeColumn"    # Ljava/lang/String;

    .prologue
    .line 4248
    const-string v3, "account_name"

    invoke-static {p1, v3}, Lcom/android/providers/calendar/QueryParameterUtils;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4250
    .local v0, "accountName":Ljava/lang/String;
    const-string v3, "account_type"

    invoke-static {p1, v3}, Lcom/android/providers/calendar/QueryParameterUtils;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4252
    .local v1, "accountType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4261
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v2, p2}, Lcom/android/providers/calendar/CalendarProvider2;->appendSelection(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4263
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local p2    # "selection":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method private appendLastSyncedColumnToSelection(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 4235
    invoke-virtual {p0, p2}, Lcom/android/providers/calendar/CalendarProvider2;->getIsCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4240
    .end local p1    # "selection":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 4238
    .restart local p1    # "selection":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4239
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "lastSynced"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4240
    invoke-direct {p0, v0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->appendSelection(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private appendSelection(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "selection"    # Ljava/lang/String;

    .prologue
    .line 4268
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4269
    const-string v0, " AND ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4270
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4271
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4273
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private backfillExceptionOriginalIds(JLandroid/content/ContentValues;)V
    .locals 10
    .param p1, "id"    # J
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 2089
    const-string v5, "_sync_id"

    invoke-virtual {p3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2090
    .local v4, "syncId":Ljava/lang/String;
    const-string v5, "rrule"

    invoke-virtual {p3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2091
    .local v3, "rrule":Ljava/lang/String;
    const-string v5, "rdate"

    invoke-virtual {p3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2092
    .local v2, "rdate":Ljava/lang/String;
    const-string v5, "calendar_id"

    invoke-virtual {p3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2094
    .local v0, "calendarId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2105
    :cond_0
    :goto_0
    return-void

    .line 2100
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2101
    .local v1, "originalValues":Landroid/content/ContentValues;
    const-string v5, "original_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2102
    iget-object v5, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "Events"

    const-string v7, "original_sync_id=? AND calendar_id=?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    invoke-virtual {v5, v6, v1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkAllowedInException(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1608
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1609
    .local v1, "str":Ljava/lang/String;
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1610
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exceptions can\'t overwrite "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1613
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static varargs combine([[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "arrays":[[Ljava/lang/Object;, "[[TT;"
    const/4 v9, 0x0

    .line 1131
    array-length v8, p0

    if-nez v8, :cond_0

    .line 1132
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Must supply at least 1 array to combine"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1135
    :cond_0
    const/4 v7, 0x0

    .line 1136
    .local v7, "totalSize":I
    move-object v0, p0

    .local v0, "arr$":[[Ljava/lang/Object;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 1137
    .local v1, "array":[Ljava/lang/Object;, "[TT;"
    array-length v8, v1

    add-int/2addr v7, v8

    .line 1136
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1140
    .end local v1    # "array":[Ljava/lang/Object;, "[TT;"
    :cond_1
    aget-object v8, p0, v9

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    move-object v3, v8

    check-cast v3, [Ljava/lang/Object;

    .line 1143
    .local v3, "finalArray":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    .line 1144
    .local v2, "currentPos":I
    move-object v0, p0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    .line 1145
    .restart local v1    # "array":[Ljava/lang/Object;, "[TT;"
    array-length v6, v1

    .line 1146
    .local v6, "length":I
    invoke-static {v1, v9, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1147
    array-length v8, v1

    add-int/2addr v2, v8

    .line 1144
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1149
    .end local v1    # "array":[Ljava/lang/Object;, "[TT;"
    .end local v6    # "length":I
    :cond_2
    return-object v3
.end method

.method private createAttendeeEntry(JILjava/lang/String;)V
    .locals 3
    .param p1, "eventId"    # J
    .param p3, "status"    # I
    .param p4, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 2747
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2748
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2749
    const-string v1, "attendeeStatus"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2750
    const-string v1, "attendeeType"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2753
    const-string v1, "attendeeRelationship"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2755
    const-string v1, "attendeeEmail"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2759
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v1, v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->attendeesInsert(Landroid/content/ContentValues;)J

    .line 2760
    return-void
.end method

.method private deleteEventInternal(JZZ)I
    .locals 20
    .param p1, "id"    # J
    .param p3, "callerIsSyncAdapter"    # Z
    .param p4, "isBatch"    # Z

    .prologue
    .line 3213
    const/16 v16, 0x0

    .line 3214
    .local v16, "result":I
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 3217
    .local v6, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Events"

    sget-object v4, Lcom/android/providers/calendar/CalendarProvider2;->EVENTS_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3222
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3223
    const/16 v16, 0x1

    .line 3224
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 3225
    .local v18, "syncId":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    .line 3230
    .local v11, "emptySyncId":Z
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 3231
    .local v17, "rrule":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 3232
    .local v15, "rdate":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 3233
    .local v13, "origId":Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 3234
    .local v14, "origSyncId":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-static {v0, v15, v13, v14}, Lcom/android/providers/calendar/CalendarProvider2;->isRecurrenceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    invoke-virtual {v2}, Lcom/android/providers/calendar/MetaData;->clearInstanceRange()V

    .line 3237
    :cond_0
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_1
    const/4 v12, 0x1

    .line 3244
    .local v12, "isRecurrence":Z
    :goto_0
    if-nez p3, :cond_2

    if-eqz v11, :cond_6

    .line 3245
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Events"

    const-string v4, "_id=?"

    invoke-virtual {v2, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3251
    if-eqz v12, :cond_3

    if-eqz v11, :cond_3

    .line 3252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Events"

    const-string v4, "original_id=?"

    invoke-virtual {v2, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3292
    .end local v11    # "emptySyncId":Z
    .end local v12    # "isRecurrence":Z
    .end local v13    # "origId":Ljava/lang/String;
    .end local v14    # "origSyncId":Ljava/lang/String;
    .end local v15    # "rdate":Ljava/lang/String;
    .end local v17    # "rrule":Ljava/lang/String;
    .end local v18    # "syncId":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3293
    const/4 v10, 0x0

    .line 3296
    if-nez p4, :cond_4

    .line 3297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleNextAlarm(Z)V

    .line 3298
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(Z)V

    .line 3300
    :cond_4
    return v16

    .line 3237
    .restart local v11    # "emptySyncId":Z
    .restart local v13    # "origId":Ljava/lang/String;
    .restart local v14    # "origSyncId":Ljava/lang/String;
    .restart local v15    # "rdate":Ljava/lang/String;
    .restart local v17    # "rrule":Ljava/lang/String;
    .restart local v18    # "syncId":Ljava/lang/String;
    :cond_5
    const/4 v12, 0x0

    goto :goto_0

    .line 3259
    .restart local v12    # "isRecurrence":Z
    :cond_6
    :try_start_1
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 3260
    .local v19, "values":Landroid/content/ContentValues;
    const-string v2, "deleted"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3261
    const-string v2, "dirty"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3262
    const-string v2, "mutators"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->addMutator(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Events"

    const-string v4, "_id=?"

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Events"

    const-string v4, "original_id=? AND _sync_id IS NULL"

    invoke-virtual {v2, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Instances"

    const-string v4, "event_id=?"

    invoke-virtual {v2, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "EventsRawTimes"

    const-string v4, "event_id=?"

    invoke-virtual {v2, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Reminders"

    const-string v4, "event_id=?"

    invoke-virtual {v2, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "CalendarAlerts"

    const-string v4, "event_id=?"

    invoke-virtual {v2, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ExtendedProperties"

    const-string v4, "event_id=?"

    invoke-virtual {v2, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 3292
    .end local v11    # "emptySyncId":Z
    .end local v12    # "isRecurrence":Z
    .end local v13    # "origId":Ljava/lang/String;
    .end local v14    # "origSyncId":Ljava/lang/String;
    .end local v15    # "rdate":Ljava/lang/String;
    .end local v17    # "rrule":Ljava/lang/String;
    .end local v18    # "syncId":Ljava/lang/String;
    .end local v19    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3293
    const/4 v10, 0x0

    throw v2
.end method

.method private deleteFromEventRelatedTable(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 16
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 3314
    const-string v1, "Events"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3315
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Don\'t delete Events with this method (use deleteEventInternal)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3319
    :cond_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 3320
    .local v9, "dirtyValues":Landroid/content/ContentValues;
    const-string v1, "dirty"

    const-string v2, "1"

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3321
    const-string v1, "mutators"

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v1}, Lcom/android/providers/calendar/CalendarProvider2;->addMutator(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3330
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->ID_PROJECTION:[Ljava/lang/String;

    const-string v6, "event_id"

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3331
    .local v7, "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 3333
    .local v8, "count":I
    const-wide/16 v14, -0x1

    .line 3334
    .local v14, "prevEventId":J
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3335
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 3336
    .local v12, "id":J
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 3339
    .local v10, "eventId":J
    cmp-long v1, v10, v14

    if-eqz v1, :cond_1

    .line 3340
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v1, v10, v11}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->duplicateEvent(J)V

    .line 3341
    move-wide v14, v10

    .line 3343
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3344
    cmp-long v1, v10, v14

    if-eqz v1, :cond_2

    .line 3345
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Events"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v9, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3348
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 3349
    goto :goto_0

    .line 3351
    .end local v10    # "eventId":J
    .end local v12    # "id":J
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3353
    return v8

    .line 3351
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private deleteMatchingCalendars(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 3627
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Calendars"

    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsIdProjection:[Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3632
    .local v8, "c":Landroid/database/Cursor;
    if-nez v8, :cond_0

    move v0, v11

    .line 3643
    :goto_0
    return v0

    .line 3636
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3637
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 3638
    .local v9, "id":J
    const/4 v0, 0x0

    invoke-direct {p0, v9, v10, v0}, Lcom/android/providers/calendar/CalendarProvider2;->modifyCalendarSubscription(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 3641
    .end local v9    # "id":J
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3643
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Calendars"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private deleteMatchingColors(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 16
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 3577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Colors"

    sget-object v4, Lcom/android/providers/calendar/CalendarProvider2;->COLORS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 3579
    .local v12, "c":Landroid/database/Cursor;
    if-nez v12, :cond_0

    .line 3580
    const/4 v2, 0x0

    .line 3620
    :goto_0
    return v2

    .line 3583
    :cond_0
    const/4 v13, 0x0

    .line 3584
    .local v13, "c2":Landroid/database/Cursor;
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3585
    const/4 v2, 0x3

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 3586
    .local v14, "index":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3587
    .local v10, "accountName":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3588
    .local v11, "accountType":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-nez v2, :cond_4

    const/4 v15, 0x1

    .line 3590
    .local v15, "isCalendarColor":Z
    :goto_2
    if-eqz v15, :cond_5

    .line 3591
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Calendars"

    sget-object v4, Lcom/android/providers/calendar/CalendarProvider2;->ID_ONLY_PROJECTION:[Ljava/lang/String;

    const-string v5, "account_name=? AND account_type=? AND calendar_color_index=?"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v10, v6, v7

    const/4 v7, 0x1

    aput-object v11, v6, v7

    const/4 v7, 0x2

    aput-object v14, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 3595
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_6

    .line 3596
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot delete color "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Referenced by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " calendars."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3610
    :catchall_0
    move-exception v2

    if-eqz v13, :cond_2

    .line 3611
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3616
    .end local v10    # "accountName":Ljava/lang/String;
    .end local v11    # "accountType":Ljava/lang/String;
    .end local v14    # "index":Ljava/lang/String;
    .end local v15    # "isCalendarColor":Z
    :catchall_1
    move-exception v2

    if-eqz v12, :cond_3

    .line 3617
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .line 3588
    .restart local v10    # "accountName":Ljava/lang/String;
    .restart local v11    # "accountType":Ljava/lang/String;
    .restart local v14    # "index":Ljava/lang/String;
    :cond_4
    const/4 v15, 0x0

    goto :goto_2

    .line 3601
    .restart local v15    # "isCalendarColor":Z
    :cond_5
    :try_start_3
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/providers/calendar/CalendarProvider2;->ID_ONLY_PROJECTION:[Ljava/lang/String;

    const-string v5, "calendar_id in (SELECT _id from Calendars WHERE account_name=? AND account_type=?) AND eventColor_index=?"

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v10, v6, v2

    const/4 v2, 0x1

    aput-object v11, v6, v2

    const/4 v2, 0x2

    aput-object v14, v6, v2

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 3603
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_6

    .line 3604
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot delete color "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Referenced by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " events."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3610
    :cond_6
    if-eqz v13, :cond_1

    .line 3611
    :try_start_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1

    .line 3616
    .end local v10    # "accountName":Ljava/lang/String;
    .end local v11    # "accountType":Ljava/lang/String;
    .end local v14    # "index":Ljava/lang/String;
    .end local v15    # "isCalendarColor":Z
    :cond_7
    if-eqz v12, :cond_8

    .line 3617
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3620
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Colors"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0
.end method

.method private deleteReminders(Landroid/net/Uri;ZLjava/lang/String;[Ljava/lang/String;Z)I
    .locals 22
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "byId"    # Z
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "callerIsSyncAdapter"    # Z

    .prologue
    .line 3368
    const-wide/16 v20, -0x1

    .line 3369
    .local v20, "rowId":J
    if-eqz p2, :cond_1

    .line 3370
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3371
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selection not allowed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3373
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v20

    .line 3374
    const-wide/16 v2, 0x0

    cmp-long v2, v20, v2

    if-gez v2, :cond_1

    .line 3375
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ID expected but not found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3388
    :cond_1
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 3389
    .local v15, "eventIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "event_id"

    aput-object v3, v4, v2

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3391
    .local v10, "c":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3392
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3395
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3402
    if-nez p5, :cond_3

    .line 3403
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 3404
    .local v12, "dirtyValues":Landroid/content/ContentValues;
    const-string v2, "dirty"

    const-string v3, "1"

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3405
    const-string v2, "mutators"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/android/providers/calendar/CalendarProvider2;->addMutator(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3407
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 3408
    .local v16, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3409
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 3410
    .local v13, "eventId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v2, v13, v14}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->duplicateEvent(J)V

    .line 3411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Events"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v12, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 3420
    .end local v12    # "dirtyValues":Landroid/content/ContentValues;
    .end local v13    # "eventId":J
    .end local v16    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_3
    if-eqz p2, :cond_4

    .line 3421
    const-string p3, "_id=?"

    .line 3422
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 p4, v0

    .end local p4    # "selectionArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p4, v2

    .line 3424
    .restart local p4    # "selectionArgs":[Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Reminders"

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 3432
    .local v11, "delCount":I
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 3433
    .local v17, "noAlarmValues":Landroid/content/ContentValues;
    const-string v2, "hasAlarm"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3434
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 3435
    .restart local v16    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_5
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3436
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 3439
    .restart local v13    # "eventId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Reminders"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "event_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 3442
    .local v19, "reminders":Landroid/database/Cursor;
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v18

    .line 3443
    .local v18, "reminderCount":I
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 3445
    if-nez v18, :cond_5

    .line 3446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Events"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 3451
    .end local v13    # "eventId":J
    .end local v18    # "reminderCount":I
    .end local v19    # "reminders":Landroid/database/Cursor;
    :cond_6
    return v11
.end method

.method private doSendUpdateNotification()V
    .locals 4

    .prologue
    .line 4573
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PROVIDER_CHANGED"

    sget-object v2, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4575
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "CalendarProvider2"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4576
    const-string v1, "CalendarProvider2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending notification intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4578
    :cond_0
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4579
    return-void
.end method

.method private doesEventExistForSyncId(Ljava/lang/String;)Z
    .locals 7
    .param p1, "syncId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3647
    if-nez p1, :cond_1

    .line 3648
    const-string v2, "CalendarProvider2"

    const/4 v4, 0x5

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3649
    const-string v2, "CalendarProvider2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SyncID cannot be null: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3655
    :cond_0
    :goto_0
    return v3

    .line 3653
    :cond_1
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT COUNT(*) FROM Events WHERE _sync_id=?"

    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    invoke-static {v4, v5, v6}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 3655
    .local v0, "count":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private doesStatusCancelUpdateMeanUpdate(Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "modValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x1

    .line 3670
    const-string v3, "eventStatus"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "eventStatus"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v0, v2

    .line 3672
    .local v0, "isStatusCanceled":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 3673
    const-string v3, "original_sync_id"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3675
    .local v1, "originalSyncId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3677
    invoke-direct {p0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->doesEventExistForSyncId(Ljava/lang/String;)Z

    move-result v2

    .line 3681
    .end local v1    # "originalSyncId":Ljava/lang/String;
    :cond_0
    return v2

    .line 3670
    .end local v0    # "isStatusCanceled":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dumpEventNoPII(Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 2449
    if-nez p1, :cond_0

    .line 2471
    :goto_0
    return-void

    .line 2453
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2454
    .local v0, "bob":Ljava/lang/StringBuilder;
    const-string v1, "dtStart:       "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dtstart"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2455
    const-string v1, "\ndtEnd:         "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dtend"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2456
    const-string v1, "\nall_day:       "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "allDay"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2457
    const-string v1, "\ntz:            "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "eventTimezone"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2458
    const-string v1, "\ndur:           "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2459
    const-string v1, "\nrrule:         "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rrule"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2460
    const-string v1, "\nrdate:         "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rdate"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2461
    const-string v1, "\nlast_date:     "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lastDate"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2463
    const-string v1, "\nid:            "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2464
    const-string v1, "\nsync_id:       "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_sync_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2465
    const-string v1, "\nori_id:        "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "original_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2466
    const-string v1, "\nori_sync_id:   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "original_sync_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2467
    const-string v1, "\nori_inst_time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "originalInstanceTime"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2468
    const-string v1, "\nori_all_day:   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "originalAllDay"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2470
    const-string v1, "CalendarProvider2"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private fixAllDayTime(Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    .locals 12
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "modValues"    # Landroid/content/ContentValues;

    .prologue
    .line 1541
    const-string v9, "allDay"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1542
    .local v0, "allDayObj":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_2

    .line 1543
    :cond_0
    const/4 v6, 0x0

    .line 1596
    :cond_1
    :goto_0
    return v6

    .line 1546
    :cond_2
    const/4 v6, 0x0

    .line 1548
    .local v6, "neededCorrection":Z
    const-string v9, "dtstart"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 1549
    .local v3, "dtstart":Ljava/lang/Long;
    const-string v9, "dtend"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 1550
    .local v2, "dtend":Ljava/lang/Long;
    const-string v9, "duration"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1551
    .local v4, "duration":Ljava/lang/String;
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 1555
    .local v8, "time":Landroid/text/format/Time;
    const-string v9, "UTC"

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 1556
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 1557
    iget v9, v8, Landroid/text/format/Time;->hour:I

    if-nez v9, :cond_3

    iget v9, v8, Landroid/text/format/Time;->minute:I

    if-nez v9, :cond_3

    iget v9, v8, Landroid/text/format/Time;->second:I

    if-eqz v9, :cond_4

    .line 1558
    :cond_3
    const/4 v9, 0x0

    iput v9, v8, Landroid/text/format/Time;->hour:I

    .line 1559
    const/4 v9, 0x0

    iput v9, v8, Landroid/text/format/Time;->minute:I

    .line 1560
    const/4 v9, 0x0

    iput v9, v8, Landroid/text/format/Time;->second:I

    .line 1561
    const-string v9, "dtstart"

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1562
    const/4 v6, 0x1

    .line 1566
    :cond_4
    if-eqz v2, :cond_6

    .line 1567
    const-string v9, "UTC"

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 1568
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 1569
    iget v9, v8, Landroid/text/format/Time;->hour:I

    if-nez v9, :cond_5

    iget v9, v8, Landroid/text/format/Time;->minute:I

    if-nez v9, :cond_5

    iget v9, v8, Landroid/text/format/Time;->second:I

    if-eqz v9, :cond_6

    .line 1570
    :cond_5
    const/4 v9, 0x0

    iput v9, v8, Landroid/text/format/Time;->hour:I

    .line 1571
    const/4 v9, 0x0

    iput v9, v8, Landroid/text/format/Time;->minute:I

    .line 1572
    const/4 v9, 0x0

    iput v9, v8, Landroid/text/format/Time;->second:I

    .line 1573
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1574
    const-string v9, "dtend"

    invoke-virtual {p2, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1575
    const/4 v6, 0x1

    .line 1579
    :cond_6
    if-eqz v4, :cond_1

    .line 1580
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 1584
    .local v5, "len":I
    if-nez v5, :cond_7

    .line 1585
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1586
    :cond_7
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x50

    if-ne v9, v10, :cond_1

    add-int/lit8 v9, v5, -0x1

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x53

    if-ne v9, v10, :cond_1

    .line 1588
    const/4 v9, 0x1

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1589
    .local v7, "seconds":I
    const v9, 0x15180

    add-int/2addr v9, v7

    add-int/lit8 v9, v9, -0x1

    const v10, 0x15180

    div-int v1, v9, v10

    .line 1590
    .local v1, "days":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "P"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "D"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1591
    const-string v9, "duration"

    invoke-virtual {p2, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method private get2445ToMillis(Ljava/lang/String;Ljava/lang/String;)J
    .locals 7
    .param p1, "timezone"    # Ljava/lang/String;
    .param p2, "dt2445"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 708
    if-nez p2, :cond_1

    .line 709
    const-string v4, "CalendarProvider2"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 710
    const-string v4, "CalendarProvider2"

    const-string v5, "Cannot parse null RFC2445 date"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_0
    :goto_0
    return-wide v2

    .line 714
    :cond_1
    if-eqz p1, :cond_2

    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, p1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 716
    .local v1, "time":Landroid/text/format/Time;
    :goto_1
    :try_start_0
    invoke-virtual {v1, p2}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    goto :goto_0

    .line 714
    .end local v1    # "time":Landroid/text/format/Time;
    :cond_2
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    goto :goto_1

    .line 717
    .restart local v1    # "time":Landroid/text/format/Time;
    :catch_0
    move-exception v0

    .line 718
    .local v0, "e":Landroid/util/TimeFormatException;
    const-string v4, "CalendarProvider2"

    const/4 v5, 0x6

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 719
    const-string v4, "CalendarProvider2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot parse RFC2445 date "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getAccount(J)Landroid/accounts/Account;
    .locals 9
    .param p1, "calId"    # J

    .prologue
    const/4 v8, 0x0

    .line 2715
    const/4 v6, 0x0

    .line 2716
    .local v6, "account":Landroid/accounts/Account;
    const/4 v7, 0x0

    .line 2718
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2721
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2722
    :cond_0
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2723
    const-string v0, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in Calendars table"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2730
    :cond_1
    if-eqz v7, :cond_2

    .line 2731
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v8

    .line 2734
    :goto_0
    return-object v0

    .line 2727
    :cond_3
    :try_start_1
    new-instance v6, Landroid/accounts/Account;

    .end local v6    # "account":Landroid/accounts/Account;
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2730
    .restart local v6    # "account":Landroid/accounts/Account;
    if-eqz v7, :cond_4

    .line 2731
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v6

    .line 2734
    goto :goto_0

    .line 2730
    .end local v6    # "account":Landroid/accounts/Account;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 2731
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private getCallingPackageName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 5073
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 5074
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 5075
    .local v3, "uid":I
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 5076
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v4, v1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 5077
    const/4 v4, 0x0

    aget-object v0, v1, v4

    .line 5083
    :cond_0
    :goto_0
    return-object v0

    .line 5079
    :cond_1
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 5080
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 5083
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getColorByTypeIndex(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "colorType"    # J
    .param p5, "colorIndex"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2672
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Colors"

    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->COLORS_PROJECTION:[Ljava/lang/String;

    const-string v3, "account_name=? AND account_type=? AND color_type=? AND color_index=?"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    const/4 v6, 0x1

    aput-object p2, v4, v6

    const/4 v6, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x3

    aput-object p5, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected static getInstance()Lcom/android/providers/calendar/CalendarProvider2;
    .locals 1

    .prologue
    .line 501
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->mInstance:Lcom/android/providers/calendar/CalendarProvider2;

    return-object v0
.end method

.method private getOriginalId(Ljava/lang/String;Ljava/lang/String;)J
    .locals 9
    .param p1, "originalSyncId"    # Ljava/lang/String;
    .param p2, "calendarId"    # Ljava/lang/String;

    .prologue
    .line 2628
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2629
    :cond_0
    const-wide/16 v7, -0x1

    .line 2646
    :cond_1
    :goto_0
    return-wide v7

    .line 2632
    :cond_2
    const-wide/16 v7, -0x1

    .line 2633
    .local v7, "originalId":J
    const/4 v6, 0x0

    .line 2635
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->ID_ONLY_PROJECTION:[Ljava/lang/String;

    const-string v3, "_sync_id=? AND calendar_id=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2638
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2639
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 2642
    :cond_3
    if-eqz v6, :cond_1

    .line 2643
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2642
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 2643
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private getOriginalSyncId(J)Ljava/lang/String;
    .locals 8
    .param p1, "originalId"    # J

    .prologue
    const/4 v7, 0x0

    .line 2650
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 2667
    :cond_0
    :goto_0
    return-object v7

    .line 2654
    :cond_1
    const/4 v7, 0x0

    .line 2655
    .local v7, "originalSyncId":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2657
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_sync_id"

    aput-object v3, v2, v0

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2659
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2660
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 2663
    :cond_2
    if-eqz v6, :cond_0

    .line 2664
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2663
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 2664
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private getOwner(J)Ljava/lang/String;
    .locals 9
    .param p1, "calId"    # J

    .prologue
    const/4 v8, 0x0

    .line 2684
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 2685
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2686
    const-string v0, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calendar Id is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v7, v8

    .line 2711
    :cond_1
    :goto_0
    return-object v7

    .line 2691
    :cond_2
    const/4 v7, 0x0

    .line 2692
    .local v7, "emailAddress":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2694
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "ownerAccount"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2699
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2700
    :cond_3
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2701
    const-string v0, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in Calendars table"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2707
    :cond_4
    if-eqz v6, :cond_5

    .line 2708
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v7, v8

    goto :goto_0

    .line 2705
    :cond_6
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 2707
    if-eqz v6, :cond_1

    .line 2708
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2707
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    .line 2708
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method private static handleEmmaRequest(Landroid/content/ContentValues;)V
    .locals 10
    .param p0, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 2395
    const-string v6, "cmd"

    invoke-virtual {p0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2396
    .local v0, "cmd":Ljava/lang/String;
    const-string v6, "start"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2399
    const-string v6, "CalendarProvider2"

    const-string v7, "Emma coverage testing started"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    :cond_0
    :goto_0
    return-void

    .line 2400
    :cond_1
    const-string v6, "stop"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2403
    const-string v6, "outputFileName"

    invoke-virtual {p0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2405
    .local v5, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2407
    .local v1, "coverageFile":Ljava/io/File;
    :try_start_0
    const-string v6, "com.vladium.emma.rt.RT"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 2408
    .local v4, "emmaRTClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "dumpCoverageData"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2411
    .local v2, "dumpCoverageMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2413
    const-string v6, "CalendarProvider2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Emma coverage data written to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2414
    .end local v2    # "dumpCoverageMethod":Ljava/lang/reflect/Method;
    .end local v4    # "emmaRTClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 2415
    .local v3, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Emma coverage dump failed"

    invoke-direct {v6, v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private handleEventDayQuery(Landroid/database/sqlite/SQLiteQueryBuilder;II[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 15
    .param p1, "qb"    # Landroid/database/sqlite/SQLiteQueryBuilder;
    .param p2, "begin"    # I
    .param p3, "end"    # I
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "instancesTimezone"    # Ljava/lang/String;
    .param p7, "isHomeTimezone"    # Z

    .prologue
    .line 1314
    const-string v1, "Instances INNER JOIN view_events AS Events ON (Instances.event_id=Events._id)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1315
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1318
    new-instance v14, Landroid/text/format/Time;

    move-object/from16 v0, p6

    invoke-direct {v14, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1319
    .local v14, "time":Landroid/text/format/Time;
    move/from16 v0, p2

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v2

    .line 1322
    .local v2, "beginMs":J
    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v14, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v4

    .line 1324
    .local v4, "endMs":J
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRange(JJZZLjava/lang/String;Z)V

    .line 1326
    const-string v1, "startDay<=? AND endDay>=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1327
    const/4 v1, 0x2

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v1

    const/4 v1, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v1

    .line 1329
    .local v10, "selectionArgs":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "startDay"

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private handleInsertException(JLandroid/content/ContentValues;Z)J
    .locals 44
    .param p1, "originalEventId"    # J
    .param p3, "modValues"    # Landroid/content/ContentValues;
    .param p4, "callerIsSyncAdapter"    # Z

    .prologue
    .line 1733
    const-string v4, "originalInstanceTime"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v38

    .line 1734
    .local v38, "originalInstanceTime":Ljava/lang/Long;
    if-nez v38, :cond_0

    .line 1735
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v8, "Exceptions must specify originalInstanceTime"

    invoke-direct {v4, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1740
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/calendar/CalendarProvider2;->checkAllowedInException(Ljava/util/Set;)V

    .line 1743
    if-nez p4, :cond_1

    .line 1744
    const-string v4, "dirty"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1745
    const-string v4, "mutators"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v4}, Lcom/android/providers/calendar/CalendarProvider2;->addMutator(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1749
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1750
    const/16 v31, 0x0

    .line 1756
    .local v31, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "Events"

    const/4 v6, 0x0

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 1759
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v8, 0x1

    if-eq v4, v8, :cond_3

    .line 1760
    const-string v4, "CalendarProvider2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Original event ID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p1

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " lookup failed (count is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1762
    const-wide/16 v6, -0x1

    .line 2065
    if-eqz v31, :cond_2

    .line 2066
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 2068
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_0
    return-wide v6

    .line 1767
    :cond_3
    :try_start_1
    const-string v4, "eventColor_index"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1768
    .local v27, "color_index":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1769
    const-string v4, "calendar_id"

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 1770
    .local v23, "calIdCol":I
    move-object/from16 v0, v31

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    .line 1771
    .local v22, "calId":Ljava/lang/Long;
    const/16 v17, 0x0

    .line 1772
    .local v17, "accountName":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1773
    .local v18, "accountType":Ljava/lang/String;
    if-eqz v22, :cond_4

    .line 1774
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/providers/calendar/CalendarProvider2;->getAccount(J)Landroid/accounts/Account;

    move-result-object v16

    .line 1775
    .local v16, "account":Landroid/accounts/Account;
    if-eqz v16, :cond_4

    .line 1776
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1777
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1780
    .end local v16    # "account":Landroid/accounts/Account;
    :cond_4
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/calendar/CalendarProvider2;->verifyColorExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 1788
    .end local v17    # "accountName":Ljava/lang/String;
    .end local v18    # "accountType":Ljava/lang/String;
    .end local v22    # "calId":Ljava/lang/Long;
    .end local v23    # "calIdCol":I
    :cond_5
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1789
    const-string v4, "rrule"

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v39

    .line 1790
    .local v39, "rruleCol":I
    move-object/from16 v0, v31

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1791
    const-string v4, "CalendarProvider2"

    const-string v8, "Original event has no rrule"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1792
    const-wide/16 v6, -0x1

    .line 2065
    if-eqz v31, :cond_6

    .line 2066
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 2068
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 1799
    :cond_7
    :try_start_2
    const-string v4, "original_id"

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    .line 1800
    .local v37, "originalIdCol":I
    move-object/from16 v0, v31

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1801
    const-string v4, "CalendarProvider2"

    const-string v8, "Original event is an exception"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1802
    const-wide/16 v6, -0x1

    .line 2065
    if-eqz v31, :cond_8

    .line 2066
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 2068
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 1805
    :cond_9
    :try_start_3
    const-string v4, "rrule"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    .line 1813
    .local v30, "createSingleException":Z
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1814
    .local v5, "values":Landroid/content/ContentValues;
    move-object/from16 v0, v31

    invoke-static {v0, v5}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 1815
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 1816
    const/16 v31, 0x0

    .line 1822
    const/16 v29, 0x1

    .line 1823
    .local v29, "createNewEvent":Z
    if-eqz v30, :cond_10

    .line 1827
    const-string v4, "_id"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1828
    .local v14, "_id":Ljava/lang/String;
    const-string v4, "_sync_id"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1829
    .local v15, "_sync_id":Ljava/lang/String;
    const-string v4, "allDay"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    .line 1834
    .local v19, "allDay":Z
    sget-object v20, Lcom/android/providers/calendar/CalendarProvider2;->DONT_CLONE_INTO_EXCEPTION:[Ljava/lang/String;

    .local v20, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v36, v0

    .local v36, "len$":I
    const/16 v35, 0x0

    .local v35, "i$":I
    :goto_1
    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_a

    aget-object v43, v20, v35

    .line 1835
    .local v43, "str":Ljava/lang/String;
    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1834
    add-int/lit8 v35, v35, 0x1

    goto :goto_1

    .line 1842
    .end local v43    # "str":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 1858
    const-string v4, "original_id"

    invoke-virtual {v5, v4, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    const-string v4, "original_sync_id"

    invoke-virtual {v5, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    const-string v4, "originalAllDay"

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1864
    const-string v4, "eventStatus"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1865
    const-string v4, "eventStatus"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1871
    :cond_b
    const-string v4, "rrule"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1872
    const-string v4, "rdate"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1873
    const-string v4, "exrule"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1874
    const-string v4, "exdate"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1876
    new-instance v32, Lcom/android/calendarcommon2/Duration;

    invoke-direct/range {v32 .. v32}, Lcom/android/calendarcommon2/Duration;-><init>()V

    .line 1877
    .local v32, "duration":Lcom/android/calendarcommon2/Duration;
    const-string v4, "duration"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v33

    .line 1879
    .local v33, "durationStr":Ljava/lang/String;
    :try_start_4
    invoke-virtual/range {v32 .. v33}, Lcom/android/calendarcommon2/Duration;->parse(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1894
    :try_start_5
    const-string v4, "dtstart"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1895
    const-string v4, "dtstart"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v41

    .line 1900
    .local v41, "start":J
    :goto_2
    const-string v4, "dtend"

    invoke-virtual/range {v32 .. v32}, Lcom/android/calendarcommon2/Duration;->getMillis()J

    move-result-wide v8

    add-long v8, v8, v41

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1906
    const-string v4, "duration"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1973
    .end local v14    # "_id":Ljava/lang/String;
    .end local v15    # "_sync_id":Ljava/lang/String;
    .end local v19    # "allDay":Z
    .end local v20    # "arr$":[Ljava/lang/String;
    .end local v32    # "duration":Lcom/android/calendarcommon2/Duration;
    .end local v33    # "durationStr":Ljava/lang/String;
    .end local v35    # "i$":I
    .end local v36    # "len$":I
    .end local v41    # "start":J
    :goto_3
    if-eqz v29, :cond_17

    .line 1974
    const-string v4, "_id"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1975
    if-eqz p4, :cond_15

    .line 1976
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/android/providers/calendar/CalendarProvider2;->scrubEventData(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1981
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "Events"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 1982
    .local v6, "newEventId":J
    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-gez v4, :cond_16

    .line 1983
    const-string v4, "CalendarProvider2"

    const-string v8, "Unable to add exception to recurring event"

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    const-string v4, "CalendarProvider2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Values: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1985
    const-wide/16 v6, -0x1

    .line 2065
    .end local v6    # "newEventId":J
    if-eqz v31, :cond_c

    .line 2066
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 2068
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 1880
    .restart local v14    # "_id":Ljava/lang/String;
    .restart local v15    # "_sync_id":Ljava/lang/String;
    .restart local v19    # "allDay":Z
    .restart local v20    # "arr$":[Ljava/lang/String;
    .restart local v32    # "duration":Lcom/android/calendarcommon2/Duration;
    .restart local v33    # "durationStr":Ljava/lang/String;
    .restart local v35    # "i$":I
    .restart local v36    # "len$":I
    :catch_0
    move-exception v34

    .line 1883
    .local v34, "ex":Ljava/lang/Exception;
    :try_start_6
    const-string v4, "CalendarProvider2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad duration in recurring event: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v34

    invoke-static {v4, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1884
    const-wide/16 v6, -0x1

    .line 2065
    if-eqz v31, :cond_d

    .line 2066
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 2068
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 1897
    .end local v34    # "ex":Ljava/lang/Exception;
    :cond_e
    :try_start_7
    const-string v4, "originalInstanceTime"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v41

    .line 1898
    .restart local v41    # "start":J
    const-string v4, "dtstart"

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 2065
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v14    # "_id":Ljava/lang/String;
    .end local v15    # "_sync_id":Ljava/lang/String;
    .end local v19    # "allDay":Z
    .end local v20    # "arr$":[Ljava/lang/String;
    .end local v27    # "color_index":Ljava/lang/String;
    .end local v29    # "createNewEvent":Z
    .end local v30    # "createSingleException":Z
    .end local v32    # "duration":Lcom/android/calendarcommon2/Duration;
    .end local v33    # "durationStr":Ljava/lang/String;
    .end local v35    # "i$":I
    .end local v36    # "len$":I
    .end local v37    # "originalIdCol":I
    .end local v39    # "rruleCol":I
    .end local v41    # "start":J
    :catchall_0
    move-exception v4

    if-eqz v31, :cond_f

    .line 2066
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 2068
    :cond_f
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 1918
    .restart local v5    # "values":Landroid/content/ContentValues;
    .restart local v27    # "color_index":Ljava/lang/String;
    .restart local v29    # "createNewEvent":Z
    .restart local v30    # "createSingleException":Z
    .restart local v37    # "originalIdCol":I
    .restart local v39    # "rruleCol":I
    :cond_10
    :try_start_8
    const-string v4, "eventStatus"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v8, 0x2

    if-ne v4, v8, :cond_12

    const/16 v26, 0x1

    .line 1920
    .local v26, "canceling":Z
    :goto_5
    const-string v4, "dtstart"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1926
    if-eqz v26, :cond_11

    .line 1928
    const-string v4, "CalendarProvider2"

    const-string v8, "Note: canceling entire event via exception call"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->validateRecurrenceRule(Landroid/content/ContentValues;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 1934
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid recurrence rule: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "rrule"

    invoke-virtual {v5, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1918
    .end local v26    # "canceling":Z
    :cond_12
    const/16 v26, 0x0

    goto :goto_5

    .line 1937
    .restart local v26    # "canceling":Z
    :cond_13
    const-string v4, "originalInstanceTime"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1938
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "Events"

    const-string v9, "_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    move-object/from16 v0, p3

    invoke-virtual {v4, v8, v0, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1940
    const/16 v29, 0x0

    goto/16 :goto_3

    .line 1954
    :cond_14
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v5, v8, v9}, Lcom/android/providers/calendar/CalendarProvider2;->setRecurrenceEnd(Landroid/content/ContentValues;J)Landroid/content/ContentValues;

    move-result-object v40

    .line 1955
    .local v40, "splitValues":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "Events"

    const-string v9, "_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    move-object/from16 v0, v40

    invoke-virtual {v4, v8, v0, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1967
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 1968
    const-string v4, "originalInstanceTime"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1978
    .end local v26    # "canceling":Z
    .end local v40    # "splitValues":Landroid/content/ContentValues;
    :cond_15
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/providers/calendar/CalendarProvider2;->validateEventData(Landroid/content/ContentValues;)V

    goto/16 :goto_4

    .line 1997
    .restart local v6    # "newEventId":J
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mInstancesHelper:Lcom/android/providers/calendar/CalendarInstancesHelper;

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v4 .. v9}, Lcom/android/providers/calendar/CalendarInstancesHelper;->updateInstancesLocked(Landroid/content/ContentValues;JZLandroid/database/sqlite/SQLiteDatabase;)V

    .line 2005
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-wide/from16 v0, p1

    invoke-static {v4, v6, v7, v0, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->copyEventRelatedTables(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    .line 2011
    const-string v4, "selfAttendeeStatus"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 2017
    const-string v4, "calendar_id"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 2018
    .local v24, "calendarId":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->getOwner(J)Ljava/lang/String;

    move-result-object v17

    .line 2020
    .restart local v17    # "accountName":Ljava/lang/String;
    if-eqz v17, :cond_18

    .line 2021
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 2022
    .local v21, "attValues":Landroid/content/ContentValues;
    const-string v4, "attendeeStatus"

    const-string v8, "selfAttendeeStatus"

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "Attendees"

    const-string v9, "event_id=? AND attendeeEmail=?"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v17, v10, v11

    move-object/from16 v0, v21

    invoke-virtual {v4, v8, v0, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v28

    .line 2033
    .local v28, "count":I
    const/4 v4, 0x1

    move/from16 v0, v28

    if-eq v0, v4, :cond_18

    const/4 v4, 0x2

    move/from16 v0, v28

    if-eq v0, v4, :cond_18

    .line 2036
    const-string v4, "CalendarProvider2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attendee status update on event="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " touched "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " rows. Expected one or two rows."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v8, "Status update WTF"

    invoke-direct {v4, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2058
    .end local v6    # "newEventId":J
    .end local v17    # "accountName":Ljava/lang/String;
    .end local v21    # "attValues":Landroid/content/ContentValues;
    .end local v24    # "calendarId":J
    .end local v28    # "count":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/providers/calendar/CalendarProvider2;->mInstancesHelper:Lcom/android/providers/calendar/CalendarInstancesHelper;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v9, v5

    move-wide/from16 v10, p1

    invoke-virtual/range {v8 .. v13}, Lcom/android/providers/calendar/CalendarInstancesHelper;->updateInstancesLocked(Landroid/content/ContentValues;JZLandroid/database/sqlite/SQLiteDatabase;)V

    .line 2059
    move-wide/from16 v6, p1

    .line 2062
    .restart local v6    # "newEventId":J
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2065
    if-eqz v31, :cond_19

    .line 2066
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 2068
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0
.end method

.method private handleInstanceQuery(Landroid/database/sqlite/SQLiteQueryBuilder;JJ[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)Landroid/database/Cursor;
    .locals 18
    .param p1, "qb"    # Landroid/database/sqlite/SQLiteQueryBuilder;
    .param p2, "rangeBegin"    # J
    .param p4, "rangeEnd"    # J
    .param p6, "projection"    # [Ljava/lang/String;
    .param p7, "selection"    # Ljava/lang/String;
    .param p8, "selectionArgs"    # [Ljava/lang/String;
    .param p9, "sort"    # Ljava/lang/String;
    .param p10, "searchByDay"    # Z
    .param p11, "forceExpansion"    # Z
    .param p12, "instancesTimezone"    # Ljava/lang/String;
    .param p13, "isHomeTimezone"    # Z

    .prologue
    .line 1092
    const-string v2, "Instances INNER JOIN view_events AS Events ON (Instances.event_id=Events._id)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1093
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1094
    if-eqz p10, :cond_0

    .line 1097
    new-instance v17, Landroid/text/format/Time;

    move-object/from16 v0, v17

    move-object/from16 v1, p12

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1098
    .local v17, "time":Landroid/text/format/Time;
    move-wide/from16 v0, p2

    long-to-int v2, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v3

    .line 1101
    .local v3, "beginMs":J
    move-wide/from16 v0, p4

    long-to-int v2, v0

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v5

    .line 1103
    .local v5, "endMs":J
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move/from16 v8, p11

    move-object/from16 v9, p12

    move/from16 v10, p13

    invoke-direct/range {v2 .. v10}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRange(JJZZLjava/lang/String;Z)V

    .line 1105
    const-string v2, "startDay<=? AND endDay>=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1113
    .end local v3    # "beginMs":J
    .end local v5    # "endMs":J
    .end local v17    # "time":Landroid/text/format/Time;
    :goto_0
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v16, v2

    const/4 v2, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v16, v2

    .line 1115
    .local v16, "newSelectionArgs":[Ljava/lang/String;
    if-nez p8, :cond_1

    .line 1116
    move-object/from16 p8, v16

    .line 1122
    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p1

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v14, p9

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    .line 1108
    .end local v16    # "newSelectionArgs":[Ljava/lang/String;
    :cond_0
    const/4 v12, 0x1

    move-object/from16 v7, p0

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    invoke-direct/range {v7 .. v15}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRange(JJZZLjava/lang/String;Z)V

    .line 1110
    const-string v2, "begin<=? AND end>=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1120
    .restart local v16    # "newSelectionArgs":[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [[Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v16, v2, v7

    const/4 v7, 0x1

    aput-object p8, v2, v7

    invoke-static {v2}, Lcom/android/providers/calendar/CalendarProvider2;->combine([[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p8

    .end local p8    # "selectionArgs":[Ljava/lang/String;
    check-cast p8, [Ljava/lang/String;

    .restart local p8    # "selectionArgs":[Ljava/lang/String;
    goto :goto_1
.end method

.method private handleInstanceSearchQuery(Landroid/database/sqlite/SQLiteQueryBuilder;JJLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/database/Cursor;
    .locals 21
    .param p1, "qb"    # Landroid/database/sqlite/SQLiteQueryBuilder;
    .param p2, "rangeBegin"    # J
    .param p4, "rangeEnd"    # J
    .param p6, "query"    # Ljava/lang/String;
    .param p7, "projection"    # [Ljava/lang/String;
    .param p8, "selection"    # Ljava/lang/String;
    .param p9, "selectionArgs"    # [Ljava/lang/String;
    .param p10, "sort"    # Ljava/lang/String;
    .param p11, "searchByDay"    # Z
    .param p12, "instancesTimezone"    # Ljava/lang/String;
    .param p13, "isHomeTimezone"    # Z

    .prologue
    .line 1259
    const-string v2, "(Instances INNER JOIN view_events AS Events ON (Instances.event_id=Events._id)) LEFT OUTER JOIN Attendees ON (Attendees.event_id=Events._id)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1260
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1262
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->tokenizeSearchQuery(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "tokens":[Ljava/lang/String;
    move-object/from16 v2, p0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    .line 1263
    invoke-virtual/range {v2 .. v7}, Lcom/android/providers/calendar/CalendarProvider2;->constructSearchArgs([Ljava/lang/String;JJ)[Ljava/lang/String;

    move-result-object v18

    .line 1264
    .local v18, "newSelectionArgs":[Ljava/lang/String;
    if-nez p9, :cond_0

    .line 1265
    move-object/from16 p9, v18

    .line 1273
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/providers/calendar/CalendarProvider2;->constructSearchWhere([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1275
    .local v19, "searchWhere":Ljava/lang/String;
    if-eqz p11, :cond_1

    .line 1278
    new-instance v20, Landroid/text/format/Time;

    move-object/from16 v0, v20

    move-object/from16 v1, p12

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1279
    .local v20, "time":Landroid/text/format/Time;
    move-wide/from16 v0, p2

    long-to-int v2, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v5

    .line 1282
    .local v5, "beginMs":J
    move-wide/from16 v0, p4

    long-to-int v2, v0

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v7

    .line 1286
    .local v7, "endMs":J
    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v11, p12

    move/from16 v12, p13

    invoke-direct/range {v4 .. v12}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRange(JJZZLjava/lang/String;Z)V

    .line 1292
    const-string v2, "startDay<=? AND endDay>=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1306
    .end local v5    # "beginMs":J
    .end local v7    # "endMs":J
    .end local v20    # "time":Landroid/text/format/Time;
    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v14, "Instances._id"

    move-object/from16 v9, p1

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v15, v19

    move-object/from16 v16, p10

    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    .line 1269
    .end local v19    # "searchWhere":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v18, v2, v4

    const/4 v4, 0x1

    aput-object p9, v2, v4

    invoke-static {v2}, Lcom/android/providers/calendar/CalendarProvider2;->combine([[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p9

    .end local p9    # "selectionArgs":[Ljava/lang/String;
    check-cast p9, [Ljava/lang/String;

    .restart local p9    # "selectionArgs":[Ljava/lang/String;
    goto :goto_0

    .line 1297
    .restart local v19    # "searchWhere":Ljava/lang/String;
    :cond_1
    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-object/from16 v16, p12

    move/from16 v17, p13

    invoke-direct/range {v9 .. v17}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRange(JJZZLjava/lang/String;Z)V

    .line 1303
    const-string v2, "begin<=? AND end>=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private handleUpdateColors(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 17
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 3685
    const/4 v12, 0x0

    .line 3686
    .local v12, "c":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "Colors"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 3687
    .local v16, "result":I
    const-string v3, "color"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3689
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "Colors"

    sget-object v5, Lcom/android/providers/calendar/CalendarProvider2;->COLORS_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 3691
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3692
    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v13, 0x1

    .line 3694
    .local v13, "calendarColor":Z
    :goto_1
    const/4 v3, 0x4

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 3695
    .local v14, "color":I
    const/4 v3, 0x3

    new-array v11, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v3

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v3

    .line 3700
    .local v11, "args":[Ljava/lang/String;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 3701
    .local v15, "colorValue":Landroid/content/ContentValues;
    if-eqz v13, :cond_2

    .line 3702
    const-string v3, "calendar_color"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3703
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "Calendars"

    const-string v5, "account_name=? AND account_type=? AND calendar_color_index=?"

    invoke-virtual {v3, v4, v15, v5, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3710
    .end local v11    # "args":[Ljava/lang/String;
    .end local v13    # "calendarColor":Z
    .end local v14    # "color":I
    .end local v15    # "colorValue":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    if-eqz v12, :cond_0

    .line 3711
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v3

    .line 3692
    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    .line 3705
    .restart local v11    # "args":[Ljava/lang/String;
    .restart local v13    # "calendarColor":Z
    .restart local v14    # "color":I
    .restart local v15    # "colorValue":Landroid/content/ContentValues;
    :cond_2
    :try_start_1
    const-string v3, "eventColor"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3706
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "Events"

    const-string v5, "calendar_id in (SELECT _id from Calendars WHERE account_name=? AND account_type=?) AND eventColor_index=?"

    invoke-virtual {v3, v4, v15, v5, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3710
    .end local v11    # "args":[Ljava/lang/String;
    .end local v13    # "calendarColor":Z
    .end local v14    # "color":I
    .end local v15    # "colorValue":Landroid/content/ContentValues;
    :cond_3
    if-eqz v12, :cond_4

    .line 3711
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3715
    :cond_4
    return v16
.end method

.method private handleUpdateEvents(Landroid/database/Cursor;Landroid/content/ContentValues;Z)I
    .locals 28
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "updateValues"    # Landroid/content/ContentValues;
    .param p3, "callerIsSyncAdapter"    # Z

    .prologue
    .line 3739
    const-string v3, "hasAlarm"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3752
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 3753
    const-string v3, "CalendarProvider2"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3754
    const-string v3, "CalendarProvider2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Performing update on "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " events"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3757
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 3759
    new-instance v20, Landroid/content/ContentValues;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 3762
    .local v20, "modValues":Landroid/content/ContentValues;
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 3763
    .local v27, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 3764
    const/16 v17, 0x0

    .line 3765
    .local v17, "doValidate":Z
    if-nez p3, :cond_1

    .line 3770
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->validateEventData(Landroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3771
    const/16 v17, 0x1

    .line 3780
    :cond_1
    :goto_1
    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 3783
    const-string v3, "eventColor_index"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3784
    .local v15, "color_id":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3785
    const/4 v11, 0x0

    .line 3786
    .local v11, "accountName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 3787
    .local v12, "accountType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "Calendars"

    sget-object v5, Lcom/android/providers/calendar/CalendarProvider2;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "calendar_id"

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 3790
    .local v14, "c":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3791
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3792
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    .line 3795
    :cond_2
    if-eqz v14, :cond_3

    .line 3796
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 3799
    :cond_3
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v15, v3}, Lcom/android/providers/calendar/CalendarProvider2;->verifyColorExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 3803
    .end local v11    # "accountName":Ljava/lang/String;
    .end local v12    # "accountType":Ljava/lang/String;
    .end local v14    # "c":Landroid/database/Cursor;
    :cond_4
    if-eqz p3, :cond_5

    .line 3804
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->scrubEventData(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 3806
    :cond_5
    if-eqz v17, :cond_6

    .line 3807
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->validateEventData(Landroid/content/ContentValues;)V

    .line 3812
    :cond_6
    const-string v3, "dtstart"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "dtend"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "duration"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "eventTimezone"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "rrule"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "rdate"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "exrule"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "exdate"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3822
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->calculateLastDate(Landroid/content/ContentValues;)J
    :try_end_2
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v21

    .line 3826
    .local v21, "newLastDate":J
    const-string v3, "lastDate"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v25

    .line 3827
    .local v25, "oldLastDateObj":Ljava/lang/Long;
    if-nez v25, :cond_b

    const-wide/16 v23, -0x1

    .line 3828
    .local v23, "oldLastDate":J
    :goto_2
    cmp-long v3, v23, v21

    if-eqz v3, :cond_8

    .line 3831
    const-wide/16 v3, 0x0

    cmp-long v3, v21, v3

    if-gez v3, :cond_c

    .line 3832
    const-string v3, "lastDate"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 3839
    .end local v21    # "newLastDate":J
    .end local v23    # "oldLastDate":J
    .end local v25    # "oldLastDateObj":Ljava/lang/Long;
    :cond_8
    :goto_3
    if-nez p3, :cond_9

    .line 3840
    const-string v3, "dirty"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3841
    const-string v3, "mutators"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3}, Lcom/android/providers/calendar/CalendarProvider2;->addMutator(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3848
    :cond_9
    const-string v3, "selfAttendeeStatus"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3849
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Updating selfAttendeeStatus in Events table is not allowed."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3772
    .end local v15    # "color_id":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 3773
    .local v18, "iae":Ljava/lang/IllegalArgumentException;
    const-string v3, "CalendarProvider2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Event "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "_id"

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " malformed, not validating update ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3795
    .end local v18    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v11    # "accountName":Ljava/lang/String;
    .restart local v12    # "accountType":Ljava/lang/String;
    .restart local v14    # "c":Landroid/database/Cursor;
    .restart local v15    # "color_id":Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v14, :cond_a

    .line 3796
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v3

    .line 3823
    .end local v11    # "accountName":Ljava/lang/String;
    .end local v12    # "accountType":Ljava/lang/String;
    .end local v14    # "c":Landroid/database/Cursor;
    :catch_1
    move-exception v16

    .line 3824
    .local v16, "de":Lcom/android/calendarcommon2/DateException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unable to compute LAST_DATE"

    move-object/from16 v0, v16

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 3827
    .end local v16    # "de":Lcom/android/calendarcommon2/DateException;
    .restart local v21    # "newLastDate":J
    .restart local v25    # "oldLastDateObj":Ljava/lang/Long;
    :cond_b
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    goto/16 :goto_2

    .line 3834
    .restart local v23    # "oldLastDate":J
    :cond_c
    const-string v3, "lastDate"

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_3

    .line 3854
    .end local v21    # "newLastDate":J
    .end local v23    # "oldLastDate":J
    .end local v25    # "oldLastDateObj":Ljava/lang/Long;
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->fixAllDayTime(Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 3855
    const-string v3, "CalendarProvider2"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 3856
    const-string v3, "CalendarProvider2"

    const-string v4, "handleUpdateEvents: allDay is true but sec, min, hour were not 0."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3863
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->doesStatusCancelUpdateMeanUpdate(Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v19

    .line 3865
    .local v19, "isUpdate":Z
    const-string v3, "_id"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 3867
    .local v5, "id":J
    if-eqz v19, :cond_15

    .line 3871
    if-nez p3, :cond_14

    .line 3872
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v3, v5, v6}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->duplicateEvent(J)V

    .line 3880
    :cond_f
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "Events"

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, v20

    invoke-virtual {v3, v4, v0, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v26

    .line 3882
    .local v26, "result":I
    if-lez v26, :cond_0

    .line 3883
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v5, v6, v1}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventRawTimesLocked(JLandroid/content/ContentValues;)V

    .line 3884
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mInstancesHelper:Lcom/android/providers/calendar/CalendarInstancesHelper;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v4, v20

    invoke-virtual/range {v3 .. v8}, Lcom/android/providers/calendar/CalendarInstancesHelper;->updateInstancesLocked(Landroid/content/ContentValues;JZLandroid/database/sqlite/SQLiteDatabase;)V

    .line 3889
    const-string v3, "dtstart"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "eventStatus"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 3893
    :cond_10
    const-string v3, "eventStatus"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "eventStatus"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_11

    .line 3895
    const/4 v3, 0x1

    new-array v13, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v3

    .line 3896
    .local v13, "args":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "Instances"

    const-string v7, "event_id=?"

    invoke-virtual {v3, v4, v7, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3901
    .end local v13    # "args":[Ljava/lang/String;
    :cond_11
    const-string v3, "CalendarProvider2"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 3902
    const-string v3, "CalendarProvider2"

    const-string v4, "updateInternal() changing event"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3904
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleNextAlarm(Z)V

    .line 3907
    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v5, v6, v1}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(JZ)V

    goto/16 :goto_0

    .line 3874
    .end local v26    # "result":I
    :cond_14
    const-string v3, "dirty"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "dirty"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_f

    .line 3876
    const-string v4, "mutators"

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3877
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v3, v5, v6}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->removeDuplicateEvent(J)V

    goto/16 :goto_4

    .line 3910
    :cond_15
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v5, v6, v1, v3}, Lcom/android/providers/calendar/CalendarProvider2;->deleteEventInternal(JZZ)I

    .line 3911
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleNextAlarm(Z)V

    .line 3912
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(Z)V

    goto/16 :goto_0

    .line 3916
    .end local v5    # "id":J
    .end local v15    # "color_id":Ljava/lang/String;
    .end local v17    # "doValidate":Z
    .end local v19    # "isUpdate":Z
    .end local v20    # "modValues":Landroid/content/ContentValues;
    .end local v27    # "values":Landroid/content/ContentValues;
    :cond_16
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    return v3
.end method

.method private initialize()Z
    .locals 4

    .prologue
    .line 528
    sput-object p0, Lcom/android/providers/calendar/CalendarProvider2;->mInstance:Lcom/android/providers/calendar/CalendarProvider2;

    .line 530
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    .line 531
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContentResolver:Landroid/content/ContentResolver;

    .line 533
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    check-cast v1, Lcom/android/providers/calendar/CalendarDatabaseHelper;

    iput-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    .line 534
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 536
    new-instance v1, Lcom/android/providers/calendar/MetaData;

    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-direct {v1, v2}, Lcom/android/providers/calendar/MetaData;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    .line 537
    new-instance v1, Lcom/android/providers/calendar/CalendarInstancesHelper;

    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    invoke-direct {v1, v2, v3}, Lcom/android/providers/calendar/CalendarInstancesHelper;-><init>(Lcom/android/providers/calendar/CalendarDatabaseHelper;Lcom/android/providers/calendar/MetaData;)V

    iput-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mInstancesHelper:Lcom/android/providers/calendar/CalendarInstancesHelper;

    .line 540
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 542
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 543
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 544
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 550
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 552
    new-instance v1, Lcom/android/providers/calendar/CalendarCache;

    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-direct {v1, v2}, Lcom/android/providers/calendar/CalendarCache;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    .line 555
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->initCalendarAlarm()V

    .line 557
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->postInitialize()V

    .line 559
    const/4 v1, 0x1

    return v1
.end method

.method private insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "selectionArgs"    # [Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5061
    if-nez p1, :cond_0

    .line 5062
    new-array v1, v4, [Ljava/lang/String;

    aput-object p2, v1, v3

    .line 5068
    :goto_0
    return-object v1

    .line 5064
    :cond_0
    array-length v2, p1

    add-int/lit8 v0, v2, 0x1

    .line 5065
    .local v0, "newLength":I
    new-array v1, v0, [Ljava/lang/String;

    .line 5066
    .local v1, "newSelectionArgs":[Ljava/lang/String;
    aput-object p2, v1, v3

    .line 5067
    array-length v2, p1

    invoke-static {p1, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private isHomeTimezone()Z
    .locals 2

    .prologue
    .line 776
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneType()Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, "type":Ljava/lang/String;
    const-string v1, "home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isLocalSameAsInstancesTimezone()Z
    .locals 2

    .prologue
    .line 625
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, "localTimezone":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static isRecurrenceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "rrule"    # Ljava/lang/String;
    .param p1, "rdate"    # Ljava/lang/String;
    .param p2, "originalId"    # Ljava/lang/String;
    .param p3, "originalSyncId"    # Ljava/lang/String;

    .prologue
    .line 1523
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private modifyCalendarSubscription(JZ)V
    .locals 15
    .param p1, "id"    # J
    .param p3, "syncEvents"    # Z

    .prologue
    .line 4463
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "account_name"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "account_type"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "cal_sync1"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "sync_events"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 4470
    .local v13, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 4471
    .local v8, "account":Landroid/accounts/Account;
    const/4 v12, 0x0

    .line 4472
    .local v12, "calendarUrl":Ljava/lang/String;
    const/4 v14, 0x0

    .line 4473
    .local v14, "oldSyncEvents":Z
    if-eqz v13, :cond_1

    .line 4475
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4476
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 4477
    .local v10, "accountName":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4478
    .local v11, "accountType":Ljava/lang/String;
    new-instance v9, Landroid/accounts/Account;

    invoke-direct {v9, v10, v11}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4479
    .end local v8    # "account":Landroid/accounts/Account;
    .local v9, "account":Landroid/accounts/Account;
    const/4 v2, 0x2

    :try_start_1
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 4480
    const/4 v2, 0x3

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-eqz v2, :cond_3

    const/4 v14, 0x1

    :goto_0
    move-object v8, v9

    .line 4483
    .end local v9    # "account":Landroid/accounts/Account;
    .end local v10    # "accountName":Ljava/lang/String;
    .end local v11    # "accountType":Ljava/lang/String;
    .restart local v8    # "account":Landroid/accounts/Account;
    :cond_0
    if-eqz v13, :cond_1

    .line 4484
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 4488
    :cond_1
    if-nez v8, :cond_5

    .line 4490
    const-string v2, "CalendarProvider2"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4491
    const-string v2, "CalendarProvider2"

    const-string v3, "Cannot update subscription because account is empty -- should not happen."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4511
    :cond_2
    :goto_1
    return-void

    .line 4480
    .end local v8    # "account":Landroid/accounts/Account;
    .restart local v9    # "account":Landroid/accounts/Account;
    .restart local v10    # "accountName":Ljava/lang/String;
    .restart local v11    # "accountType":Ljava/lang/String;
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 4483
    .end local v9    # "account":Landroid/accounts/Account;
    .end local v10    # "accountName":Ljava/lang/String;
    .end local v11    # "accountType":Ljava/lang/String;
    .restart local v8    # "account":Landroid/accounts/Account;
    :catchall_0
    move-exception v2

    :goto_2
    if-eqz v13, :cond_4

    .line 4484
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2

    .line 4497
    :cond_5
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4500
    const/4 v12, 0x0

    .line 4503
    :cond_6
    move/from16 v0, p3

    if-eq v14, v0, :cond_2

    .line 4510
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    if-nez p3, :cond_7

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v3, v8, v2, v12}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->scheduleSync(Landroid/accounts/Account;ZLjava/lang/String;)V

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 4483
    .end local v8    # "account":Landroid/accounts/Account;
    .restart local v9    # "account":Landroid/accounts/Account;
    .restart local v10    # "accountName":Ljava/lang/String;
    .restart local v11    # "accountType":Ljava/lang/String;
    :catchall_1
    move-exception v2

    move-object v8, v9

    .end local v9    # "account":Landroid/accounts/Account;
    .restart local v8    # "account":Landroid/accounts/Account;
    goto :goto_2
.end method

.method private query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "qb"    # Landroid/database/sqlite/SQLiteQueryBuilder;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;
    .param p7, "groupBy"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;

    .prologue
    .line 1049
    if-eqz p3, :cond_0

    array-length v1, p3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "_count"

    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1051
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sCountProjectionMap:Ljava/util/HashMap;

    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1054
    :cond_0
    const-string v1, "CalendarProvider2"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1055
    const-string v1, "CalendarProvider2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query sql - projection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " selection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " selectionArgs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p5 .. p5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sortOrder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " groupBy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " limit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :cond_1
    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1064
    .local v10, "c":Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 1066
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v10, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1068
    :cond_2
    return-object v10
.end method

.method private queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 35
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 847
    const-string v3, "CalendarProvider2"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 848
    const-string v3, "CalendarProvider2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "query uri - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/calendar/CalendarProvider2;->validateUriParameters(Ljava/util/Set;)V

    .line 851
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 853
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v8, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v8}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 854
    .local v8, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const/16 v31, 0x0

    .line 855
    .local v31, "groupBy":Ljava/lang/String;
    const/16 v32, 0x0

    .line 858
    .local v32, "limit":Ljava/lang/String;
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v33

    .line 859
    .local v33, "match":I
    packed-switch v33, :pswitch_data_0

    .line 1029
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URL "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 861
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v3

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/common/content/SyncStateContentProviderHelper;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v8    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-result-object v3

    .line 1033
    :goto_0
    return-object v3

    .line 864
    .restart local v8    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id=?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p3, :cond_1

    const-string v3, ""

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 867
    .local v6, "selectionWithId":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v3}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 869
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v3

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/common/content/SyncStateContentProviderHelper;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v8    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-result-object v3

    goto :goto_0

    .line 864
    .end local v6    # "selectionWithId":Ljava/lang/String;
    .restart local v8    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " AND ("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 873
    :pswitch_3
    const-string v3, "view_events"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 874
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 875
    const-string v3, "account_name"

    const-string v5, "account_type"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 877
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->appendLastSyncedColumnToSelection(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p3

    :goto_2
    move-object/from16 v24, p0

    move-object/from16 v25, v4

    move-object/from16 v26, v8

    move-object/from16 v27, p2

    move-object/from16 v28, p3

    move-object/from16 v29, p4

    move-object/from16 v30, p5

    .line 1033
    invoke-direct/range {v24 .. v32}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 880
    :pswitch_4
    const-string v3, "view_events"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 881
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 882
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v3}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 883
    const-string v3, "_id=?"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 887
    :pswitch_5
    const-string v3, "view_events"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 888
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 889
    const-string v3, "account_name"

    const-string v5, "account_type"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 891
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->appendLastSyncedColumnToSelection(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p3

    .line 892
    goto :goto_2

    .line 894
    :pswitch_6
    const-string v3, "view_events"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 895
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 896
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v3}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 897
    const-string v3, "_id=?"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 901
    :pswitch_7
    const-string v3, "Colors"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 902
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sColorsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 903
    const-string v3, "account_name"

    const-string v5, "account_type"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 905
    goto/16 :goto_2

    .line 909
    :pswitch_8
    const-string v3, "Calendars"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 910
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 911
    const-string v3, "account_name"

    const-string v5, "account_type"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 913
    goto/16 :goto_2

    .line 916
    :pswitch_9
    const-string v3, "Calendars"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 917
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 918
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v3}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 919
    const-string v3, "_id=?"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 926
    :pswitch_a
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v9

    .line 932
    .local v9, "begin":J
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v11

    .line 937
    .local v11, "end":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v19

    .line 938
    .local v19, "instancesTimezone":Ljava/lang/String;
    const/16 v3, 0xf

    move/from16 v0, v33

    if-ne v0, v3, :cond_2

    const/16 v17, 0x1

    :goto_3
    const/16 v18, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->isHomeTimezone()Z

    move-result v20

    move-object/from16 v7, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    invoke-direct/range {v7 .. v20}, Lcom/android/providers/calendar/CalendarProvider2;->handleInstanceQuery(Landroid/database/sqlite/SQLiteQueryBuilder;JJ[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 927
    .end local v9    # "begin":J
    .end local v11    # "end":J
    .end local v19    # "instancesTimezone":Ljava/lang/String;
    :catch_0
    move-exception v34

    .line 928
    .local v34, "nfe":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot parse begin "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v14, 0x2

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 933
    .end local v34    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v9    # "begin":J
    :catch_1
    move-exception v34

    .line 934
    .restart local v34    # "nfe":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot parse end "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v14, 0x3

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 938
    .end local v34    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v11    # "end":J
    .restart local v19    # "instancesTimezone":Ljava/lang/String;
    :cond_2
    const/16 v17, 0x0

    goto :goto_3

    .line 944
    .end local v9    # "begin":J
    .end local v11    # "end":J
    .end local v19    # "instancesTimezone":Ljava/lang/String;
    :pswitch_b
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v9

    .line 950
    .restart local v9    # "begin":J
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v11

    .line 955
    .restart local v11    # "end":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v19

    .line 957
    .restart local v19    # "instancesTimezone":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x4

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 958
    .local v13, "query":Ljava/lang/String;
    const/16 v3, 0x1b

    move/from16 v0, v33

    if-ne v0, v3, :cond_3

    const/16 v18, 0x1

    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->isHomeTimezone()Z

    move-result v20

    move-object/from16 v7, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    invoke-direct/range {v7 .. v20}, Lcom/android/providers/calendar/CalendarProvider2;->handleInstanceSearchQuery(Landroid/database/sqlite/SQLiteQueryBuilder;JJLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 945
    .end local v9    # "begin":J
    .end local v11    # "end":J
    .end local v13    # "query":Ljava/lang/String;
    .end local v19    # "instancesTimezone":Ljava/lang/String;
    :catch_2
    move-exception v34

    .line 946
    .restart local v34    # "nfe":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot parse begin "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v14, 0x2

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 951
    .end local v34    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v9    # "begin":J
    :catch_3
    move-exception v34

    .line 952
    .restart local v34    # "nfe":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot parse end "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v14, 0x3

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 958
    .end local v34    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v11    # "end":J
    .restart local v13    # "query":Ljava/lang/String;
    .restart local v19    # "instancesTimezone":Ljava/lang/String;
    :cond_3
    const/16 v18, 0x0

    goto :goto_4

    .line 965
    .end local v9    # "begin":J
    .end local v11    # "end":J
    .end local v13    # "query":Ljava/lang/String;
    .end local v19    # "instancesTimezone":Ljava/lang/String;
    :pswitch_c
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v22

    .line 971
    .local v22, "startDay":I
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v23

    .line 976
    .local v23, "endDay":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v19

    .line 977
    .restart local v19    # "instancesTimezone":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->isHomeTimezone()Z

    move-result v27

    move-object/from16 v20, p0

    move-object/from16 v21, v8

    move-object/from16 v24, p2

    move-object/from16 v25, p3

    move-object/from16 v26, v19

    invoke-direct/range {v20 .. v27}, Lcom/android/providers/calendar/CalendarProvider2;->handleEventDayQuery(Landroid/database/sqlite/SQLiteQueryBuilder;II[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 966
    .end local v19    # "instancesTimezone":Ljava/lang/String;
    .end local v22    # "startDay":I
    .end local v23    # "endDay":I
    :catch_4
    move-exception v34

    .line 967
    .restart local v34    # "nfe":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot parse start day "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v14, 0x2

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 972
    .end local v34    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v22    # "startDay":I
    :catch_5
    move-exception v34

    .line 973
    .restart local v34    # "nfe":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot parse end day "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v14, 0x3

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 980
    .end local v22    # "startDay":I
    .end local v34    # "nfe":Ljava/lang/NumberFormatException;
    :pswitch_d
    const-string v3, "Attendees, Events, Calendars"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 981
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 982
    const-string v3, "Events._id=Attendees.event_id AND Events.calendar_id=Calendars._id"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 985
    :pswitch_e
    const-string v3, "Attendees, Events, Calendars"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 986
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 987
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v3}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 988
    const-string v3, "Attendees._id=? AND Events._id=Attendees.event_id AND Events.calendar_id=Calendars._id"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 991
    :pswitch_f
    const-string v3, "Reminders"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 994
    :pswitch_10
    const-string v3, "Reminders, Events, Calendars"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 995
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 996
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v3}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 997
    const-string v3, "Reminders._id=? AND Events._id=Reminders.event_id AND Events.calendar_id=Calendars._id"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1000
    :pswitch_11
    const-string v3, "CalendarAlerts, view_events"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1001
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1002
    const-string v3, "view_events._id=CalendarAlerts.event_id"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1005
    :pswitch_12
    const-string v3, "CalendarAlerts, view_events"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1006
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1007
    const-string v3, "view_events._id=CalendarAlerts.event_id"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1008
    const-string v31, "event_id,begin"

    .line 1009
    goto/16 :goto_2

    .line 1011
    :pswitch_13
    const-string v3, "CalendarAlerts, view_events"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1012
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1013
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v3}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 1014
    const-string v3, "view_events._id=CalendarAlerts.event_id AND CalendarAlerts._id=?"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1017
    :pswitch_14
    const-string v3, "ExtendedProperties"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1020
    :pswitch_15
    const-string v3, "ExtendedProperties"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1021
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v3}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 1022
    const-string v3, "ExtendedProperties._id=?"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1025
    :pswitch_16
    const-string v3, "CalendarCache"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1026
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarCacheProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_2

    .line 859
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_a
        :pswitch_8
        :pswitch_9
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_14
        :pswitch_15
        :pswitch_11
        :pswitch_13
        :pswitch_12
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_b
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method private regenerateInstancesTable()V
    .locals 21

    .prologue
    .line 784
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 785
    .local v18, "now":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v15

    .line 786
    .local v15, "instancesTimezone":Ljava/lang/String;
    new-instance v20, Landroid/text/format/Time;

    move-object/from16 v0, v20

    invoke-direct {v0, v15}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 787
    .local v20, "time":Landroid/text/format/Time;
    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 788
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 789
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Landroid/text/format/Time;->hour:I

    .line 790
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Landroid/text/format/Time;->minute:I

    .line 791
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Landroid/text/format/Time;->second:I

    .line 793
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    .line 794
    .local v5, "begin":J
    const-wide v3, 0x13f4a4800L

    add-long v7, v5, v3

    .line 796
    .local v7, "end":J
    const/16 v17, 0x0

    .line 798
    .local v17, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v10, "_id"

    aput-object v10, v9, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->isHomeTimezone()Z

    move-result v16

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v16}, Lcom/android/providers/calendar/CalendarProvider2;->handleInstanceQuery(Landroid/database/sqlite/SQLiteQueryBuilder;JJ[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v17

    .line 807
    if-eqz v17, :cond_0

    .line 808
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 812
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarAlarmManager;->rescheduleMissedAlarms()V

    .line 813
    return-void

    .line 807
    :catchall_0
    move-exception v3

    if-eqz v17, :cond_1

    .line 808
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v3
.end method

.method private removeStaleAccounts([Landroid/accounts/Account;)V
    .locals 14
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    const/4 v13, 0x0

    .line 4986
    iget-object v10, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v10, :cond_0

    .line 4987
    iget-object v10, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v10}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    iput-object v10, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 4989
    :cond_0
    iget-object v10, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v10, :cond_1

    .line 5050
    :goto_0
    return-void

    .line 4993
    :cond_1
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 4994
    .local v9, "validAccounts":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/accounts/Account;>;"
    move-object v2, p1

    .local v2, "arr$":[Landroid/accounts/Account;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v0, v2, v5

    .line 4995
    .local v0, "account":Landroid/accounts/Account;
    new-instance v10, Landroid/accounts/Account;

    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v12, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4994
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4997
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4999
    .local v1, "accountsToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    iget-object v10, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 5000
    const/4 v3, 0x0

    .line 5003
    .local v3, "c":Landroid/database/Cursor;
    const/4 v10, 0x2

    :try_start_0
    new-array v2, v10, [Ljava/lang/String;

    .end local v2    # "arr$":[Landroid/accounts/Account;
    const/4 v10, 0x0

    const-string v11, "Calendars"

    aput-object v11, v2, v10

    const/4 v10, 0x1

    const-string v11, "Colors"

    aput-object v11, v2, v10

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_6

    aget-object v8, v2, v5

    .line 5006
    .local v8, "table":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SELECT DISTINCT account_name,account_type FROM "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 5011
    :cond_3
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 5016
    const/4 v10, 0x0

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "LOCAL"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 5020
    new-instance v4, Landroid/accounts/Account;

    const/4 v10, 0x0

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v10, v11}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5021
    .local v4, "currAccount":Landroid/accounts/Account;
    invoke-virtual {v9, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 5022
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 5042
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "currAccount":Landroid/accounts/Account;
    .end local v5    # "i$":I
    .end local v8    # "table":Ljava/lang/String;
    :catchall_0
    move-exception v10

    if-eqz v3, :cond_4

    .line 5043
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 5045
    :cond_4
    iget-object v11, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v10

    .line 5026
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v5    # "i$":I
    .restart local v8    # "table":Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 5027
    const/4 v3, 0x0

    .line 5003
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 5030
    .end local v8    # "table":Ljava/lang/String;
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 5031
    .restart local v0    # "account":Landroid/accounts/Account;
    const-string v10, "CalendarProvider2"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 5032
    const-string v10, "CalendarProvider2"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removing data for removed account "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5034
    :cond_7
    const/4 v10, 0x2

    new-array v7, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v11, v7, v10

    const/4 v10, 0x1

    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v11, v7, v10

    .line 5035
    .local v7, "params":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "DELETE FROM Calendars WHERE account_name=? AND account_type=?"

    invoke-virtual {v10, v11, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5037
    iget-object v10, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "DELETE FROM Colors WHERE account_name=? AND account_type=?"

    invoke-virtual {v10, v11, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 5039
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v7    # "params":[Ljava/lang/String;
    :cond_8
    iget-object v10, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v10}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v10

    iget-object v11, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10, v11, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->onAccountsChanged(Landroid/database/sqlite/SQLiteDatabase;[Landroid/accounts/Account;)V

    .line 5040
    iget-object v10, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5042
    if-eqz v3, :cond_9

    .line 5043
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 5045
    :cond_9
    iget-object v10, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5049
    invoke-direct {p0, v13}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(Z)V

    goto/16 :goto_0
.end method

.method private scrubEventData(Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 10
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "modValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v9, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2483
    const-string v8, "dtend"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_1

    move v0, v6

    .line 2484
    .local v0, "hasDtend":Z
    :goto_0
    const-string v8, "duration"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    move v1, v6

    .line 2485
    .local v1, "hasDuration":Z
    :goto_1
    const-string v8, "rrule"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    move v5, v6

    .line 2486
    .local v5, "hasRrule":Z
    :goto_2
    const-string v8, "rdate"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    move v4, v6

    .line 2487
    .local v4, "hasRdate":Z
    :goto_3
    const-string v8, "original_sync_id"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    move v2, v6

    .line 2488
    .local v2, "hasOriginalEvent":Z
    :goto_4
    const-string v8, "originalInstanceTime"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_6

    move v3, v6

    .line 2489
    .local v3, "hasOriginalInstanceTime":Z
    :goto_5
    if-nez v5, :cond_0

    if-eqz v4, :cond_b

    .line 2498
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->validateRecurrenceRule(Landroid/content/ContentValues;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 2499
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid recurrence rule: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "rrule"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v0    # "hasDtend":Z
    .end local v1    # "hasDuration":Z
    .end local v2    # "hasOriginalEvent":Z
    .end local v3    # "hasOriginalInstanceTime":Z
    .end local v4    # "hasRdate":Z
    .end local v5    # "hasRrule":Z
    :cond_1
    move v0, v7

    .line 2483
    goto :goto_0

    .restart local v0    # "hasDtend":Z
    :cond_2
    move v1, v7

    .line 2484
    goto :goto_1

    .restart local v1    # "hasDuration":Z
    :cond_3
    move v5, v7

    .line 2485
    goto :goto_2

    .restart local v5    # "hasRrule":Z
    :cond_4
    move v4, v7

    .line 2486
    goto :goto_3

    .restart local v4    # "hasRdate":Z
    :cond_5
    move v2, v7

    .line 2487
    goto :goto_4

    .restart local v2    # "hasOriginalEvent":Z
    :cond_6
    move v3, v7

    .line 2488
    goto :goto_5

    .line 2502
    .restart local v3    # "hasOriginalInstanceTime":Z
    :cond_7
    if-nez v0, :cond_8

    if-eqz v1, :cond_8

    if-nez v2, :cond_8

    if-eqz v3, :cond_a

    .line 2503
    :cond_8
    const-string v6, "CalendarProvider2"

    const-string v7, "Scrubbing DTEND, ORIGINAL_SYNC_ID, ORIGINAL_INSTANCE_TIME"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    const-string v6, "CalendarProvider2"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2505
    const-string v6, "CalendarProvider2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid values for recurrence: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    :cond_9
    const-string v6, "dtend"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2508
    const-string v6, "original_sync_id"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2509
    const-string v6, "originalInstanceTime"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2510
    if-eqz p2, :cond_a

    .line 2511
    const-string v6, "dtend"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2512
    const-string v6, "original_sync_id"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2513
    const-string v6, "originalInstanceTime"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2555
    :cond_a
    :goto_6
    return-void

    .line 2516
    :cond_b
    if-nez v2, :cond_c

    if-eqz v3, :cond_f

    .line 2525
    :cond_c
    if-eqz v0, :cond_d

    if-nez v1, :cond_d

    if-eqz v2, :cond_d

    if-nez v3, :cond_a

    .line 2526
    :cond_d
    const-string v6, "CalendarProvider2"

    const-string v7, "Scrubbing DURATION"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    const-string v6, "CalendarProvider2"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2528
    const-string v6, "CalendarProvider2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid values for recurrence exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    :cond_e
    const-string v6, "duration"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2531
    if-eqz p2, :cond_a

    .line 2532
    const-string v6, "duration"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_6

    .line 2544
    :cond_f
    if-eqz v0, :cond_10

    if-eqz v1, :cond_a

    .line 2545
    :cond_10
    const-string v6, "CalendarProvider2"

    const-string v7, "Scrubbing DURATION"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    const-string v6, "CalendarProvider2"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2547
    const-string v6, "CalendarProvider2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid values for event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    :cond_11
    const-string v6, "duration"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2550
    if-eqz p2, :cond_a

    .line 2551
    const-string v6, "duration"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_6
.end method

.method private sendUpdateNotification(JZ)V
    .locals 8
    .param p1, "eventId"    # J
    .param p3, "callerIsSyncAdapter"    # Z

    .prologue
    const/4 v7, 0x1

    .line 4540
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mBroadcastHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4542
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mBroadcastHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 4553
    :goto_0
    if-eqz p3, :cond_1

    const-wide/16 v0, 0x7530

    .line 4561
    .local v0, "delay":J
    :goto_1
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mBroadcastHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4562
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mBroadcastHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4563
    return-void

    .line 4549
    .end local v0    # "delay":J
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/providers/calendar/EmptyService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 4553
    :cond_1
    const-wide/16 v0, 0x3e8

    goto :goto_1
.end method

.method private sendUpdateNotification(Z)V
    .locals 2
    .param p1, "callerIsSyncAdapter"    # Z

    .prologue
    .line 4522
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(JZ)V

    .line 4523
    return-void
.end method

.method private setEventDirty(J)V
    .locals 14
    .param p1, "eventId"    # J

    .prologue
    .line 2600
    iget-object v9, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "SELECT mutators FROM Events WHERE _id=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2604
    .local v4, "mutators":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getCallingPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2606
    .local v6, "packageName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2607
    move-object v5, v6

    .line 2623
    .local v5, "newMutators":Ljava/lang/String;
    :goto_0
    iget-object v9, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "UPDATE Events SET dirty=1,mutators=?  WHERE _id=?"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    const/4 v12, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2625
    return-void

    .line 2609
    .end local v5    # "newMutators":Ljava/lang/String;
    :cond_0
    const-string v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2610
    .local v8, "strings":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 2611
    .local v1, "found":Z
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v7, v0, v2

    .line 2612
    .local v7, "string":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2613
    const/4 v1, 0x1

    .line 2617
    .end local v7    # "string":Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_3

    .line 2618
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "newMutators":Ljava/lang/String;
    goto :goto_0

    .line 2611
    .end local v5    # "newMutators":Ljava/lang/String;
    .restart local v7    # "string":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2620
    .end local v7    # "string":Ljava/lang/String;
    :cond_3
    move-object v5, v4

    .restart local v5    # "newMutators":Ljava/lang/String;
    goto :goto_0
.end method

.method private setHasAlarm(JI)V
    .locals 9
    .param p1, "eventId"    # J
    .param p3, "val"    # I

    .prologue
    const/4 v8, 0x1

    .line 2870
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2871
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "hasAlarm"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2872
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Events"

    const-string v4, "_id=?"

    new-array v5, v8, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2874
    .local v0, "count":I
    if-eq v0, v8, :cond_0

    .line 2875
    const-string v2, "CalendarProvider2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHasAlarm on event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " updated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rows (expected 1)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    :cond_0
    return-void
.end method

.method private static setRecurrenceEnd(Landroid/content/ContentValues;J)Landroid/content/ContentValues;
    .locals 18
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "endTimeMillis"    # J

    .prologue
    .line 1637
    const-string v6, "allDay"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 1638
    .local v10, "origAllDay":Z
    const-string v6, "rrule"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1640
    .local v12, "origRrule":Ljava/lang/String;
    new-instance v11, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-direct {v11}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    .line 1641
    .local v11, "origRecurrence":Lcom/android/calendarcommon2/EventRecurrence;
    invoke-virtual {v11, v12}, Lcom/android/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 1644
    const-string v6, "dtstart"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1645
    .local v4, "startTimeMillis":J
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 1646
    .local v2, "dtstart":Landroid/text/format/Time;
    const-string v6, "eventTimezone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1647
    invoke-virtual {v2, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 1649
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 1651
    .local v15, "updateValues":Landroid/content/ContentValues;
    iget v6, v11, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    if-lez v6, :cond_1

    .line 1658
    new-instance v3, Lcom/android/calendarcommon2/RecurrenceSet;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendarcommon2/RecurrenceSet;-><init>(Landroid/content/ContentValues;)V

    .line 1659
    .local v3, "recurSet":Lcom/android/calendarcommon2/RecurrenceSet;
    new-instance v1, Lcom/android/calendarcommon2/RecurrenceProcessor;

    invoke-direct {v1}, Lcom/android/calendarcommon2/RecurrenceProcessor;-><init>()V

    .local v1, "recurProc":Lcom/android/calendarcommon2/RecurrenceProcessor;
    move-wide/from16 v6, p1

    .line 1662
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/android/calendarcommon2/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcom/android/calendarcommon2/RecurrenceSet;JJ)[J
    :try_end_0
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 1667
    .local v13, "recurrences":[J
    array-length v6, v13

    if-nez v6, :cond_0

    .line 1668
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "can\'t use this method on first instance"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1663
    .end local v13    # "recurrences":[J
    :catch_0
    move-exception v8

    .line 1664
    .local v8, "de":Lcom/android/calendarcommon2/DateException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1671
    .end local v8    # "de":Lcom/android/calendarcommon2/DateException;
    .restart local v13    # "recurrences":[J
    :cond_0
    new-instance v9, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-direct {v9}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    .line 1672
    .local v9, "excepRecurrence":Lcom/android/calendarcommon2/EventRecurrence;
    invoke-virtual {v9, v12}, Lcom/android/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 1673
    iget v6, v9, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    array-length v7, v13

    sub-int/2addr v6, v7

    iput v6, v9, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    .line 1674
    const-string v6, "rrule"

    invoke-virtual {v9}, Lcom/android/calendarcommon2/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    array-length v6, v13

    iput v6, v11, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    .line 1703
    .end local v1    # "recurProc":Lcom/android/calendarcommon2/RecurrenceProcessor;
    .end local v3    # "recurSet":Lcom/android/calendarcommon2/RecurrenceSet;
    .end local v9    # "excepRecurrence":Lcom/android/calendarcommon2/EventRecurrence;
    .end local v13    # "recurrences":[J
    :goto_0
    const-string v6, "rrule"

    invoke-virtual {v11}, Lcom/android/calendarcommon2/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    const-string v6, "dtstart"

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v15, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1705
    return-object v15

    .line 1679
    :cond_1
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 1685
    .local v14, "untilTime":Landroid/text/format/Time;
    const-string v6, "UTC"

    iput-object v6, v14, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1688
    const-wide/16 v6, 0x3e8

    sub-long v6, p1, v6

    invoke-virtual {v14, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 1689
    if-eqz v10, :cond_2

    .line 1690
    const/4 v6, 0x0

    iput v6, v14, Landroid/text/format/Time;->second:I

    iput v6, v14, Landroid/text/format/Time;->minute:I

    iput v6, v14, Landroid/text/format/Time;->hour:I

    .line 1691
    const/4 v6, 0x1

    iput-boolean v6, v14, Landroid/text/format/Time;->allDay:Z

    .line 1692
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 1696
    const/4 v6, 0x0

    iput v6, v2, Landroid/text/format/Time;->second:I

    iput v6, v2, Landroid/text/format/Time;->minute:I

    iput v6, v2, Landroid/text/format/Time;->hour:I

    .line 1697
    const/4 v6, 0x1

    iput-boolean v6, v2, Landroid/text/format/Time;->allDay:Z

    .line 1698
    const-string v6, "UTC"

    iput-object v6, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1700
    :cond_2
    invoke-virtual {v14}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v11, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateEventAttendeeStatus(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V
    .locals 21
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "attendeeValues"    # Landroid/content/ContentValues;

    .prologue
    .line 2771
    const-string v2, "event_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    .line 2772
    .local v15, "eventIdObj":Ljava/lang/Long;
    if-nez v15, :cond_1

    .line 2773
    const-string v2, "CalendarProvider2"

    const-string v3, "Attendee update values don\'t include an event_id"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    :cond_0
    :goto_0
    return-void

    .line 2776
    :cond_1
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 2780
    .local v13, "eventId":J
    const/4 v12, 0x0

    .line 2783
    .local v12, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "calendar_id"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2788
    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2789
    :cond_2
    const-string v2, "CalendarProvider2"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2790
    const-string v2, "CalendarProvider2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in Events table"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2796
    :cond_3
    if-eqz v12, :cond_0

    .line 2797
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2794
    :cond_4
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v9

    .line 2796
    .local v9, "calId":J
    if-eqz v12, :cond_5

    .line 2797
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2802
    :cond_5
    const/4 v11, 0x0

    .line 2803
    .local v11, "calendarEmail":Ljava/lang/String;
    const/4 v12, 0x0

    .line 2805
    :try_start_2
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "ownerAccount"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2810
    if-eqz v12, :cond_6

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_9

    .line 2811
    :cond_6
    const-string v2, "CalendarProvider2"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2812
    const-string v2, "CalendarProvider2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in Calendars table"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2818
    :cond_7
    if-eqz v12, :cond_0

    .line 2819
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2796
    .end local v9    # "calId":J
    .end local v11    # "calendarEmail":Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v12, :cond_8

    .line 2797
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2

    .line 2816
    .restart local v9    # "calId":J
    .restart local v11    # "calendarEmail":Ljava/lang/String;
    :cond_9
    const/4 v2, 0x0

    :try_start_3
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v11

    .line 2818
    if-eqz v12, :cond_a

    .line 2819
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2823
    :cond_a
    if-eqz v11, :cond_0

    .line 2828
    const/4 v8, 0x0

    .line 2829
    .local v8, "attendeeEmail":Ljava/lang/String;
    const-string v2, "attendeeEmail"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2830
    const-string v2, "attendeeEmail"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2836
    :cond_b
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2842
    const/16 v18, 0x0

    .line 2843
    .local v18, "status":I
    const-string v2, "attendeeRelationship"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    .line 2844
    .local v17, "relationObj":Ljava/lang/Integer;
    if-eqz v17, :cond_c

    .line 2845
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 2846
    .local v16, "rel":I
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_c

    .line 2847
    const/16 v18, 0x1

    .line 2852
    .end local v16    # "rel":I
    :cond_c
    const-string v2, "attendeeStatus"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 2853
    .local v19, "statusObj":Ljava/lang/Integer;
    if-eqz v19, :cond_d

    .line 2854
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 2857
    :cond_d
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 2858
    .local v20, "values":Landroid/content/ContentValues;
    const-string v2, "selfAttendeeStatus"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2859
    const-string v2, "Events"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2818
    .end local v8    # "attendeeEmail":Ljava/lang/String;
    .end local v17    # "relationObj":Ljava/lang/Integer;
    .end local v18    # "status":I
    .end local v19    # "statusObj":Ljava/lang/Integer;
    .end local v20    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v2

    if-eqz v12, :cond_e

    .line 2819
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v2
.end method

.method private updateEventRawTimesLocked(JLandroid/content/ContentValues;)V
    .locals 11
    .param p1, "eventId"    # J
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 3000
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 3002
    .local v6, "rawValues":Landroid/content/ContentValues;
    const-string v9, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3004
    const-string v9, "eventTimezone"

    invoke-virtual {p3, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3006
    .local v8, "timezone":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3007
    .local v0, "allDay":Z
    const-string v9, "allDay"

    invoke-virtual {p3, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 3008
    .local v1, "allDayInteger":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 3009
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_8

    const/4 v0, 0x1

    .line 3012
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3014
    :cond_1
    const-string v8, "UTC"

    .line 3017
    :cond_2
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7, v8}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 3018
    .local v7, "time":Landroid/text/format/Time;
    iput-boolean v0, v7, Landroid/text/format/Time;->allDay:Z

    .line 3019
    const-string v9, "dtstart"

    invoke-virtual {p3, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 3020
    .local v3, "dtstartMillis":Ljava/lang/Long;
    if-eqz v3, :cond_3

    .line 3021
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 3022
    const-string v9, "dtstart2445"

    invoke-virtual {v7}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3025
    :cond_3
    const-string v9, "dtend"

    invoke-virtual {p3, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 3026
    .local v2, "dtendMillis":Ljava/lang/Long;
    if-eqz v2, :cond_4

    .line 3027
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 3028
    const-string v9, "dtend2445"

    invoke-virtual {v7}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3031
    :cond_4
    const-string v9, "originalInstanceTime"

    invoke-virtual {p3, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 3032
    .local v5, "originalInstanceMillis":Ljava/lang/Long;
    if-eqz v5, :cond_6

    .line 3036
    const-string v9, "originalAllDay"

    invoke-virtual {p3, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 3037
    if-eqz v1, :cond_5

    .line 3038
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, v7, Landroid/text/format/Time;->allDay:Z

    .line 3040
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 3041
    const-string v9, "originalInstanceTime2445"

    invoke-virtual {v7}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3045
    :cond_6
    const-string v9, "lastDate"

    invoke-virtual {p3, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 3046
    .local v4, "lastDateMillis":Ljava/lang/Long;
    if-eqz v4, :cond_7

    .line 3047
    iput-boolean v0, v7, Landroid/text/format/Time;->allDay:Z

    .line 3048
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 3049
    const-string v9, "lastDate2445"

    invoke-virtual {v7}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3052
    :cond_7
    iget-object v9, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v9, v6}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->eventsRawTimesReplace(Landroid/content/ContentValues;)J

    .line 3053
    return-void

    .line 3009
    .end local v2    # "dtendMillis":Ljava/lang/Long;
    .end local v3    # "dtstartMillis":Ljava/lang/Long;
    .end local v4    # "lastDateMillis":Ljava/lang/Long;
    .end local v5    # "originalInstanceMillis":Ljava/lang/Long;
    .end local v7    # "time":Landroid/text/format/Time;
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 3038
    .restart local v2    # "dtendMillis":Ljava/lang/Long;
    .restart local v3    # "dtstartMillis":Ljava/lang/Long;
    .restart local v5    # "originalInstanceMillis":Ljava/lang/Long;
    .restart local v7    # "time":Landroid/text/format/Time;
    :cond_9
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private updateEventRelatedTable(Landroid/net/Uri;Ljava/lang/String;ZLandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 22
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "byId"    # Z
    .param p4, "updateValues"    # Landroid/content/ContentValues;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "callerIsSyncAdapter"    # Z

    .prologue
    .line 3480
    if-eqz p3, :cond_3

    .line 3481
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3482
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selection not allowed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3484
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v19

    .line 3485
    .local v19, "rowId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v19, v2

    if-gez v2, :cond_1

    .line 3486
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ID expected but not found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3488
    :cond_1
    const-string p5, "_id=?"

    .line 3489
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 p6, v0

    .end local p6    # "selectionArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p6, v2

    .line 3500
    .end local v19    # "rowId":J
    .restart local p6    # "selectionArgs":[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p2

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3502
    .local v10, "c":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 3504
    .local v11, "count":I
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 3505
    const-string v2, "CalendarProvider2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No query results for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", selection="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " selectionArgs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p6 .. p6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3507
    const/4 v2, 0x0

    .line 3568
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3570
    :goto_0
    return v2

    .line 3491
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v11    # "count":I
    :cond_3
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3492
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selection is required for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3510
    .restart local v10    # "c":Landroid/database/Cursor;
    .restart local v11    # "count":I
    :cond_4
    const/4 v12, 0x0

    .line 3511
    .local v12, "dirtyValues":Landroid/content/ContentValues;
    if-nez p7, :cond_5

    .line 3512
    :try_start_1
    new-instance v12, Landroid/content/ContentValues;

    .end local v12    # "dirtyValues":Landroid/content/ContentValues;
    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 3513
    .restart local v12    # "dirtyValues":Landroid/content/ContentValues;
    const-string v2, "dirty"

    const-string v3, "1"

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3514
    const-string v2, "mutators"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/android/providers/calendar/CalendarProvider2;->addMutator(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3517
    :cond_5
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 3518
    .local v18, "idIndex":I
    const-string v2, "event_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 3519
    .local v15, "eventIdIndex":I
    if-ltz v18, :cond_6

    if-gez v15, :cond_7

    .line 3520
    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Lookup on _id/event_id failed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3568
    .end local v12    # "dirtyValues":Landroid/content/ContentValues;
    .end local v15    # "eventIdIndex":I
    .end local v18    # "idIndex":I
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .line 3530
    .restart local v12    # "dirtyValues":Landroid/content/ContentValues;
    .restart local v15    # "eventIdIndex":I
    .restart local v18    # "idIndex":I
    :cond_7
    :goto_1
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3532
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 3533
    .local v21, "values":Landroid/content/ContentValues;
    move-object/from16 v0, v21

    invoke-static {v10, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 3534
    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 3536
    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 3537
    .local v16, "id":J
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 3538
    .local v13, "eventId":J
    if-nez p7, :cond_8

    .line 3540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v2, v13, v14}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->duplicateEvent(J)V

    .line 3542
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3543
    if-nez p7, :cond_9

    .line 3544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Events"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v12, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3547
    :cond_9
    add-int/lit8 v11, v11, 0x1

    .line 3562
    const-string v2, "Attendees"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v2, v1}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventAttendeeStatus(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 3564
    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v0, v13, v14, v1}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(JZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 3568
    .end local v13    # "eventId":J
    .end local v16    # "id":J
    .end local v21    # "values":Landroid/content/ContentValues;
    :cond_a
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move v2, v11

    .line 3570
    goto/16 :goto_0
.end method

.method private updateEventsStartEndFromEventRawTimesLocked()V
    .locals 9

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "SELECT event_id, dtstart2445, dtend2445, eventTimezone FROM EventsRawTimes, Events WHERE event_id = Events._id"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 684
    .local v6, "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 685
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 686
    .local v1, "eventId":J
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 687
    .local v4, "dtStart2445":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 688
    .local v5, "dtEnd2445":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 689
    .local v3, "eventTimezone":Ljava/lang/String;
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 690
    const-string v0, "CalendarProvider2"

    const/4 v7, 0x6

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    const-string v0, "CalendarProvider2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Event "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has dtStart2445 and dtEnd2445 null "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "at the same time in EventsRawTimes!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 702
    .end local v1    # "eventId":J
    .end local v3    # "eventTimezone":Ljava/lang/String;
    .end local v4    # "dtStart2445":Ljava/lang/String;
    .end local v5    # "dtEnd2445":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 703
    const/4 v6, 0x0

    throw v0

    .restart local v1    # "eventId":J
    .restart local v3    # "eventTimezone":Ljava/lang/String;
    .restart local v4    # "dtStart2445":Ljava/lang/String;
    .restart local v5    # "dtEnd2445":Ljava/lang/String;
    :cond_1
    move-object v0, p0

    .line 696
    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventsStartEndLocked(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 702
    .end local v1    # "eventId":J
    .end local v3    # "eventTimezone":Ljava/lang/String;
    .end local v4    # "dtStart2445":Ljava/lang/String;
    .end local v5    # "dtEnd2445":Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 703
    const/4 v6, 0x0

    .line 705
    return-void
.end method

.method private updateEventsStartEndLocked(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "eventId"    # J
    .param p3, "timezone"    # Ljava/lang/String;
    .param p4, "dtStart2445"    # Ljava/lang/String;
    .param p5, "dtEnd2445"    # Ljava/lang/String;

    .prologue
    .line 729
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 730
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "dtstart"

    invoke-direct {p0, p3, p4}, Lcom/android/providers/calendar/CalendarProvider2;->get2445ToMillis(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 731
    const-string v2, "dtend"

    invoke-direct {p0, p3, p5}, Lcom/android/providers/calendar/CalendarProvider2;->get2445ToMillis(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 733
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Events"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 735
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 736
    const-string v2, "CalendarProvider2"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 737
    const-string v2, "CalendarProvider2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not update Events table with values "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_0
    return-void
.end method

.method private updateLastDate(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 2977
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->calculateLastDate(Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 2978
    .local v1, "last":J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 2979
    const-string v3, "lastDate"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2988
    .end local v1    # "last":J
    .end local p1    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-object p1

    .line 2983
    .restart local p1    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 2985
    .local v0, "e":Lcom/android/calendarcommon2/DateException;
    const-string v3, "CalendarProvider2"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2986
    const-string v3, "CalendarProvider2"

    const-string v4, "Could not calculate last date."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2988
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private updateTimezoneDatabaseVersion(Ljava/lang/String;)V
    .locals 3
    .param p1, "timeZoneDatabaseVersion"    # Ljava/lang/String;

    .prologue
    .line 744
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v1, p1}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneDatabaseVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/providers/calendar/CalendarCache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 745
    :catch_0
    move-exception v0

    .line 746
    .local v0, "e":Lcom/android/providers/calendar/CalendarCache$CacheException;
    const-string v1, "CalendarProvider2"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 747
    const-string v1, "CalendarProvider2"

    const-string v2, "Could not write timezone database version in the cache"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private validateEventData(Landroid/content/ContentValues;)V
    .locals 8
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2565
    const-string v7, "calendar_id"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2566
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Event values must include a calendar_id"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2568
    :cond_0
    const-string v7, "eventTimezone"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2569
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Event values must include an eventTimezone"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2572
    :cond_1
    const-string v7, "dtstart"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_3

    move v1, v5

    .line 2573
    .local v1, "hasDtstart":Z
    :goto_0
    const-string v7, "dtend"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_4

    move v0, v5

    .line 2574
    .local v0, "hasDtend":Z
    :goto_1
    const-string v7, "duration"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    move v2, v5

    .line 2575
    .local v2, "hasDuration":Z
    :goto_2
    const-string v7, "rrule"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    move v4, v5

    .line 2576
    .local v4, "hasRrule":Z
    :goto_3
    const-string v7, "rdate"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    move v3, v5

    .line 2577
    .local v3, "hasRdate":Z
    :goto_4
    if-nez v4, :cond_2

    if-eqz v3, :cond_8

    .line 2578
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->validateRecurrenceRule(Landroid/content/ContentValues;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 2579
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid recurrence rule: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "rrule"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v0    # "hasDtend":Z
    .end local v1    # "hasDtstart":Z
    .end local v2    # "hasDuration":Z
    .end local v3    # "hasRdate":Z
    .end local v4    # "hasRrule":Z
    :cond_3
    move v1, v6

    .line 2572
    goto :goto_0

    .restart local v1    # "hasDtstart":Z
    :cond_4
    move v0, v6

    .line 2573
    goto :goto_1

    .restart local v0    # "hasDtend":Z
    :cond_5
    move v2, v6

    .line 2574
    goto :goto_2

    .restart local v2    # "hasDuration":Z
    :cond_6
    move v4, v6

    .line 2575
    goto :goto_3

    .restart local v4    # "hasRrule":Z
    :cond_7
    move v3, v6

    .line 2576
    goto :goto_4

    .line 2584
    .restart local v3    # "hasRdate":Z
    :cond_8
    if-nez v1, :cond_9

    .line 2585
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->dumpEventNoPII(Landroid/content/ContentValues;)V

    .line 2586
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "DTSTART cannot be empty."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2588
    :cond_9
    if-nez v2, :cond_a

    if-nez v0, :cond_a

    .line 2589
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->dumpEventNoPII(Landroid/content/ContentValues;)V

    .line 2590
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "DTEND and DURATION cannot both be null for an event."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2593
    :cond_a
    if-eqz v2, :cond_b

    if-eqz v0, :cond_b

    .line 2594
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->dumpEventNoPII(Landroid/content/ContentValues;)V

    .line 2595
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Cannot have both DTEND and DURATION in an event"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2597
    :cond_b
    return-void
.end method

.method private validateRecurrenceRule(Landroid/content/ContentValues;)Z
    .locals 11
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 2429
    const-string v8, "rrule"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2431
    .local v6, "rrule":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2432
    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2433
    .local v7, "ruleList":[Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 2434
    .local v5, "recur":Ljava/lang/String;
    new-instance v1, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-direct {v1}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    .line 2436
    .local v1, "er":Lcom/android/calendarcommon2/EventRecurrence;
    :try_start_0
    invoke-virtual {v1, v5}, Lcom/android/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2433
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2437
    :catch_0
    move-exception v3

    .line 2438
    .local v3, "ife":Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;
    const-string v8, "CalendarProvider2"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid recurrence rule: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->dumpEventNoPII(Landroid/content/ContentValues;)V

    .line 2440
    const/4 v8, 0x0

    .line 2445
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "er":Lcom/android/calendarcommon2/EventRecurrence;
    .end local v2    # "i$":I
    .end local v3    # "ife":Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;
    .end local v4    # "len$":I
    .end local v5    # "recur":Ljava/lang/String;
    .end local v7    # "ruleList":[Ljava/lang/String;
    :goto_1
    return v8

    :cond_0
    const/4 v8, 0x1

    goto :goto_1
.end method

.method private validateUriParameters(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1037
    .local p1, "queryParameterNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v2, p1

    .line 1038
    .local v2, "parameterNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1039
    .local v1, "parameterName":Ljava/lang/String;
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_URI_PARAMETERS:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1040
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid URI parameter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1043
    .end local v1    # "parameterName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private verifyAccounts()V
    .locals 3

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 599
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/calendar/CalendarProvider2;->removeStaleAccounts([Landroid/accounts/Account;)V

    .line 600
    return-void
.end method

.method private verifyColorExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "colorIndex"    # Ljava/lang/String;
    .param p4, "colorType"    # I

    .prologue
    .line 4213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4214
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set color. A valid account does not exist for this calendar."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4218
    :cond_1
    const/4 v6, 0x0

    .line 4220
    .local v6, "c":Landroid/database/Cursor;
    int-to-long v3, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->getColorByTypeIndex(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4221
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Color type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist for account."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4227
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 4228
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 4225
    :cond_3
    const/4 v0, 0x4

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    .line 4227
    .local v7, "color":I
    if-eqz v6, :cond_4

    .line 4228
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4231
    :cond_4
    return v7
.end method

.method private verifyColumns(Landroid/content/ContentValues;I)V
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "uriMatch"    # I

    .prologue
    .line 4406
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 4427
    :cond_0
    return-void

    .line 4410
    :cond_1
    sparse-switch p2, :sswitch_data_0

    .line 4418
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->PROVIDER_WRITABLE_DEFAULT_COLUMNS:[Ljava/lang/String;

    .line 4422
    .local v0, "columns":[Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 4423
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4424
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Only the provider may write to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4415
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "i":I
    :sswitch_0
    sget-object v0, Landroid/provider/CalendarContract$Events;->PROVIDER_WRITABLE_COLUMNS:[Ljava/lang/String;

    .line 4416
    .restart local v0    # "columns":[Ljava/lang/String;
    goto :goto_0

    .line 4422
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4410
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method private verifyHasAccount(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 4390
    const-string v2, "account_name"

    invoke-static {p1, v2}, Lcom/android/providers/calendar/QueryParameterUtils;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4391
    .local v0, "accountName":Ljava/lang/String;
    const-string v2, "account_type"

    invoke-static {p1, v2}, Lcom/android/providers/calendar/QueryParameterUtils;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4393
    .local v1, "accountType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4394
    :cond_0
    if-eqz p2, :cond_1

    const-string v2, "account_name=? AND account_type=?"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4395
    const/4 v2, 0x0

    aget-object v0, p3, v2

    .line 4396
    const/4 v2, 0x1

    aget-object v1, p3, v2

    .line 4399
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4400
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sync adapters must specify an account and account type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4403
    :cond_3
    return-void
.end method

.method private verifyNoSyncColumns(Landroid/content/ContentValues;I)V
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "uriMatch"    # I

    .prologue
    .line 4430
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 4458
    :cond_0
    return-void

    .line 4434
    :cond_1
    sparse-switch p2, :sswitch_data_0

    .line 4448
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->SYNC_WRITABLE_DEFAULT_COLUMNS:[Ljava/lang/String;

    .line 4452
    .local v1, "syncColumns":[Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 4453
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4454
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Only sync adapters may write to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4439
    .end local v0    # "i":I
    .end local v1    # "syncColumns":[Ljava/lang/String;
    :sswitch_0
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->SYNC_WRITABLE_COLUMNS:[Ljava/lang/String;

    .line 4440
    .restart local v1    # "syncColumns":[Ljava/lang/String;
    goto :goto_0

    .line 4445
    .end local v1    # "syncColumns":[Ljava/lang/String;
    :sswitch_1
    sget-object v1, Landroid/provider/CalendarContract$Events;->SYNC_WRITABLE_COLUMNS:[Ljava/lang/String;

    .line 4446
    .restart local v1    # "syncColumns":[Ljava/lang/String;
    goto :goto_0

    .line 4452
    .restart local v0    # "i":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4434
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x12 -> :sswitch_1
        0x13 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
    .end sparse-switch
.end method

.method private verifyTransactionAllowed(ILandroid/net/Uri;Landroid/content/ContentValues;ZILjava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "isSyncAdapter"    # Z
    .param p5, "uriMatch"    # I
    .param p6, "selection"    # Ljava/lang/String;
    .param p7, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x3

    .line 4294
    if-nez p1, :cond_1

    .line 4387
    :cond_0
    :goto_0
    return-void

    .line 4298
    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_4

    .line 4300
    :cond_2
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4303
    sparse-switch p5, :sswitch_data_0

    .line 4315
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selection not permitted for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4320
    :cond_3
    sparse-switch p5, :sswitch_data_1

    .line 4334
    :cond_4
    :sswitch_0
    if-nez p4, :cond_5

    .line 4335
    sparse-switch p5, :sswitch_data_2

    .line 4347
    :cond_5
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 4349
    :pswitch_0
    if-ne p5, v1, :cond_6

    .line 4350
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Inserting into instances not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4325
    :sswitch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selection must be specified for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4341
    :sswitch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only sync adapters may write using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4354
    :cond_6
    invoke-direct {p0, p3, p5}, Lcom/android/providers/calendar/CalendarProvider2;->verifyColumns(Landroid/content/ContentValues;I)V

    .line 4355
    if-eqz p4, :cond_7

    .line 4357
    invoke-direct {p0, p2, p6, p7}, Lcom/android/providers/calendar/CalendarProvider2;->verifyHasAccount(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 4360
    :cond_7
    invoke-direct {p0, p3, p5}, Lcom/android/providers/calendar/CalendarProvider2;->verifyNoSyncColumns(Landroid/content/ContentValues;I)V

    goto :goto_0

    .line 4364
    :pswitch_1
    if-ne p5, v1, :cond_8

    .line 4365
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Updating instances not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4368
    :cond_8
    invoke-direct {p0, p3, p5}, Lcom/android/providers/calendar/CalendarProvider2;->verifyColumns(Landroid/content/ContentValues;I)V

    .line 4369
    if-eqz p4, :cond_9

    .line 4371
    invoke-direct {p0, p2, p6, p7}, Lcom/android/providers/calendar/CalendarProvider2;->verifyHasAccount(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4374
    :cond_9
    invoke-direct {p0, p3, p5}, Lcom/android/providers/calendar/CalendarProvider2;->verifyNoSyncColumns(Landroid/content/ContentValues;I)V

    goto/16 :goto_0

    .line 4378
    :pswitch_2
    if-ne p5, v1, :cond_a

    .line 4379
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Deleting instances not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4381
    :cond_a
    if-eqz p4, :cond_0

    .line 4383
    invoke-direct {p0, p2, p6, p7}, Lcom/android/providers/calendar/CalendarProvider2;->verifyHasAccount(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4303
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_0
        0x6 -> :sswitch_0
        0x8 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0x10 -> :sswitch_0
        0x1c -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch

    .line 4320
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_1
        0x6 -> :sswitch_1
        0x8 -> :sswitch_1
        0x1c -> :sswitch_1
    .end sparse-switch

    .line 4335
    :sswitch_data_2
    .sparse-switch
        0xa -> :sswitch_2
        0xb -> :sswitch_2
        0x10 -> :sswitch_2
        0x11 -> :sswitch_2
        0x20 -> :sswitch_2
    .end sparse-switch

    .line 4347
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method acquireInstanceRangeLocked(JJZZLjava/lang/String;Z)V
    .locals 31
    .param p1, "begin"    # J
    .param p3, "end"    # J
    .param p5, "useMinimumExpansionWindow"    # Z
    .param p6, "forceExpansion"    # Z
    .param p7, "instancesTimezone"    # Ljava/lang/String;
    .param p8, "isHomeTimezone"    # Z

    .prologue
    .line 1371
    move-wide/from16 v3, p1

    .line 1372
    .local v3, "expandBegin":J
    move-wide/from16 v5, p3

    .line 1379
    .local v5, "expandEnd":J
    if-nez p7, :cond_1

    .line 1380
    const-string v2, "CalendarProvider2"

    const-string v7, "Cannot run acquireInstanceRangeLocked() because instancesTimezone is null"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    :cond_0
    :goto_0
    return-void

    .line 1384
    :cond_1
    if-eqz p5, :cond_2

    .line 1388
    sub-long v27, p3, p1

    .line 1389
    .local v27, "span":J
    const-wide v7, 0x13f4a4800L

    cmp-long v2, v27, v7

    if-gez v2, :cond_2

    .line 1390
    const-wide v7, 0x13f4a4800L

    sub-long v7, v7, v27

    const-wide/16 v15, 0x2

    div-long v21, v7, v15

    .line 1391
    .local v21, "additionalRange":J
    sub-long v3, v3, v21

    .line 1392
    add-long v5, v5, v21

    .line 1399
    .end local v21    # "additionalRange":J
    .end local v27    # "span":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    invoke-virtual {v2}, Lcom/android/providers/calendar/MetaData;->getFieldsLocked()Lcom/android/providers/calendar/MetaData$Fields;

    move-result-object v23

    .line 1400
    .local v23, "fields":Lcom/android/providers/calendar/MetaData$Fields;
    move-object/from16 v0, v23

    iget-wide v13, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    .line 1401
    .local v13, "maxInstance":J
    move-object/from16 v0, v23

    iget-wide v10, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    .line 1403
    .local v10, "minInstance":J
    if-eqz p8, :cond_7

    .line 1404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v2}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstancesPrevious()Ljava/lang/String;

    move-result-object v26

    .line 1405
    .local v26, "previousTimezone":Ljava/lang/String;
    move-object/from16 v0, p7

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const/16 v29, 0x1

    .line 1416
    .end local v26    # "previousTimezone":Ljava/lang/String;
    .local v29, "timezoneChanged":Z
    :cond_3
    :goto_1
    const-wide/16 v7, 0x0

    cmp-long v2, v13, v7

    if-eqz v2, :cond_4

    if-nez v29, :cond_4

    if-eqz p6, :cond_9

    .line 1422
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "DELETE FROM Instances;"

    invoke-virtual {v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1423
    const-string v2, "CalendarProvider2"

    const/4 v7, 0x2

    invoke-static {v2, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1424
    const-string v2, "CalendarProvider2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "acquireInstanceRangeLocked() deleted Instances, timezone changed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mInstancesHelper:Lcom/android/providers/calendar/CalendarInstancesHelper;

    move-object/from16 v7, p7

    invoke-virtual/range {v2 .. v7}, Lcom/android/providers/calendar/CalendarInstancesHelper;->expandInstanceRangeLocked(JJLjava/lang/String;)V

    .line 1429
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    move-object/from16 v8, p7

    move-wide v9, v3

    move-wide v11, v5

    invoke-virtual/range {v7 .. v12}, Lcom/android/providers/calendar/MetaData;->writeLocked(Ljava/lang/String;JJ)V

    .line 1431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v2}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneType()Ljava/lang/String;

    move-result-object v30

    .line 1435
    .local v30, "timezoneType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneInstances(Ljava/lang/String;)V

    .line 1438
    const-string v2, "auto"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v2}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstancesPrevious()Ljava/lang/String;

    move-result-object v25

    .line 1440
    .local v25, "prevTZ":Ljava/lang/String;
    const-string v2, "GMT"

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneInstancesPrevious(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1405
    .end local v25    # "prevTZ":Ljava/lang/String;
    .end local v29    # "timezoneChanged":Z
    .end local v30    # "timezoneType":Ljava/lang/String;
    .restart local v26    # "previousTimezone":Ljava/lang/String;
    :cond_6
    const/16 v29, 0x0

    goto/16 :goto_1

    .line 1407
    .end local v26    # "previousTimezone":Ljava/lang/String;
    :cond_7
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v24

    .line 1408
    .local v24, "localTimezone":Ljava/lang/String;
    move-object/from16 v0, p7

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const/16 v29, 0x1

    .line 1410
    .restart local v29    # "timezoneChanged":Z
    :goto_2
    if-eqz v29, :cond_3

    .line 1411
    move-object/from16 p7, v24

    goto/16 :goto_1

    .line 1408
    .end local v29    # "timezoneChanged":Z
    :cond_8
    const/16 v29, 0x0

    goto :goto_2

    .line 1458
    .end local v24    # "localTimezone":Ljava/lang/String;
    .restart local v29    # "timezoneChanged":Z
    :cond_9
    cmp-long v2, p1, v10

    if-ltz v2, :cond_a

    cmp-long v2, p3, v13

    if-gtz v2, :cond_a

    .line 1462
    const-string v2, "CalendarProvider2"

    const/4 v7, 0x2

    invoke-static {v2, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1463
    const-string v2, "CalendarProvider2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Canceled instance query ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") falls within previously expanded range."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1471
    :cond_a
    cmp-long v2, p1, v10

    if-gez v2, :cond_b

    .line 1472
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/calendar/CalendarProvider2;->mInstancesHelper:Lcom/android/providers/calendar/CalendarInstancesHelper;

    move-wide v8, v3

    move-object/from16 v12, p7

    invoke-virtual/range {v7 .. v12}, Lcom/android/providers/calendar/CalendarInstancesHelper;->expandInstanceRangeLocked(JJLjava/lang/String;)V

    .line 1473
    move-wide v10, v3

    .line 1478
    :cond_b
    cmp-long v2, p3, v13

    if-lez v2, :cond_c

    .line 1479
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/calendar/CalendarProvider2;->mInstancesHelper:Lcom/android/providers/calendar/CalendarInstancesHelper;

    move-wide v15, v5

    move-object/from16 v17, p7

    invoke-virtual/range {v12 .. v17}, Lcom/android/providers/calendar/CalendarInstancesHelper;->expandInstanceRangeLocked(JJLjava/lang/String;)V

    .line 1480
    move-wide v13, v5

    .line 1484
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    move-object/from16 v16, p7

    move-wide/from16 v17, v10

    move-wide/from16 v19, v13

    invoke-virtual/range {v15 .. v20}, Lcom/android/providers/calendar/MetaData;->writeLocked(Ljava/lang/String;JJ)V

    goto/16 :goto_0
.end method

.method calculateLastDate(Landroid/content/ContentValues;)J
    .locals 16
    .param p1, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/DateException;
        }
    .end annotation

    .prologue
    .line 2895
    const-string v13, "dtstart"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 2896
    const-string v13, "dtend"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "rrule"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "duration"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "eventTimezone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "rdate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "exrule"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "exdate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 2902
    :cond_0
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "DTSTART field missing from event"

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 2904
    :cond_1
    const-wide/16 v8, -0x1

    .line 2965
    :cond_2
    :goto_0
    return-wide v8

    .line 2906
    :cond_3
    const-string v13, "dtstart"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2907
    .local v3, "dtstartMillis":J
    const-wide/16 v8, -0x1

    .line 2914
    .local v8, "lastMillis":J
    const-string v13, "dtend"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 2915
    .local v1, "dtEnd":Ljava/lang/Long;
    if-eqz v1, :cond_4

    .line 2916
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_0

    .line 2919
    :cond_4
    new-instance v5, Lcom/android/calendarcommon2/Duration;

    invoke-direct {v5}, Lcom/android/calendarcommon2/Duration;-><init>()V

    .line 2920
    .local v5, "duration":Lcom/android/calendarcommon2/Duration;
    const-string v13, "duration"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2921
    .local v6, "durationStr":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 2922
    invoke-virtual {v5, v6}, Lcom/android/calendarcommon2/Duration;->parse(Ljava/lang/String;)V

    .line 2925
    :cond_5
    const/4 v10, 0x0

    .line 2927
    .local v10, "recur":Lcom/android/calendarcommon2/RecurrenceSet;
    :try_start_0
    new-instance v10, Lcom/android/calendarcommon2/RecurrenceSet;

    .end local v10    # "recur":Lcom/android/calendarcommon2/RecurrenceSet;
    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/calendarcommon2/RecurrenceSet;-><init>(Landroid/content/ContentValues;)V
    :try_end_0
    .catch Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2937
    .restart local v10    # "recur":Lcom/android/calendarcommon2/RecurrenceSet;
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Lcom/android/calendarcommon2/RecurrenceSet;->hasRecurrence()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 2941
    const-string v13, "eventTimezone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2943
    .local v12, "tz":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2945
    const-string v12, "UTC"

    .line 2947
    :cond_6
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2, v12}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2949
    .local v2, "dtstartLocal":Landroid/text/format/Time;
    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 2951
    new-instance v11, Lcom/android/calendarcommon2/RecurrenceProcessor;

    invoke-direct {v11}, Lcom/android/calendarcommon2/RecurrenceProcessor;-><init>()V

    .line 2952
    .local v11, "rp":Lcom/android/calendarcommon2/RecurrenceProcessor;
    invoke-virtual {v11, v2, v10}, Lcom/android/calendarcommon2/RecurrenceProcessor;->getLastOccurence(Landroid/text/format/Time;Lcom/android/calendarcommon2/RecurrenceSet;)J

    move-result-wide v8

    .line 2953
    const-wide/16 v13, -0x1

    cmp-long v13, v8, v13

    if-eqz v13, :cond_2

    .line 2963
    .end local v2    # "dtstartLocal":Landroid/text/format/Time;
    .end local v11    # "rp":Lcom/android/calendarcommon2/RecurrenceProcessor;
    .end local v12    # "tz":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5, v8, v9}, Lcom/android/calendarcommon2/Duration;->addTo(J)J

    move-result-wide v8

    goto :goto_0

    .line 2928
    .end local v10    # "recur":Lcom/android/calendarcommon2/RecurrenceSet;
    :catch_0
    move-exception v7

    .line 2929
    .local v7, "e":Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;
    const-string v13, "CalendarProvider2"

    const/4 v14, 0x5

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2930
    const-string v13, "CalendarProvider2"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not parse RRULE recurrence string: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "rrule"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2959
    .end local v7    # "e":Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;
    .restart local v10    # "recur":Lcom/android/calendarcommon2/RecurrenceSet;
    :cond_7
    move-wide v8, v3

    goto :goto_1
.end method

.method constructSearchArgs([Ljava/lang/String;JJ)[Ljava/lang/String;
    .locals 8
    .param p1, "tokens"    # [Ljava/lang/String;
    .param p2, "rangeBegin"    # J
    .param p4, "rangeEnd"    # J

    .prologue
    .line 1240
    sget-object v6, Lcom/android/providers/calendar/CalendarProvider2;->SEARCH_COLUMNS:[Ljava/lang/String;

    array-length v3, v6

    .line 1241
    .local v3, "numCols":I
    array-length v6, p1

    mul-int/2addr v6, v3

    add-int/lit8 v2, v6, 0x2

    .line 1243
    .local v2, "numArgs":I
    new-array v4, v2, [Ljava/lang/String;

    .line 1244
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 1245
    const/4 v6, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 1246
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_1

    .line 1247
    mul-int v6, v3, v1

    add-int/lit8 v5, v6, 0x2

    .line 1248
    .local v5, "start":I
    move v0, v5

    .local v0, "i":I
    :goto_1
    add-int v6, v5, v3

    if-ge v0, v6, :cond_0

    .line 1249
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    .line 1248
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1246
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1252
    .end local v0    # "i":I
    .end local v5    # "start":I
    :cond_1
    return-object v4
.end method

.method constructSearchWhere([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "tokens"    # [Ljava/lang/String;

    .prologue
    .line 1214
    array-length v3, p1

    if-nez v3, :cond_0

    .line 1215
    const-string v3, ""

    .line 1235
    :goto_0
    return-object v3

    .line 1217
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1219
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_4

    .line 1220
    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->SEARCH_COLUMNS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 1222
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->SEARCH_COLUMNS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    const-string v3, " LIKE ? ESCAPE \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->SEARCH_COLUMNS:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    .line 1227
    const-string v3, "OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1230
    :cond_2
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_3

    .line 1232
    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1235
    .end local v0    # "i":I
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 29
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "callerIsSyncAdapter"    # Z

    .prologue
    .line 3058
    const-string v4, "CalendarProvider2"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3059
    const-string v4, "CalendarProvider2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteInTransaction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/calendar/CalendarProvider2;->validateUriParameters(Ljava/util/Set;)V

    .line 3062
    sget-object v4, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 3063
    .local v9, "match":I
    const/4 v5, 0x3

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move/from16 v8, p4

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v4 .. v11}, Lcom/android/providers/calendar/CalendarProvider2;->verifyTransactionAllowed(ILandroid/net/Uri;Landroid/content/ContentValues;ZILjava/lang/String;[Ljava/lang/String;)V

    .line 3066
    packed-switch v9, :pswitch_data_0

    .line 3208
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3068
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/common/content/SyncStateContentProviderHelper;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    .line 3201
    :goto_0
    return v25

    .line 3071
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p2, :cond_1

    const-string v4, ""

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 3074
    .local v28, "selectionWithId":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v4}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 3076
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/common/content/SyncStateContentProviderHelper;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    goto :goto_0

    .line 3071
    .end local v28    # "selectionWithId":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 3080
    :pswitch_3
    const-string v4, "account_name"

    const-string v5, "account_type"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1}, Lcom/android/providers/calendar/CalendarProvider2;->deleteMatchingColors(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    goto :goto_0

    .line 3086
    :pswitch_4
    const/16 v25, 0x0

    .line 3087
    .local v25, "result":I
    const-string v4, "account_name"

    const-string v5, "account_type"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3091
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "view_events"

    sget-object v12, Lcom/android/providers/calendar/CalendarProvider2;->ID_ONLY_PROJECTION:[Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 3095
    .local v18, "cursor":Landroid/database/Cursor;
    :goto_2
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3096
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 3097
    .local v23, "id":J
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/calendar/CalendarProvider2;->deleteEventInternal(JZZ)I

    move-result v4

    add-int v25, v25, v4

    .line 3098
    goto :goto_2

    .line 3099
    .end local v23    # "id":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleNextAlarm(Z)V

    .line 3100
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3102
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 3103
    const/16 v18, 0x0

    .line 3104
    goto/16 :goto_0

    .line 3102
    :catchall_0
    move-exception v4

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 3103
    const/16 v18, 0x0

    throw v4

    .line 3109
    .end local v18    # "cursor":Landroid/database/Cursor;
    .end local v25    # "result":I
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v23

    .line 3110
    .restart local v23    # "id":J
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/calendar/CalendarProvider2;->deleteEventInternal(JZZ)I

    move-result v25

    goto/16 :goto_0

    .line 3115
    .end local v23    # "id":J
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v26

    .line 3116
    .local v26, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    .line 3117
    .local v19, "eventId":J
    const/4 v4, 0x2

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    .line 3120
    .local v21, "excepId":J
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/calendar/CalendarProvider2;->deleteEventInternal(JZZ)I

    move-result v25

    goto/16 :goto_0

    .line 3124
    .end local v19    # "eventId":J
    .end local v21    # "excepId":J
    .end local v26    # "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_7
    if-eqz p4, :cond_3

    .line 3125
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "Attendees"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 3127
    :cond_3
    const-string v4, "Attendees"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->deleteFromEventRelatedTable(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 3133
    :pswitch_8
    if-eqz p4, :cond_4

    .line 3134
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v23

    .line 3135
    .restart local v23    # "id":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "Attendees"

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 3138
    .end local v23    # "id":J
    :cond_4
    const-string v4, "Attendees"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5, v6}, Lcom/android/providers/calendar/CalendarProvider2;->deleteFromEventRelatedTable(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 3144
    :pswitch_9
    const/4 v12, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v15, p4

    invoke-direct/range {v10 .. v15}, Lcom/android/providers/calendar/CalendarProvider2;->deleteReminders(Landroid/net/Uri;ZLjava/lang/String;[Ljava/lang/String;Z)I

    move-result v25

    goto/16 :goto_0

    .line 3148
    :pswitch_a
    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v15, p4

    invoke-direct/range {v10 .. v15}, Lcom/android/providers/calendar/CalendarProvider2;->deleteReminders(Landroid/net/Uri;ZLjava/lang/String;[Ljava/lang/String;Z)I

    move-result v25

    goto/16 :goto_0

    .line 3153
    :pswitch_b
    if-eqz p4, :cond_5

    .line 3154
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ExtendedProperties"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 3156
    :cond_5
    const-string v4, "ExtendedProperties"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->deleteFromEventRelatedTable(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 3162
    :pswitch_c
    if-eqz p4, :cond_6

    .line 3163
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v23

    .line 3164
    .restart local v23    # "id":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ExtendedProperties"

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 3167
    .end local v23    # "id":J
    :cond_6
    const-string v4, "ExtendedProperties"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5, v6}, Lcom/android/providers/calendar/CalendarProvider2;->deleteFromEventRelatedTable(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 3173
    :pswitch_d
    if-eqz p4, :cond_7

    .line 3174
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "CalendarAlerts"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 3176
    :cond_7
    const-string v4, "CalendarAlerts"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->deleteFromEventRelatedTable(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 3184
    :pswitch_e
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v23

    .line 3185
    .restart local v23    # "id":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "CalendarAlerts"

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 3189
    .end local v23    # "id":J
    :pswitch_f
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3190
    .local v27, "selectionSb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3191
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 3192
    const-string v4, " AND ("

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3193
    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3194
    const/16 v4, 0x29

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3196
    :cond_8
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3199
    .end local v27    # "selectionSb":Ljava/lang/StringBuilder;
    :pswitch_10
    const-string v4, "account_name"

    const-string v5, "account_type"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3201
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->deleteMatchingCalendars(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 3206
    :pswitch_11
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Cannot delete that URL"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3066
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_11
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected doProcessEventRawTimes(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "localTimezone"    # Ljava/lang/String;
    .param p2, "timeZoneDatabaseVersion"    # Ljava/lang/String;

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 671
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventsStartEndFromEventRawTimesLocked()V

    .line 672
    invoke-direct {p0, p2}, Lcom/android/providers/calendar/CalendarProvider2;->updateTimezoneDatabaseVersion(Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v0, p1}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneInstances(Ljava/lang/String;)V

    .line 674
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->regenerateInstancesTable()V

    .line 675
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 679
    return-void

    .line 677
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method protected doUpdateTimezoneDependentFields()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    .line 635
    :try_start_0
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v4}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneType()Ljava/lang/String;

    move-result-object v3

    .line 637
    .local v3, "timezoneType":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, "home"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 666
    .end local v3    # "timezoneType":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 641
    .restart local v3    # "timezoneType":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->isSameTimezoneDatabaseVersion()Z

    move-result v4

    if-nez v4, :cond_2

    .line 642
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    .line 643
    .local v2, "localTimezone":Ljava/lang/String;
    invoke-static {}, Landroid/util/TimeUtils;->getTimeZoneDatabaseVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/android/providers/calendar/CalendarProvider2;->doProcessEventRawTimes(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    .end local v2    # "localTimezone":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->isLocalSameAsInstancesTimezone()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 650
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    invoke-virtual {v4}, Lcom/android/providers/calendar/CalendarAlarmManager;->rescheduleMissedAlarms()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 652
    .end local v3    # "timezoneType":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 653
    .local v0, "e":Landroid/database/SQLException;
    const-string v4, "CalendarProvider2"

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 654
    const-string v4, "CalendarProvider2"

    const-string v5, "doUpdateTimezoneDependentFields() failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 659
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    invoke-virtual {v4}, Lcom/android/providers/calendar/MetaData;->clearInstanceRange()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 660
    :catch_1
    move-exception v1

    .line 661
    .local v1, "e2":Landroid/database/SQLException;
    const-string v4, "CalendarProvider2"

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 662
    const-string v4, "CalendarProvider2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearInstanceRange() also failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method escapeSearchToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 1159
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->SEARCH_ESCAPE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1160
    .local v0, "matcher":Ljava/util/regex/Matcher;
    const-string v1, "#$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method protected getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/calendar/CalendarDatabaseHelper;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 497
    invoke-static {p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getOrCreateCalendarAlarmManager()Lcom/android/providers/calendar/CalendarAlarmManager;
    .locals 3

    .prologue
    .line 567
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    if-nez v0, :cond_0

    .line 568
    new-instance v0, Lcom/android/providers/calendar/CalendarAlarmManager;

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/providers/calendar/CalendarAlarmManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    .line 569
    const-string v0, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getTimezoneDatabaseVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 765
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneDatabaseVersion()Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, "timezoneDatabaseVersion":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 767
    const-string v0, ""

    .line 772
    .end local v0    # "timezoneDatabaseVersion":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 769
    .restart local v0    # "timezoneDatabaseVersion":Ljava/lang/String;
    :cond_1
    const-string v1, "CalendarProvider2"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 770
    const-string v1, "CalendarProvider2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timezoneDatabaseVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 1489
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 1490
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    .line 1514
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1492
    :pswitch_1
    const-string v1, "vnd.android.cursor.dir/event"

    .line 1512
    :goto_0
    return-object v1

    .line 1494
    :pswitch_2
    const-string v1, "vnd.android.cursor.item/event"

    goto :goto_0

    .line 1496
    :pswitch_3
    const-string v1, "vnd.android.cursor.dir/reminder"

    goto :goto_0

    .line 1498
    :pswitch_4
    const-string v1, "vnd.android.cursor.item/reminder"

    goto :goto_0

    .line 1500
    :pswitch_5
    const-string v1, "vnd.android.cursor.dir/calendar-alert"

    goto :goto_0

    .line 1502
    :pswitch_6
    const-string v1, "vnd.android.cursor.dir/calendar-alert-by-instance"

    goto :goto_0

    .line 1504
    :pswitch_7
    const-string v1, "vnd.android.cursor.item/calendar-alert"

    goto :goto_0

    .line 1508
    :pswitch_8
    const-string v1, "vnd.android.cursor.dir/event-instance"

    goto :goto_0

    .line 1510
    :pswitch_9
    const-string v1, "time/epoch"

    goto :goto_0

    .line 1512
    :pswitch_a
    const-string v1, "vnd.android.cursor.dir/property"

    goto :goto_0

    .line 1490
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method protected initCalendarAlarm()V
    .locals 1

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getOrCreateCalendarAlarmManager()Lcom/android/providers/calendar/CalendarAlarmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    .line 564
    return-void
.end method

.method protected insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    .locals 40
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "callerIsSyncAdapter"    # Z

    .prologue
    .line 2109
    const-string v5, "CalendarProvider2"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2110
    const-string v5, "CalendarProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertInTransaction: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/providers/calendar/CalendarProvider2;->validateUriParameters(Ljava/util/Set;)V

    .line 2113
    sget-object v5, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    .line 2114
    .local v10, "match":I
    const/4 v6, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v5 .. v12}, Lcom/android/providers/calendar/CalendarProvider2;->verifyTransactionAllowed(ILandroid/net/Uri;Landroid/content/ContentValues;ZILjava/lang/String;[Ljava/lang/String;)V

    .line 2117
    const-wide/16 v13, 0x0

    .line 2119
    .local v13, "id":J
    packed-switch v10, :pswitch_data_0

    .line 2372
    :pswitch_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URL "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2121
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v5}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p2

    invoke-virtual {v5, v6, v0}, Lcom/android/common/content/SyncStateContentProviderHelper;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2375
    :cond_1
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v13, v5

    if-gez v5, :cond_22

    .line 2376
    const/4 v5, 0x0

    .line 2379
    :goto_1
    return-object v5

    .line 2124
    :pswitch_2
    if-nez p3, :cond_2

    .line 2125
    const-string v5, "dirty"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2126
    const-string v5, "mutators"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5}, Lcom/android/providers/calendar/CalendarProvider2;->addMutator(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2128
    :cond_2
    const-string v5, "dtstart"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2129
    const-string v5, "original_sync_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "originalInstanceTime"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x2

    const-string v6, "eventStatus"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 2134
    const-string v5, "originalInstanceTime"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    .line 2135
    .local v30, "origStart":J
    const-string v5, "dtstart"

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2136
    const-string v5, "dtend"

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2137
    const-string v5, "eventTimezone"

    const-string v6, "UTC"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2143
    .end local v30    # "origStart":J
    :cond_3
    new-instance v12, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 2144
    .local v12, "updatedValues":Landroid/content/ContentValues;
    if-eqz p3, :cond_5

    .line 2145
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5}, Lcom/android/providers/calendar/CalendarProvider2;->scrubEventData(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 2150
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/providers/calendar/CalendarProvider2;->updateLastDate(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v12

    .line 2151
    if-nez v12, :cond_6

    .line 2152
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Could not insert event."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2139
    .end local v12    # "updatedValues":Landroid/content/ContentValues;
    :cond_4
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "DTSTART field missing from event"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2147
    .restart local v12    # "updatedValues":Landroid/content/ContentValues;
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/providers/calendar/CalendarProvider2;->validateEventData(Landroid/content/ContentValues;)V

    goto :goto_2

    .line 2155
    :cond_6
    const-string v5, "calendar_id"

    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v24

    .line 2156
    .local v24, "calendar_id":Ljava/lang/Long;
    if-nez v24, :cond_7

    .line 2159
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "New events must specify a calendar id"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2162
    :cond_7
    const-string v5, "eventColor_index"

    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 2163
    .local v26, "color_id":Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 2164
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/providers/calendar/CalendarProvider2;->getAccount(J)Landroid/accounts/Account;

    move-result-object v21

    .line 2165
    .local v21, "account":Landroid/accounts/Account;
    const/16 v16, 0x0

    .line 2166
    .local v16, "accountName":Ljava/lang/String;
    const/16 v17, 0x0

    .line 2167
    .local v17, "accountType":Ljava/lang/String;
    if-eqz v21, :cond_8

    .line 2168
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 2169
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 2171
    :cond_8
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/providers/calendar/CalendarProvider2;->verifyColorExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v25

    .line 2173
    .local v25, "color":I
    const-string v5, "eventColor"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2175
    .end local v16    # "accountName":Ljava/lang/String;
    .end local v17    # "accountType":Ljava/lang/String;
    .end local v21    # "account":Landroid/accounts/Account;
    .end local v25    # "color":I
    :cond_9
    const/16 v37, 0x0

    .line 2176
    .local v37, "owner":Ljava/lang/String;
    const-string v5, "organizer"

    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 2177
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/providers/calendar/CalendarProvider2;->getOwner(J)Ljava/lang/String;

    move-result-object v37

    .line 2182
    if-eqz v37, :cond_a

    .line 2183
    const-string v5, "organizer"

    move-object/from16 v0, v37

    invoke-virtual {v12, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2186
    :cond_a
    const-string v5, "original_sync_id"

    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "original_id"

    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 2188
    const-string v5, "original_sync_id"

    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "calendar_id"

    invoke-virtual {v12, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/providers/calendar/CalendarProvider2;->getOriginalId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v34

    .line 2191
    .local v34, "originalId":J
    const-wide/16 v5, -0x1

    cmp-long v5, v34, v5

    if-eqz v5, :cond_b

    .line 2192
    const-string v5, "original_id"

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2202
    .end local v34    # "originalId":J
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v12}, Lcom/android/providers/calendar/CalendarProvider2;->fixAllDayTime(Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2203
    const-string v5, "CalendarProvider2"

    const/4 v6, 0x5

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2204
    const-string v5, "CalendarProvider2"

    const-string v6, "insertInTransaction: allDay is true but sec, min, hour were not 0."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    :cond_c
    const-string v5, "hasAlarm"

    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2210
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v5, v12}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->eventsInsert(Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2211
    const-wide/16 v5, -0x1

    cmp-long v5, v13, v5

    if-eqz v5, :cond_1

    .line 2212
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v12}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventRawTimesLocked(JLandroid/content/ContentValues;)V

    .line 2213
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/providers/calendar/CalendarProvider2;->mInstancesHelper:Lcom/android/providers/calendar/CalendarInstancesHelper;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v16, v0

    invoke-virtual/range {v11 .. v16}, Lcom/android/providers/calendar/CalendarInstancesHelper;->updateInstancesLocked(Landroid/content/ContentValues;JZLandroid/database/sqlite/SQLiteDatabase;)V

    .line 2218
    const-string v5, "selfAttendeeStatus"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2219
    const-string v5, "selfAttendeeStatus"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v38

    .line 2220
    .local v38, "status":I
    if-nez v37, :cond_d

    .line 2221
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/providers/calendar/CalendarProvider2;->getOwner(J)Ljava/lang/String;

    move-result-object v37

    .line 2223
    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, v38

    move-object/from16 v2, v37

    invoke-direct {v0, v13, v14, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->createAttendeeEntry(JILjava/lang/String;)V

    .line 2226
    .end local v38    # "status":I
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v13, v14, v1}, Lcom/android/providers/calendar/CalendarProvider2;->backfillExceptionOriginalIds(JLandroid/content/ContentValues;)V

    .line 2228
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v13, v14, v1}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(JZ)V

    goto/16 :goto_0

    .line 2194
    :cond_f
    const-string v5, "original_sync_id"

    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "original_id"

    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2196
    const-string v5, "original_id"

    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/providers/calendar/CalendarProvider2;->getOriginalSyncId(J)Ljava/lang/String;

    move-result-object v36

    .line 2198
    .local v36, "originalSyncId":Ljava/lang/String;
    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 2199
    const-string v5, "original_sync_id"

    move-object/from16 v0, v36

    invoke-virtual {v12, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2232
    .end local v12    # "updatedValues":Landroid/content/ContentValues;
    .end local v24    # "calendar_id":Ljava/lang/Long;
    .end local v26    # "color_id":Ljava/lang/String;
    .end local v36    # "originalSyncId":Ljava/lang/String;
    .end local v37    # "owner":Ljava/lang/String;
    :pswitch_3
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v32

    .line 2233
    .local v32, "originalEventId":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/calendar/CalendarProvider2;->handleInsertException(JLandroid/content/ContentValues;Z)J

    move-result-wide v13

    .line 2234
    goto/16 :goto_0

    .line 2237
    .end local v32    # "originalEventId":J
    :pswitch_4
    const-string v5, "sync_events"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v39

    .line 2238
    .local v39, "syncEvents":Ljava/lang/Integer;
    if-eqz v39, :cond_10

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_10

    .line 2239
    const-string v5, "account_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2240
    .restart local v16    # "accountName":Ljava/lang/String;
    const-string v5, "account_type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2242
    .restart local v17    # "accountType":Ljava/lang/String;
    new-instance v21, Landroid/accounts/Account;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2243
    .restart local v21    # "account":Landroid/accounts/Account;
    const-string v5, "cal_sync1"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 2244
    .local v29, "eventsUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    const/4 v6, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v5, v0, v6, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->scheduleSync(Landroid/accounts/Account;ZLjava/lang/String;)V

    .line 2246
    .end local v16    # "accountName":Ljava/lang/String;
    .end local v17    # "accountType":Ljava/lang/String;
    .end local v21    # "account":Landroid/accounts/Account;
    .end local v29    # "eventsUrl":Ljava/lang/String;
    :cond_10
    const-string v5, "calendar_color_index"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 2247
    .local v23, "cal_color_id":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 2248
    const-string v5, "account_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2249
    .restart local v16    # "accountName":Ljava/lang/String;
    const-string v5, "account_type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2250
    .restart local v17    # "accountType":Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/providers/calendar/CalendarProvider2;->verifyColorExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v25

    .line 2252
    .restart local v25    # "color":I
    const-string v5, "calendar_color"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2254
    .end local v16    # "accountName":Ljava/lang/String;
    .end local v17    # "accountType":Ljava/lang/String;
    .end local v25    # "color":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->calendarsInsert(Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2255
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v13, v14, v1}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(JZ)V

    goto/16 :goto_0

    .line 2262
    .end local v23    # "cal_color_id":Ljava/lang/String;
    .end local v39    # "syncEvents":Ljava/lang/Integer;
    :pswitch_5
    const-string v5, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2263
    .restart local v16    # "accountName":Ljava/lang/String;
    const-string v5, "account_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2264
    .restart local v17    # "accountType":Ljava/lang/String;
    const-string v5, "color_index"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2265
    .local v20, "colorIndex":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2266
    :cond_12
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Account name and type must be non empty parameters for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2269
    :cond_13
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2270
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "COLOR_INDEX must be non empty for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2272
    :cond_14
    const-string v5, "color_type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v5, "color"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 2273
    :cond_15
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "New colors must contain COLOR_TYPE and COLOR"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2279
    :cond_16
    const-string v5, "account_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2280
    const-string v5, "account_type"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2283
    const/16 v22, 0x0

    .line 2285
    .local v22, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v5, "color_type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .local v18, "colorType":J
    move-object/from16 v15, p0

    .line 2286
    invoke-direct/range {v15 .. v20}, Lcom/android/providers/calendar/CalendarProvider2;->getColorByTypeIndex(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 2287
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-eqz v5, :cond_18

    .line 2288
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "color type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " already exists for account and type provided"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2293
    .end local v18    # "colorType":J
    :catchall_0
    move-exception v5

    if-eqz v22, :cond_17

    .line 2294
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_17
    throw v5

    .line 2293
    .restart local v18    # "colorType":J
    :cond_18
    if-eqz v22, :cond_19

    .line 2294
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 2296
    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->colorsInsert(Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2297
    goto/16 :goto_0

    .line 2299
    .end local v16    # "accountName":Ljava/lang/String;
    .end local v17    # "accountType":Ljava/lang/String;
    .end local v18    # "colorType":J
    .end local v20    # "colorIndex":Ljava/lang/String;
    .end local v22    # "c":Landroid/database/Cursor;
    :pswitch_6
    const-string v5, "event_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 2300
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Attendees values must contain an event_id"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2303
    :cond_1a
    if-nez p3, :cond_1b

    .line 2304
    const-string v5, "event_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v27

    .line 2305
    .local v27, "eventId":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->duplicateEvent(J)V

    .line 2306
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/providers/calendar/CalendarProvider2;->setEventDirty(J)V

    .line 2308
    .end local v27    # "eventId":Ljava/lang/Long;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->attendeesInsert(Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2311
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventAttendeeStatus(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 2315
    :pswitch_7
    const-string v5, "event_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v28

    .line 2316
    .local v28, "eventIdObj":Ljava/lang/Long;
    if-nez v28, :cond_1c

    .line 2317
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Reminders values must contain a numeric event_id"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2320
    :cond_1c
    if-nez p3, :cond_1d

    .line 2321
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->duplicateEvent(J)V

    .line 2322
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/providers/calendar/CalendarProvider2;->setEventDirty(J)V

    .line 2324
    :cond_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->remindersInsert(Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2327
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcom/android/providers/calendar/CalendarProvider2;->setHasAlarm(JI)V

    .line 2330
    const-string v5, "CalendarProvider2"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 2331
    const-string v5, "CalendarProvider2"

    const-string v6, "insertInternal() changing reminder"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    :cond_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleNextAlarm(Z)V

    goto/16 :goto_0

    .line 2337
    .end local v28    # "eventIdObj":Ljava/lang/Long;
    :pswitch_8
    const-string v5, "event_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 2338
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "CalendarAlerts values must contain an event_id"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2341
    :cond_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->calendarAlertsInsert(Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2344
    goto/16 :goto_0

    .line 2346
    :pswitch_9
    const-string v5, "event_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 2347
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "ExtendedProperties values must contain an event_id"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2350
    :cond_20
    if-nez p3, :cond_21

    .line 2351
    const-string v5, "event_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v27

    .line 2353
    .restart local v27    # "eventId":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->duplicateEvent(J)V

    .line 2354
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/providers/calendar/CalendarProvider2;->setEventDirty(J)V

    .line 2356
    .end local v27    # "eventId":Ljava/lang/Long;
    :cond_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->extendedPropertiesInsert(Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2357
    goto/16 :goto_0

    .line 2360
    :pswitch_a
    invoke-static/range {p2 .. p2}, Lcom/android/providers/calendar/CalendarProvider2;->handleEmmaRequest(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 2370
    :pswitch_b
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot insert into that URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2379
    :cond_22
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    goto/16 :goto_1

    .line 2119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_b
        :pswitch_b
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_b
        :pswitch_9
        :pswitch_b
        :pswitch_8
        :pswitch_b
        :pswitch_0
        :pswitch_b
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_3
        :pswitch_0
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method

.method protected isSameTimezoneDatabaseVersion()Z
    .locals 2

    .prologue
    .line 756
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneDatabaseVersion()Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, "timezoneDatabaseVersion":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 758
    const/4 v1, 0x0

    .line 760
    :goto_0
    return v1

    :cond_0
    invoke-static {}, Landroid/util/TimeUtils;->getTimeZoneDatabaseVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method protected notifyChange(Z)V
    .locals 3
    .param p1, "syncToNetwork"    # Z

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 821
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 4959
    new-instance v0, Lcom/android/providers/calendar/CalendarProvider2$AccountsUpdatedThread;

    invoke-direct {v0, p0, p1}, Lcom/android/providers/calendar/CalendarProvider2$AccountsUpdatedThread;-><init>(Lcom/android/providers/calendar/CalendarProvider2;[Landroid/accounts/Account;)V

    .line 4960
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4961
    return-void
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 515
    invoke-super {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onCreate()Z

    .line 516
    const/16 v1, 0x8

    const/16 v2, 0x9

    invoke-virtual {p0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->setAppOps(II)V

    .line 518
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->initialize()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 523
    :goto_0
    return v1

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "CalendarProvider2"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    const-string v1, "CalendarProvider2"

    const-string v2, "Cannot start provider"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 523
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected postInitialize()V
    .locals 2

    .prologue
    .line 575
    new-instance v0, Lcom/android/providers/calendar/CalendarProvider2$PostInitializeThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/providers/calendar/CalendarProvider2$PostInitializeThread;-><init>(Lcom/android/providers/calendar/CalendarProvider2;Lcom/android/providers/calendar/CalendarProvider2$1;)V

    .line 576
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 577
    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 837
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 839
    .local v0, "identity":J
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/calendar/CalendarProvider2;->queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 841
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected shouldSyncFor(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 828
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 829
    .local v0, "match":I
    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 506
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->close()V

    .line 508
    iput-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    .line 509
    iput-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 511
    :cond_0
    return-void
.end method

.method tokenizeSearchQuery(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 1173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1174
    .local v0, "matchList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->SEARCH_TOKEN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1176
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1177
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1179
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 1184
    .local v2, "token":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/providers/calendar/CalendarProvider2;->escapeSearchToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1182
    .end local v2    # "token":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "token":Ljava/lang/String;
    goto :goto_1

    .line 1186
    .end local v2    # "token":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method protected updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 36
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "callerIsSyncAdapter"    # Z

    .prologue
    .line 3922
    const-string v4, "CalendarProvider2"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3923
    const-string v4, "CalendarProvider2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateInTransaction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3925
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/calendar/CalendarProvider2;->validateUriParameters(Ljava/util/Set;)V

    .line 3926
    sget-object v4, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 3927
    .local v9, "match":I
    const/4 v5, 0x2

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p5

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v4 .. v11}, Lcom/android/providers/calendar/CalendarProvider2;->verifyTransactionAllowed(ILandroid/net/Uri;Landroid/content/ContentValues;ZILjava/lang/String;[Ljava/lang/String;)V

    .line 3930
    packed-switch v9, :pswitch_data_0

    .line 4197
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3932
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "account_name"

    const-string v7, "account_type"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v6, v7}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v4, v5, v0, v6, v1}, Lcom/android/common/content/SyncStateContentProviderHelper;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v29

    .line 4193
    :cond_1
    :goto_0
    return v29

    .line 3937
    :pswitch_2
    const-string v4, "account_name"

    const-string v5, "account_type"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 3939
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p3, :cond_2

    const-string v4, ""

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 3942
    .local v30, "selectionWithId":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 3944
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    move-object/from16 v2, p4

    invoke-virtual {v4, v5, v0, v1, v2}, Lcom/android/common/content/SyncStateContentProviderHelper;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v29

    goto :goto_0

    .line 3939
    .end local v30    # "selectionWithId":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 3948
    :pswitch_3
    const/16 v34, 0x0

    .line 3949
    .local v34, "validValues":I
    const-string v4, "color"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 3950
    add-int/lit8 v34, v34, 0x1

    .line 3952
    :cond_3
    const-string v4, "data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 3953
    add-int/lit8 v34, v34, 0x1

    .line 3956
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->size()I

    move-result v4

    move/from16 v0, v34

    if-eq v4, v0, :cond_5

    .line 3957
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "You may only change the COLOR and DATA columns for an existing Colors entry."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3960
    :cond_5
    const-string v4, "account_name"

    const-string v5, "account_type"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v4, v2}, Lcom/android/providers/calendar/CalendarProvider2;->handleUpdateColors(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v29

    goto/16 :goto_0

    .line 3968
    .end local v34    # "validValues":I
    :pswitch_4
    const/4 v4, 0x5

    if-ne v9, v4, :cond_c

    .line 3969
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v24

    .line 3986
    .local v24, "id":J
    :goto_2
    if-nez p5, :cond_f

    .line 3987
    const-string v4, "dirty"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3988
    const-string v4, "mutators"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/android/providers/calendar/CalendarProvider2;->addMutator(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3995
    :cond_6
    :goto_3
    const-string v4, "sync_events"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v31

    .line 3996
    .local v31, "syncEvents":Ljava/lang/Integer;
    if-eqz v31, :cond_7

    .line 3997
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_10

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2, v4}, Lcom/android/providers/calendar/CalendarProvider2;->modifyCalendarSubscription(JZ)V

    .line 3999
    :cond_7
    const-string v4, "calendar_color_index"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 4000
    .local v21, "color_id":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 4001
    const-string v4, "account_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 4002
    .local v19, "accountName":Ljava/lang/String;
    const-string v4, "account_type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 4003
    .local v20, "accountType":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 4004
    :cond_8
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->getAccount(J)Landroid/accounts/Account;

    move-result-object v18

    .line 4005
    .local v18, "account":Landroid/accounts/Account;
    if-eqz v18, :cond_9

    .line 4006
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 4007
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 4010
    .end local v18    # "account":Landroid/accounts/Account;
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/calendar/CalendarProvider2;->verifyColorExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 4013
    .end local v19    # "accountName":Ljava/lang/String;
    .end local v20    # "accountType":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "Calendars"

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v29

    .line 4016
    .local v29, "result":I
    if-lez v29, :cond_1

    .line 4018
    const-string v4, "visible"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 4023
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleNextAlarm(Z)V

    .line 4026
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(Z)V

    goto/16 :goto_0

    .line 3976
    .end local v21    # "color_id":Ljava/lang/String;
    .end local v24    # "id":J
    .end local v29    # "result":I
    .end local v31    # "syncEvents":Ljava/lang/Integer;
    :cond_c
    if-eqz p3, :cond_d

    const-string v4, "_id=?"

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3977
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    .restart local v24    # "id":J
    goto/16 :goto_2

    .line 3978
    .end local v24    # "id":J
    :cond_d
    if-eqz p3, :cond_e

    const-string v4, "_id="

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 3981
    const/4 v4, 0x4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    .restart local v24    # "id":J
    goto/16 :goto_2

    .line 3983
    .end local v24    # "id":J
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "Calendars"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v5, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v29

    goto/16 :goto_0

    .line 3990
    .restart local v24    # "id":J
    :cond_f
    const-string v4, "dirty"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "dirty"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_6

    .line 3992
    const-string v5, "mutators"

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3997
    .restart local v31    # "syncEvents":Ljava/lang/Integer;
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 4034
    .end local v24    # "id":J
    .end local v31    # "syncEvents":Ljava/lang/Integer;
    :pswitch_5
    const/16 v23, 0x0

    .line 4041
    .local v23, "events":Landroid/database/Cursor;
    const/4 v4, 0x2

    if-ne v9, v4, :cond_11

    .line 4043
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v24

    .line 4044
    .restart local v24    # "id":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "Events"

    const/4 v12, 0x0

    const-string v13, "_id=?"

    const/4 v4, 0x1

    new-array v14, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v14, v4

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 4054
    .end local v24    # "id":J
    :goto_5
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_12

    .line 4055
    const-string v4, "CalendarProvider2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No events to update: uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " selection="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " selectionArgs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4057
    const/16 v29, 0x0

    .line 4062
    if-eqz v23, :cond_1

    .line 4063
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 4049
    :cond_11
    :try_start_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "Events"

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    goto :goto_5

    .line 4060
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->handleUpdateEvents(Landroid/database/Cursor;Landroid/content/ContentValues;Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v29

    .line 4062
    if-eqz v23, :cond_1

    .line 4063
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 4062
    :catchall_0
    move-exception v4

    if-eqz v23, :cond_13

    .line 4063
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :cond_13
    throw v4

    .line 4068
    .end local v23    # "events":Landroid/database/Cursor;
    :pswitch_6
    const-string v12, "Attendees"

    const/4 v13, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move/from16 v17, p5

    invoke-direct/range {v10 .. v17}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventRelatedTable(Landroid/net/Uri;Ljava/lang/String;ZLandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v29

    goto/16 :goto_0

    .line 4071
    :pswitch_7
    const-string v12, "Attendees"

    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v14, p2

    move/from16 v17, p5

    invoke-direct/range {v10 .. v17}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventRelatedTable(Landroid/net/Uri;Ljava/lang/String;ZLandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v29

    goto/16 :goto_0

    .line 4077
    :pswitch_8
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v24

    .line 4078
    .restart local v24    # "id":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "CalendarAlerts"

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v29

    goto/16 :goto_0

    .line 4084
    .end local v24    # "id":J
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "CalendarAlerts"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v5, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v29

    goto/16 :goto_0

    .line 4088
    :pswitch_a
    const-string v12, "Reminders"

    const/4 v13, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move/from16 v17, p5

    invoke-direct/range {v10 .. v17}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventRelatedTable(Landroid/net/Uri;Ljava/lang/String;ZLandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v29

    goto/16 :goto_0

    .line 4091
    :pswitch_b
    const-string v12, "Reminders"

    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v14, p2

    move/from16 v17, p5

    invoke-direct/range {v10 .. v17}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventRelatedTable(Landroid/net/Uri;Ljava/lang/String;ZLandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v22

    .line 4096
    .local v22, "count":I
    const-string v4, "CalendarProvider2"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 4097
    const-string v4, "CalendarProvider2"

    const-string v5, "updateInternal() changing reminder"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4099
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleNextAlarm(Z)V

    move/from16 v29, v22

    .line 4100
    goto/16 :goto_0

    .line 4104
    .end local v22    # "count":I
    :pswitch_c
    const-string v12, "ExtendedProperties"

    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v14, p2

    move/from16 v17, p5

    invoke-direct/range {v10 .. v17}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventRelatedTable(Landroid/net/Uri;Ljava/lang/String;ZLandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v29

    goto/16 :goto_0

    .line 4110
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleNextAlarm(Z)V

    .line 4111
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 4114
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleNextAlarm(Z)V

    .line 4115
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 4119
    :pswitch_f
    const-string v4, "key=?"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 4120
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Selection should be key=? for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4123
    :cond_15
    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v26

    .line 4125
    .local v26, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "timezoneInstancesPrevious"

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 4126
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid selection key: timezoneInstancesPrevious for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4131
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v4}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v33

    .line 4135
    .local v33, "timezoneInstancesBeforeUpdate":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "CalendarCache"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v5, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v29

    .line 4146
    .restart local v29    # "result":I
    if-lez v29, :cond_1

    .line 4148
    const-string v4, "timezoneType"

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 4149
    const-string v4, "value"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 4150
    .local v35, "value":Ljava/lang/String;
    if-eqz v35, :cond_1

    .line 4152
    const-string v4, "home"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 4153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v4}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstancesPrevious()Ljava/lang/String;

    move-result-object v28

    .line 4155
    .local v28, "previousTimezone":Ljava/lang/String;
    if-eqz v28, :cond_17

    .line 4156
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneInstances(Ljava/lang/String;)V

    .line 4160
    :cond_17
    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4161
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->regenerateInstancesTable()V

    .line 4162
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(Z)V

    goto/16 :goto_0

    .line 4166
    .end local v28    # "previousTimezone":Ljava/lang/String;
    :cond_18
    const-string v4, "auto"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4167
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v27

    .line 4168
    .local v27, "localTimezone":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneInstances(Ljava/lang/String;)V

    .line 4169
    move-object/from16 v0, v33

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4170
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->regenerateInstancesTable()V

    .line 4171
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(Z)V

    goto/16 :goto_0

    .line 4177
    .end local v27    # "localTimezone":Ljava/lang/String;
    .end local v35    # "value":Ljava/lang/String;
    :cond_19
    const-string v4, "timezoneInstances"

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4179
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->isHomeTimezone()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4180
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v4}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v32

    .line 4182
    .local v32, "timezoneInstances":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneInstancesPrevious(Ljava/lang/String;)V

    .line 4185
    if-eqz v33, :cond_1

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4187
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->regenerateInstancesTable()V

    .line 4188
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(Z)V

    goto/16 :goto_0

    .line 3930
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected updateTimezoneDependentFields()V
    .locals 2

    .prologue
    .line 609
    new-instance v0, Lcom/android/providers/calendar/CalendarProvider2$TimezoneCheckerThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/providers/calendar/CalendarProvider2$TimezoneCheckerThread;-><init>(Lcom/android/providers/calendar/CalendarProvider2;Lcom/android/providers/calendar/CalendarProvider2$1;)V

    .line 610
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 611
    return-void
.end method
