.class Lcom/android/providers/calendar/CalendarDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CalendarDatabaseHelper.java"


# static fields
.field private static sSingleton:Lcom/android/providers/calendar/CalendarDatabaseHelper;


# instance fields
.field private mAttendeesInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mCalendarAlertsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mCalendarsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mColorsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mEventsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mEventsRawTimesInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mExtendedPropertiesInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field public mInTestMode:Z

.field private mInstancesInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mRemindersInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private final mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->sSingleton:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 319
    const-string v0, "calendar.db"

    const/4 v1, 0x0

    const/16 v2, 0x258

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mInTestMode:Z

    .line 322
    new-instance v0, Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-direct {v0}, Lcom/android/common/content/SyncStateContentProviderHelper;-><init>()V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    .line 323
    return-void
.end method

.method private bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v2, 0x0

    .line 389
    const-string v0, "CalendarDatabaseHelper"

    const-string v1, "Bootstrapping database"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 393
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createColorsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 395
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 397
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createEventsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 399
    const-string v0, "CREATE TABLE EventsRawTimes (_id INTEGER PRIMARY KEY,event_id INTEGER NOT NULL,dtstart2445 TEXT,dtend2445 TEXT,originalInstanceTime2445 TEXT,lastDate2445 TEXT,UNIQUE (event_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 409
    const-string v0, "CREATE TABLE Instances (_id INTEGER PRIMARY KEY,event_id INTEGER,begin INTEGER,end INTEGER,startDay INTEGER,endDay INTEGER,startMinute INTEGER,endMinute INTEGER,UNIQUE (event_id, begin, end));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 424
    const-string v0, "CREATE INDEX instancesStartDayIndex ON Instances (startDay);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 428
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarMetaDataTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 430
    invoke-direct {p0, p1, v2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarCacheTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 432
    const-string v0, "CREATE TABLE Attendees (_id INTEGER PRIMARY KEY,event_id INTEGER,attendeeName TEXT,attendeeEmail TEXT,attendeeStatus INTEGER,attendeeRelationship INTEGER,attendeeType INTEGER,attendeeIdentity TEXT,attendeeIdNamespace TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 444
    const-string v0, "CREATE INDEX attendeesEventIdIndex ON Attendees (event_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 448
    const-string v0, "CREATE TABLE Reminders (_id INTEGER PRIMARY KEY,event_id INTEGER,minutes INTEGER,method INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 456
    const-string v0, "CREATE INDEX remindersEventIdIndex ON Reminders (event_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 461
    const-string v0, "CREATE TABLE CalendarAlerts (_id INTEGER PRIMARY KEY,event_id INTEGER,begin INTEGER NOT NULL,end INTEGER NOT NULL,alarmTime INTEGER NOT NULL,creationTime INTEGER NOT NULL DEFAULT 0,receivedTime INTEGER NOT NULL DEFAULT 0,notifyTime INTEGER NOT NULL DEFAULT 0,state INTEGER NOT NULL,minutes INTEGER,UNIQUE (alarmTime, begin, event_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 481
    const-string v0, "CREATE INDEX calendarAlertsEventIdIndex ON CalendarAlerts (event_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 485
    const-string v0, "CREATE TABLE ExtendedProperties (_id INTEGER PRIMARY KEY,event_id INTEGER,name TEXT,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 492
    const-string v0, "CREATE INDEX extendedPropertiesEventIdIndex ON ExtendedProperties (event_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 497
    invoke-static {p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createEventsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 500
    const-string v0, "CREATE TRIGGER events_cleanup_delete DELETE ON Events BEGIN DELETE FROM Instances WHERE event_id=old._id;DELETE FROM EventsRawTimes WHERE event_id=old._id;DELETE FROM Attendees WHERE event_id=old._id;DELETE FROM Reminders WHERE event_id=old._id;DELETE FROM CalendarAlerts WHERE event_id=old._id;DELETE FROM ExtendedProperties WHERE event_id=old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createColorsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 511
    const-string v0, "CREATE TRIGGER original_sync_update UPDATE OF _sync_id ON Events BEGIN UPDATE Events SET original_sync_id=new._sync_id WHERE original_id=old._id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 513
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->scheduleSync(Landroid/accounts/Account;ZLjava/lang/String;)V

    .line 514
    return-void
.end method

.method public static calendarEmailAddressFromFeedUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "feed"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x5

    .line 3271
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3272
    .local v1, "pathComponents":[Ljava/lang/String;
    array-length v3, v1

    if-le v3, v4, :cond_0

    const-string v3, "feeds"

    const/4 v4, 0x4

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3274
    const/4 v3, 0x5

    :try_start_0
    aget-object v3, v1, v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3282
    :goto_0
    return-object v2

    .line 3275
    :catch_0
    move-exception v0

    .line 3276
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "CalendarDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to url decode the email address in calendar "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3281
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    const-string v3, "CalendarDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to find the email address in calendar "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static copyEventRelatedTables(Landroid/database/sqlite/SQLiteDatabase;JJ)V
    .locals 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "newId"    # J
    .param p3, "id"    # J

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3421
    const-string v0, "INSERT INTO Reminders ( event_id, minutes,method) SELECT ?,minutes,method FROM Reminders WHERE event_id = ?"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3428
    const-string v0, "INSERT INTO Attendees (event_id,attendeeName,attendeeEmail,attendeeStatus,attendeeRelationship,attendeeType,attendeeIdentity,attendeeIdNamespace) SELECT ?,attendeeName,attendeeEmail,attendeeStatus,attendeeRelationship,attendeeType,attendeeIdentity,attendeeIdNamespace FROM Attendees WHERE event_id = ?"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3435
    const-string v0, "INSERT INTO ExtendedProperties (event_id,name,value) SELECT ?, name,value FROM ExtendedProperties WHERE event_id = ?"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3442
    return-void
.end method

.method private createCalendarCacheTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldTimezoneDbVersion"    # Ljava/lang/String;

    .prologue
    .line 1015
    const-string v0, "DROP TABLE IF EXISTS CalendarCache;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1018
    const-string v0, "CREATE TABLE IF NOT EXISTS CalendarCache (_id INTEGER PRIMARY KEY,key TEXT NOT NULL,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1024
    invoke-direct {p0, p1, p2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->initCalendarCacheTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1025
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->updateCalendarCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1026
    return-void
.end method

.method private createCalendarMetaDataTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 995
    const-string v0, "CREATE TABLE CalendarMetaData (_id INTEGER PRIMARY KEY,localTimezone TEXT,minInstance INTEGER,maxInstance INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1001
    return-void
.end method

.method private createCalendarMetaDataTable59(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1004
    const-string v0, "CREATE TABLE CalendarMetaData (_id INTEGER PRIMARY KEY,localTimezone TEXT,minInstance INTEGER,maxInstance INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1010
    return-void
.end method

.method private createCalendarsCleanup200(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 988
    const-string v0, "CREATE TRIGGER calendar_cleanup DELETE ON Calendars BEGIN DELETE FROM Events WHERE calendar_id=old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 992
    return-void
.end method

.method private createCalendarsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 766
    const-string v0, "CREATE TABLE Calendars (_id INTEGER PRIMARY KEY,account_name TEXT,account_type TEXT,_sync_id TEXT,dirty INTEGER,mutators TEXT,name TEXT,calendar_displayName TEXT,calendar_color INTEGER,calendar_color_index TEXT,calendar_access_level INTEGER,visible INTEGER NOT NULL DEFAULT 1,sync_events INTEGER NOT NULL DEFAULT 0,calendar_location TEXT,calendar_timezone TEXT,ownerAccount TEXT, isPrimary INTEGER, canOrganizerRespond INTEGER NOT NULL DEFAULT 1,canModifyTimeZone INTEGER DEFAULT 1,canPartiallyUpdate INTEGER DEFAULT 0,maxReminders INTEGER DEFAULT 5,allowedReminders TEXT DEFAULT \'0,1\',allowedAvailability TEXT DEFAULT \'0,1\',allowedAttendeeTypes TEXT DEFAULT \'0,1,2\',deleted INTEGER NOT NULL DEFAULT 0,cal_sync1 TEXT,cal_sync2 TEXT,cal_sync3 TEXT,cal_sync4 TEXT,cal_sync5 TEXT,cal_sync6 TEXT,cal_sync7 TEXT,cal_sync8 TEXT,cal_sync9 TEXT,cal_sync10 TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 805
    const-string v0, "CREATE TRIGGER calendar_cleanup DELETE ON Calendars BEGIN DELETE FROM Events WHERE calendar_id=old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 809
    return-void
.end method

.method private createCalendarsTable200(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 956
    const-string v0, "CREATE TABLE Calendars (_id INTEGER PRIMARY KEY,_sync_account TEXT,_sync_account_type TEXT,_sync_id TEXT,_sync_version TEXT,_sync_time TEXT,_sync_local_id INTEGER,_sync_dirty INTEGER,_sync_mark INTEGER,name TEXT,displayName TEXT,hidden INTEGER NOT NULL DEFAULT 0,color INTEGER,access_level INTEGER,selected INTEGER NOT NULL DEFAULT 1,sync_events INTEGER NOT NULL DEFAULT 0,location TEXT,timezone TEXT,ownerAccount TEXT, organizerCanRespond INTEGER NOT NULL DEFAULT 1,deleted INTEGER NOT NULL DEFAULT 0,sync1 TEXT,sync2 TEXT,sync3 TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 983
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarsCleanup200(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 984
    return-void
.end method

.method private createCalendarsTable202(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 924
    const-string v0, "CREATE TABLE Calendars (_id INTEGER PRIMARY KEY,_sync_account TEXT,_sync_account_type TEXT,_sync_id TEXT,_sync_version TEXT,_sync_time TEXT,_sync_local_id INTEGER,_sync_dirty INTEGER,_sync_mark INTEGER,name TEXT,displayName TEXT,color INTEGER,access_level INTEGER,selected INTEGER NOT NULL DEFAULT 1,sync_events INTEGER NOT NULL DEFAULT 0,location TEXT,timezone TEXT,ownerAccount TEXT, organizerCanRespond INTEGER NOT NULL DEFAULT 1,deleted INTEGER NOT NULL DEFAULT 0,sync1 TEXT,sync2 TEXT,sync3 TEXT,sync4 TEXT,sync5 TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 952
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarsCleanup200(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 953
    return-void
.end method

.method private createCalendarsTable205(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 891
    const-string v0, "CREATE TABLE Calendars (_id INTEGER PRIMARY KEY,_sync_account TEXT,_sync_account_type TEXT,_sync_id TEXT,_sync_version TEXT,_sync_time TEXT,_sync_dirty INTEGER,name TEXT,displayName TEXT,color INTEGER,access_level INTEGER,visible INTEGER NOT NULL DEFAULT 1,sync_events INTEGER NOT NULL DEFAULT 0,location TEXT,timezone TEXT,ownerAccount TEXT, canOrganizerRespond INTEGER NOT NULL DEFAULT 1,canModifyTimeZone INTEGER DEFAULT 1, maxReminders INTEGER DEFAULT 5,deleted INTEGER NOT NULL DEFAULT 0,sync1 TEXT,sync2 TEXT,sync3 TEXT,sync4 TEXT,sync5 TEXT,sync6 TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 920
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarsCleanup200(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 921
    return-void
.end method

.method private createCalendarsTable300(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 853
    const-string v0, "CREATE TABLE Calendars (_id INTEGER PRIMARY KEY,account_name TEXT,account_type TEXT,_sync_id TEXT,_sync_version TEXT,_sync_time TEXT,dirty INTEGER,name TEXT,displayName TEXT,calendar_color INTEGER,access_level INTEGER,visible INTEGER NOT NULL DEFAULT 1,sync_events INTEGER NOT NULL DEFAULT 0,calendar_location TEXT,calendar_timezone TEXT,ownerAccount TEXT, canOrganizerRespond INTEGER NOT NULL DEFAULT 1,canModifyTimeZone INTEGER DEFAULT 1,maxReminders INTEGER DEFAULT 5,allowedReminders TEXT DEFAULT \'0,1,2\',deleted INTEGER NOT NULL DEFAULT 0,sync1 TEXT,sync2 TEXT,sync3 TEXT,sync4 TEXT,sync5 TEXT,sync6 TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 884
    const-string v0, "CREATE TRIGGER calendar_cleanup DELETE ON Calendars BEGIN DELETE FROM Events WHERE calendar_id=old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 888
    return-void
.end method

.method private createCalendarsTable303(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 710
    const-string v0, "CREATE TABLE Calendars (_id INTEGER PRIMARY KEY,account_name TEXT,account_type TEXT,_sync_id TEXT,_sync_version TEXT,_sync_time TEXT,dirty INTEGER,name TEXT,displayName TEXT,calendar_color INTEGER,access_level INTEGER,visible INTEGER NOT NULL DEFAULT 1,sync_events INTEGER NOT NULL DEFAULT 0,calendar_location TEXT,calendar_timezone TEXT,ownerAccount TEXT, canOrganizerRespond INTEGER NOT NULL DEFAULT 1,canModifyTimeZone INTEGER DEFAULT 1,maxReminders INTEGER DEFAULT 5,allowedReminders TEXT DEFAULT \'0,1\',deleted INTEGER NOT NULL DEFAULT 0,cal_sync1 TEXT,cal_sync2 TEXT,cal_sync3 TEXT,cal_sync4 TEXT,cal_sync5 TEXT,cal_sync6 TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 741
    const-string v0, "CREATE TRIGGER calendar_cleanup DELETE ON Calendars BEGIN DELETE FROM Events WHERE calendar_id=old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 745
    return-void
.end method

.method private createCalendarsTable305(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 812
    const-string v0, "CREATE TABLE Calendars (_id INTEGER PRIMARY KEY,account_name TEXT,account_type TEXT,_sync_id TEXT,dirty INTEGER,name TEXT,calendar_displayName TEXT,calendar_color INTEGER,calendar_access_level INTEGER,visible INTEGER NOT NULL DEFAULT 1,sync_events INTEGER NOT NULL DEFAULT 0,calendar_location TEXT,calendar_timezone TEXT,ownerAccount TEXT, canOrganizerRespond INTEGER NOT NULL DEFAULT 1,canModifyTimeZone INTEGER DEFAULT 1,canPartiallyUpdate INTEGER DEFAULT 0,maxReminders INTEGER DEFAULT 5,allowedReminders TEXT DEFAULT \'0,1\',deleted INTEGER NOT NULL DEFAULT 0,cal_sync1 TEXT,cal_sync2 TEXT,cal_sync3 TEXT,cal_sync4 TEXT,cal_sync5 TEXT,cal_sync6 TEXT,cal_sync7 TEXT,cal_sync8 TEXT,cal_sync9 TEXT,cal_sync10 TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 846
    const-string v0, "CREATE TRIGGER calendar_cleanup DELETE ON Calendars BEGIN DELETE FROM Events WHERE calendar_id=old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 850
    return-void
.end method

.method private createColorsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 749
    const-string v0, "CREATE TABLE Colors (_id INTEGER PRIMARY KEY,account_name TEXT NOT NULL,account_type TEXT NOT NULL,data TEXT,color_type INTEGER NOT NULL,color_index TEXT NOT NULL,color INTEGER NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 758
    return-void
.end method

.method private createEventsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 522
    const-string v0, "CREATE TABLE Events (_id INTEGER PRIMARY KEY AUTOINCREMENT,_sync_id TEXT,dirty INTEGER,mutators TEXT,lastSynced INTEGER DEFAULT 0,calendar_id INTEGER NOT NULL,title TEXT,eventLocation TEXT,description TEXT,eventColor INTEGER,eventColor_index TEXT,eventStatus INTEGER,selfAttendeeStatus INTEGER NOT NULL DEFAULT 0,dtstart INTEGER,dtend INTEGER,eventTimezone TEXT,duration TEXT,allDay INTEGER NOT NULL DEFAULT 0,accessLevel INTEGER NOT NULL DEFAULT 0,availability INTEGER NOT NULL DEFAULT 0,hasAlarm INTEGER NOT NULL DEFAULT 0,hasExtendedProperties INTEGER NOT NULL DEFAULT 0,rrule TEXT,rdate TEXT,exrule TEXT,exdate TEXT,original_id INTEGER,original_sync_id TEXT,originalInstanceTime INTEGER,originalAllDay INTEGER,lastDate INTEGER,hasAttendeeData INTEGER NOT NULL DEFAULT 0,guestsCanModify INTEGER NOT NULL DEFAULT 0,guestsCanInviteOthers INTEGER NOT NULL DEFAULT 1,guestsCanSeeGuests INTEGER NOT NULL DEFAULT 1,organizer STRING,isOrganizer INTEGER,deleted INTEGER NOT NULL DEFAULT 0,eventEndTimezone TEXT,customAppPackage TEXT,customAppUri TEXT,uid2445 TEXT,sync_data1 TEXT,sync_data2 TEXT,sync_data3 TEXT,sync_data4 TEXT,sync_data5 TEXT,sync_data6 TEXT,sync_data7 TEXT,sync_data8 TEXT,sync_data9 TEXT,sync_data10 TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 586
    const-string v0, "CREATE INDEX eventsCalendarIdIndex ON Events (calendar_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method private createEventsTable300(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 654
    const-string v0, "CREATE TABLE Events (_id INTEGER PRIMARY KEY,_sync_id TEXT,_sync_version TEXT,_sync_time TEXT,_sync_local_id INTEGER,dirty INTEGER,_sync_mark INTEGER,calendar_id INTEGER NOT NULL,htmlUri TEXT,title TEXT,eventLocation TEXT,description TEXT,eventStatus INTEGER,selfAttendeeStatus INTEGER NOT NULL DEFAULT 0,commentsUri TEXT,dtstart INTEGER,dtend INTEGER,eventTimezone TEXT,duration TEXT,allDay INTEGER NOT NULL DEFAULT 0,accessLevel INTEGER NOT NULL DEFAULT 0,availability INTEGER NOT NULL DEFAULT 0,hasAlarm INTEGER NOT NULL DEFAULT 0,hasExtendedProperties INTEGER NOT NULL DEFAULT 0,rrule TEXT,rdate TEXT,exrule TEXT,exdate TEXT,original_sync_id TEXT,originalInstanceTime INTEGER,originalAllDay INTEGER,lastDate INTEGER,hasAttendeeData INTEGER NOT NULL DEFAULT 0,guestsCanModify INTEGER NOT NULL DEFAULT 0,guestsCanInviteOthers INTEGER NOT NULL DEFAULT 1,guestsCanSeeGuests INTEGER NOT NULL DEFAULT 1,organizer STRING,deleted INTEGER NOT NULL DEFAULT 0,eventEndTimezone TEXT,sync_data1 TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 706
    const-string v0, "CREATE INDEX eventsCalendarIdIndex ON Events (calendar_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 707
    return-void
.end method

.method private createEventsTable307(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 591
    const-string v0, "CREATE TABLE Events (_id INTEGER PRIMARY KEY AUTOINCREMENT,_sync_id TEXT,dirty INTEGER,lastSynced INTEGER DEFAULT 0,calendar_id INTEGER NOT NULL,title TEXT,eventLocation TEXT,description TEXT,eventColor INTEGER,eventStatus INTEGER,selfAttendeeStatus INTEGER NOT NULL DEFAULT 0,dtstart INTEGER,dtend INTEGER,eventTimezone TEXT,duration TEXT,allDay INTEGER NOT NULL DEFAULT 0,accessLevel INTEGER NOT NULL DEFAULT 0,availability INTEGER NOT NULL DEFAULT 0,hasAlarm INTEGER NOT NULL DEFAULT 0,hasExtendedProperties INTEGER NOT NULL DEFAULT 0,rrule TEXT,rdate TEXT,exrule TEXT,exdate TEXT,original_id INTEGER,original_sync_id TEXT,originalInstanceTime INTEGER,originalAllDay INTEGER,lastDate INTEGER,hasAttendeeData INTEGER NOT NULL DEFAULT 0,guestsCanModify INTEGER NOT NULL DEFAULT 0,guestsCanInviteOthers INTEGER NOT NULL DEFAULT 1,guestsCanSeeGuests INTEGER NOT NULL DEFAULT 1,organizer STRING,deleted INTEGER NOT NULL DEFAULT 0,eventEndTimezone TEXT,sync_data1 TEXT,sync_data2 TEXT,sync_data3 TEXT,sync_data4 TEXT,sync_data5 TEXT,sync_data6 TEXT,sync_data7 TEXT,sync_data8 TEXT,sync_data9 TEXT,sync_data10 TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 649
    const-string v0, "CREATE INDEX eventsCalendarIdIndex ON Events (calendar_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 650
    return-void
.end method

.method private static createEventsView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3160
    const-string v1, "DROP VIEW IF EXISTS view_events;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3161
    const-string v0, "SELECT Events._id AS _id,title,description,eventLocation,eventColor,eventColor_index,eventStatus,selfAttendeeStatus,dtstart,dtend,duration,eventTimezone,eventEndTimezone,allDay,accessLevel,availability,hasAlarm,hasExtendedProperties,rrule,rdate,exrule,exdate,original_sync_id,original_id,originalInstanceTime,originalAllDay,lastDate,hasAttendeeData,calendar_id,guestsCanInviteOthers,guestsCanModify,guestsCanSeeGuests,organizer,COALESCE(isOrganizer, organizer = ownerAccount) AS isOrganizer,customAppPackage,customAppUri,uid2445,sync_data1,sync_data2,sync_data3,sync_data4,sync_data5,sync_data6,sync_data7,sync_data8,sync_data9,sync_data10,Events.deleted AS deleted,Events._sync_id AS _sync_id,Events.dirty AS dirty,Events.mutators AS mutators,lastSynced,Calendars.account_name AS account_name,Calendars.account_type AS account_type,calendar_timezone,calendar_displayName,calendar_location,visible,calendar_color,calendar_color_index,calendar_access_level,maxReminders,allowedReminders,allowedAttendeeTypes,allowedAvailability,canOrganizerRespond,canModifyTimeZone,canPartiallyUpdate,cal_sync1,cal_sync2,cal_sync3,cal_sync4,cal_sync5,cal_sync6,cal_sync7,cal_sync8,cal_sync9,cal_sync10,ownerAccount,sync_events,ifnull(eventColor,calendar_color) AS displayColor FROM Events JOIN Calendars ON (Events.calendar_id=Calendars._id)"

    .line 3258
    .local v0, "eventsSelect":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE VIEW view_events AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3259
    return-void
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3101
    const-string v0, "CalendarDatabaseHelper"

    const-string v1, "Clearing database"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "type"

    aput-object v0, v2, v4

    const-string v0, "name"

    aput-object v0, v2, v5

    .line 3106
    .local v2, "columns":[Ljava/lang/String;
    const-string v1, "sqlite_master"

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3107
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 3126
    :goto_0
    return-void

    .line 3111
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3112
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3113
    .local v10, "name":Ljava/lang/String;
    const-string v0, "sqlite_"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 3117
    .local v11, "sql":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p1, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3118
    :catch_0
    move-exception v9

    .line 3119
    .local v9, "e":Landroid/database/SQLException;
    :try_start_2
    const-string v0, "CalendarDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error executing "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 3124
    .end local v9    # "e":Landroid/database/SQLException;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z
    .locals 3
    .param p0, "time"    # Landroid/text/format/Time;
    .param p1, "timezone"    # Ljava/lang/String;
    .param p2, "timeInMillis"    # Ljava/lang/Long;

    .prologue
    const/4 v0, 0x0

    .line 1473
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1474
    iget v1, p0, Landroid/text/format/Time;->hour:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/text/format/Time;->minute:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/text/format/Time;->second:I

    if-eqz v1, :cond_1

    .line 1475
    :cond_0
    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 1476
    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 1477
    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 1478
    const/4 v0, 0x1

    .line 1480
    :cond_1
    return v0
.end method

.method private static getAllCalendarsUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x3

    .line 3301
    if-nez p0, :cond_1

    .line 3302
    const-string v1, "CalendarDatabaseHelper"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3303
    const-string v1, "CalendarDatabaseHelper"

    const-string v2, "Cannot get AllCalendars url from a NULL url"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3319
    :cond_0
    :goto_0
    return-object v0

    .line 3307
    :cond_1
    const-string v1, "/private/full"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3308
    const-string v0, "/private/full"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/calendar/feeds"

    const-string v2, "/calendar/feeds/default/allcalendars/full"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3311
    :cond_2
    const-string v1, "/private/free-busy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3312
    const-string v0, "/private/free-busy"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/calendar/feeds"

    const-string v2, "/calendar/feeds/default/allcalendars/full"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3316
    :cond_3
    const-string v1, "CalendarDatabaseHelper"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3317
    const-string v1, "CalendarDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot get AllCalendars url from the following url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getEditUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 3337
    invoke-static {p0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getAllCalendarsUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->rewriteUrlFromHttpToHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/providers/calendar/CalendarDatabaseHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 308
    const-class v1, Lcom/android/providers/calendar/CalendarDatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->sSingleton:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    if-nez v0, :cond_0

    .line 309
    new-instance v0, Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->sSingleton:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    .line 311
    :cond_0
    sget-object v0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->sSingleton:Lcom/android/providers/calendar/CalendarDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getSelfUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 3328
    invoke-static {p0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getAllCalendarsUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->rewriteUrlFromHttpToHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initCalendarCacheTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldTimezoneDbVersion"    # Ljava/lang/String;

    .prologue
    .line 1029
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 1033
    .local v0, "timezoneDbVersion":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT OR REPLACE INTO CalendarCache (_id, key, value) VALUES ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneDatabaseVersion"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneDatabaseVersion"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1041
    return-void

    .line 1029
    .end local v0    # "timezoneDbVersion":Ljava/lang/String;
    :cond_0
    const-string v0, "2009s"

    goto :goto_0
.end method

.method private initCalendarCacheTable203(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldTimezoneDbVersion"    # Ljava/lang/String;

    .prologue
    .line 1078
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 1082
    .local v0, "timezoneDbVersion":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT OR REPLACE INTO CalendarCache (_id, key, value) VALUES ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneDatabaseVersion"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'timezoneDatabaseVersion\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1090
    return-void

    .line 1078
    .end local v0    # "timezoneDbVersion":Ljava/lang/String;
    :cond_0
    const-string v0, "2009s"

    goto :goto_0
.end method

.method private recreateMetaDataAndInstances67(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1465
    const-string v0, "DROP TABLE CalendarMetaData;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1466
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarMetaDataTable59(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1469
    const-string v0, "DELETE FROM Instances;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1470
    return-void
.end method

.method static removeOrphans(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x0

    .line 1161
    const-string v1, "CalendarDatabaseHelper"

    const-string v2, "Checking for orphaned entries"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    const-string v1, "Attendees"

    const-string v2, "event_id IN (SELECT event_id FROM Attendees LEFT OUTER JOIN Events ON event_id=Events._id WHERE Events._id IS NULL)"

    invoke-virtual {p0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1165
    .local v0, "count":I
    if-eqz v0, :cond_0

    .line 1166
    const-string v1, "CalendarDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " orphaned Attendees"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    :cond_0
    const-string v1, "Reminders"

    const-string v2, "event_id IN (SELECT event_id FROM Reminders LEFT OUTER JOIN Events ON event_id=Events._id WHERE Events._id IS NULL)"

    invoke-virtual {p0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1170
    if-eqz v0, :cond_1

    .line 1171
    const-string v1, "CalendarDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " orphaned Reminders"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    :cond_1
    return-void
.end method

.method private static rewriteUrlFromHttpToHttps(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 3346
    if-nez p0, :cond_2

    .line 3347
    const-string v0, "CalendarDatabaseHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3348
    const-string v0, "CalendarDatabaseHelper"

    const-string v1, "Cannot rewrite a NULL url"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3350
    :cond_0
    const/4 p0, 0x0

    .line 3358
    .end local p0    # "url":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .line 3352
    .restart local p0    # "url":Ljava/lang/String;
    :cond_2
    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3355
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3356
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid url parameter, unknown scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3358
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private updateCalendarCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1045
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO CalendarCache (_id, key, value) VALUES ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneType"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1054
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 1057
    .local v0, "defaultTimezone":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO CalendarCache (_id, key, value) VALUES ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneInstances"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneInstances"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1067
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO CalendarCache (_id, key, value) VALUES ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneInstancesPrevious"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneInstancesPrevious"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1075
    return-void
.end method

.method private updateCalendarCacheTableTo203(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1094
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO CalendarCache (_id, key, value) VALUES ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneType"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'timezoneType\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'auto\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1101
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 1104
    .local v0, "defaultTimezone":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO CalendarCache (_id, key, value) VALUES ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneInstances"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'timezoneInstances\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO CalendarCache (_id, key, value) VALUES ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneInstancesPrevious"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'timezoneInstancesPrevious\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1118
    return-void
.end method

.method private upgradeResync(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2952
    const-string v5, "DELETE FROM _sync_state;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2955
    const-string v5, "SELECT _sync_account,_sync_account_type,url FROM Calendars"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 2958
    .local v4, "cursor":Landroid/database/Cursor;
    if-eqz v4, :cond_1

    .line 2960
    :goto_0
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2961
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2962
    .local v1, "accountName":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2963
    .local v2, "accountType":Ljava/lang/String;
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2964
    .local v0, "account":Landroid/accounts/Account;
    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2965
    .local v3, "calendarUrl":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5, v3}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->scheduleSync(Landroid/accounts/Account;ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2968
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "accountName":Ljava/lang/String;
    .end local v2    # "accountType":Ljava/lang/String;
    .end local v3    # "calendarUrl":Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2971
    :cond_1
    return-void
.end method

.method private upgradeSyncState(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 355
    const-string v2, "SELECT version FROM _sync_state_metadata"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 359
    .local v0, "version":J
    const-wide/16 v2, 0x3

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 360
    const-string v2, "CalendarDatabaseHelper"

    const-string v3, "Upgrading calendar sync state table"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v2, "CREATE TEMPORARY TABLE state_backup(_sync_account TEXT, _sync_account_type TEXT, data TEXT);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 363
    const-string v2, "INSERT INTO state_backup SELECT _sync_account, _sync_account_type, data FROM _sync_state WHERE _sync_account is not NULL and _sync_account_type is not NULL;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 367
    const-string v2, "DROP TABLE _sync_state;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 368
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-virtual {v2, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 369
    const-string v2, "INSERT INTO _sync_state(account_name,account_type,data) SELECT _sync_account, _sync_account_type, data from state_backup;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 374
    const-string v2, "DROP TABLE state_backup;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_0
    const-string v2, "CalendarDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upgradeSyncState: current version is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", skipping upgrade."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private upgradeToVersion200(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2420
    const-string v8, "ALTER TABLE Calendars RENAME TO Calendars_Backup;"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2422
    const-string v8, "DROP TRIGGER IF EXISTS calendar_cleanup"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2423
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarsTable200(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2426
    const-string v8, "INSERT INTO Calendars (_id, _sync_account, _sync_account_type, _sync_id, _sync_version, _sync_time, _sync_local_id, _sync_dirty, _sync_mark, name, displayName, color, access_level, selected, sync_events, location, timezone, ownerAccount, organizerCanRespond, deleted, sync1) SELECT _id, _sync_account, _sync_account_type, _sync_id, _sync_version, _sync_time, _sync_local_id, _sync_dirty, _sync_mark, name, displayName, color, access_level, selected, sync_events, location, timezone, ownerAccount, organizerCanRespond, 0, url FROM Calendars_Backup;"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2475
    const-string v4, "SELECT _id, url FROM Calendars_Backup WHERE _sync_account_type=\'com.google\' AND url IS NOT NULL;"

    .line 2480
    .local v4, "selectSql":Ljava/lang/String;
    const-string v6, "UPDATE Calendars SET sync2=?, sync3=? WHERE _id=?;"

    .line 2485
    .local v6, "updateSql":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {p1, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2486
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 2488
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_0

    .line 2489
    const/4 v8, 0x3

    new-array v0, v8, [Ljava/lang/Object;

    .line 2490
    .local v0, "bindArgs":[Ljava/lang/Object;
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2491
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2492
    .local v3, "id":Ljava/lang/Long;
    const/4 v8, 0x1

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2493
    .local v7, "url":Ljava/lang/String;
    invoke-static {v7}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSelfUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2494
    .local v5, "selfUrl":Ljava/lang/String;
    invoke-static {v7}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getEditUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2496
    .local v2, "editUrl":Ljava/lang/String;
    const/4 v8, 0x0

    aput-object v2, v0, v8

    .line 2497
    const/4 v8, 0x1

    aput-object v5, v0, v8

    .line 2498
    const/4 v8, 0x2

    aput-object v3, v0, v8

    .line 2500
    invoke-virtual {p1, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2504
    .end local v0    # "bindArgs":[Ljava/lang/Object;
    .end local v2    # "editUrl":Ljava/lang/String;
    .end local v3    # "id":Ljava/lang/Long;
    .end local v5    # "selfUrl":Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v8

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2509
    :cond_1
    const-string v8, "DROP TABLE Calendars_Backup;"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2510
    return-void
.end method

.method private upgradeToVersion201(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2414
    const-string v0, "ALTER TABLE Calendars ADD COLUMN sync4 TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2415
    return-void
.end method

.method private upgradeToVersion202(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2347
    const-string v0, "ALTER TABLE Calendars RENAME TO Calendars_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2349
    const-string v0, "DROP TRIGGER IF EXISTS calendar_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2350
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarsTable202(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2354
    const-string v0, "INSERT INTO Calendars (_id, _sync_account, _sync_account_type, _sync_id, _sync_version, _sync_time, _sync_local_id, _sync_dirty, _sync_mark, name, displayName, color, access_level, selected, sync_events, location, timezone, ownerAccount, organizerCanRespond, deleted, sync1, sync2, sync3, sync4,sync5) SELECT _id, _sync_account, _sync_account_type, _sync_id, _sync_version, _sync_time, _sync_local_id, _sync_dirty, _sync_mark, name, displayName, color, access_level, selected, sync_events, location, timezone, ownerAccount, organizerCanRespond, deleted, sync1, sync2, sync3, sync4, hidden FROM Calendars_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2410
    const-string v0, "DROP TABLE Calendars_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2411
    return-void
.end method

.method private upgradeToVersion203(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x0

    .line 2320
    const-string v2, "SELECT value FROM CalendarCache WHERE key=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "timezoneDatabaseVersion"

    aput-object v4, v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2323
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 2324
    .local v1, "oldTimezoneDbVersion":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2326
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2327
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2328
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2329
    const/4 v0, 0x0

    .line 2331
    const-string v2, "DELETE FROM CalendarCache;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2334
    :cond_0
    if-eqz v0, :cond_1

    .line 2335
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2339
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->initCalendarCacheTable203(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2342
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->updateCalendarCacheTableTo203(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2343
    return-void

    .line 2334
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 2335
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method private upgradeToVersion205(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2248
    const-string v0, "ALTER TABLE Calendars RENAME TO Calendars_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2249
    const-string v0, "DROP TRIGGER IF EXISTS calendar_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2250
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarsTable205(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2253
    const-string v0, "INSERT INTO Calendars (_id, _sync_account, _sync_account_type, _sync_id, _sync_version, _sync_time, _sync_dirty, name, displayName, color, access_level, visible, sync_events, location, timezone, ownerAccount, canOrganizerRespond, canModifyTimeZone, maxReminders, deleted, sync1, sync2, sync3, sync4,sync5,sync6) SELECT _id, _sync_account, _sync_account_type, _sync_id, _sync_version, _sync_time, _sync_dirty, name, displayName, color, access_level, selected, sync_events, location, timezone, ownerAccount, organizerCanRespond, 1, 5, deleted, sync1, sync2, sync3, sync4, sync5, _sync_mark FROM Calendars_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2311
    const-string v0, "UPDATE Calendars SET canModifyTimeZone=0, maxReminders=1 WHERE _sync_account_type=\'com.android.exchange\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2315
    const-string v0, "DROP TABLE Calendars_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2316
    return-void
.end method

.method private upgradeToVersion300(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2059
    const-string v0, "ALTER TABLE Calendars RENAME TO Calendars_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2060
    const-string v0, "DROP TRIGGER IF EXISTS calendar_cleanup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2061
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarsTable300(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2064
    const-string v0, "INSERT INTO Calendars (_id, account_name, account_type, _sync_id, _sync_version, _sync_time, dirty, name, displayName, calendar_color, access_level, visible, sync_events, calendar_location, calendar_timezone, ownerAccount, canOrganizerRespond, canModifyTimeZone, maxReminders, allowedReminders,deleted, sync1, sync2, sync3, sync4,sync5,sync6) SELECT _id, _sync_account, _sync_account_type, _sync_id, _sync_version, _sync_time, _sync_dirty, name, displayName, color, access_level, visible, sync_events, location, timezone, ownerAccount, canOrganizerRespond, canModifyTimeZone, maxReminders, \'0,1,2,3\',deleted, sync1, sync2, sync3, sync4, sync5, sync6 FROM Calendars_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2125
    const-string v0, "UPDATE Calendars SET allowedReminders = \'0,1,2\' WHERE account_type = \'com.google\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2129
    const-string v0, "DROP TABLE Calendars_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2131
    const-string v0, "ALTER TABLE Events RENAME TO Events_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2132
    const-string v0, "DROP TRIGGER IF EXISTS events_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2133
    const-string v0, "DROP TRIGGER IF EXISTS events_cleanup_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2134
    const-string v0, "DROP INDEX IF EXISTS eventSyncAccountAndIdIndex"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2135
    const-string v0, "DROP INDEX IF EXISTS eventsCalendarIdIndex"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2136
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createEventsTable300(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2139
    const-string v0, "INSERT INTO Events (_id, _sync_id, _sync_version, _sync_time, _sync_local_id, dirty, _sync_mark, calendar_id, htmlUri, title, eventLocation, description, eventStatus, selfAttendeeStatus, commentsUri, dtstart, dtend, eventTimezone, eventEndTimezone, duration, allDay, accessLevel, availability, hasAlarm, hasExtendedProperties, rrule, rdate, exrule, exdate, original_sync_id, originalInstanceTime, originalAllDay, lastDate, hasAttendeeData, guestsCanModify, guestsCanInviteOthers, guestsCanSeeGuests, organizer, deleted, sync_data1) SELECT _id, _sync_id, _sync_version, _sync_time, _sync_local_id, _sync_dirty, _sync_mark, calendar_id, htmlUri, title, eventLocation, description, eventStatus, selfAttendeeStatus, commentsUri, dtstart, dtend, eventTimezone, eventTimezone2, duration, allDay, visibility, transparency, hasAlarm, hasExtendedProperties, rrule, rdate, exrule, exdate, originalEvent, originalInstanceTime, originalAllDay, lastDate, hasAttendeeData, guestsCanModify, guestsCanInviteOthers, guestsCanSeeGuests, organizer, deleted, syncAdapterData FROM Events_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2226
    const-string v0, "DROP TABLE Events_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2229
    const-string v0, "CREATE TRIGGER events_cleanup_delete DELETE ON Events BEGIN DELETE FROM Instances WHERE event_id=old._id;DELETE FROM EventsRawTimes WHERE event_id=old._id;DELETE FROM Attendees WHERE event_id=old._id;DELETE FROM Reminders WHERE event_id=old._id;DELETE FROM CalendarAlerts WHERE event_id=old._id;DELETE FROM ExtendedProperties WHERE event_id=old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2234
    return-void
.end method

.method private upgradeToVersion301(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2024
    const-string v0, "DROP TRIGGER IF EXISTS original_sync_update;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2026
    const-string v0, "ALTER TABLE Events ADD COLUMN original_id INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2029
    const-string v0, "UPDATE Events set original_id=(SELECT Events2._id FROM Events AS Events2 WHERE Events2._sync_id=Events.original_sync_id) WHERE Events.original_sync_id NOT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2035
    const-string v0, "CREATE TRIGGER original_sync_update UPDATE OF _sync_id ON Events BEGIN UPDATE Events SET original_sync_id=new._sync_id WHERE original_id=old._id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2036
    return-void
.end method

.method private upgradeToVersion302(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2010
    const-string v0, "UPDATE Events SET sync_data1=eventEndTimezone WHERE calendar_id IN (SELECT _id FROM Calendars WHERE account_type=\'com.android.exchange\');"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2013
    const-string v0, "UPDATE Events SET eventEndTimezone=NULL WHERE calendar_id IN (SELECT _id FROM Calendars WHERE account_type=\'com.android.exchange\');"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2015
    return-void
.end method

.method private upgradeToVersion303(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1937
    const-string v0, "ALTER TABLE Calendars RENAME TO Calendars_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1938
    const-string v0, "DROP TRIGGER IF EXISTS calendar_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1939
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarsTable303(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1942
    const-string v0, "INSERT INTO Calendars (_id, account_name, account_type, _sync_id, _sync_version, _sync_time, dirty, name, displayName, calendar_color, access_level, visible, sync_events, calendar_location, calendar_timezone, ownerAccount, canOrganizerRespond, canModifyTimeZone, maxReminders, allowedReminders, deleted, cal_sync1, cal_sync2, cal_sync3, cal_sync4, cal_sync5, cal_sync6) SELECT _id, account_name, account_type, _sync_id, _sync_version, _sync_time, dirty, name, displayName, calendar_color, access_level, visible, sync_events, calendar_location, calendar_timezone, ownerAccount, canOrganizerRespond, canModifyTimeZone, maxReminders, allowedReminders,deleted, sync1, sync2, sync3, sync4,sync5,sync6 FROM Calendars_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2002
    const-string v0, "DROP TABLE Calendars_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2003
    return-void
.end method

.method private upgradeToVersion304(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1925
    const-string v0, "ALTER TABLE Calendars ADD COLUMN canPartiallyUpdate INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1926
    const-string v0, "ALTER TABLE Events ADD COLUMN sync_data7 TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1927
    const-string v0, "ALTER TABLE Events ADD COLUMN lastSynced INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1928
    return-void
.end method

.method private upgradeToVersion305(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1734
    const-string v0, "ALTER TABLE Calendars RENAME TO Calendars_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1735
    const-string v0, "DROP TRIGGER IF EXISTS calendar_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1736
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarsTable305(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1739
    const-string v0, "INSERT INTO Calendars (_id, account_name, account_type, _sync_id, cal_sync7, cal_sync8, dirty, name, calendar_displayName, calendar_color, calendar_access_level, visible, sync_events, calendar_location, calendar_timezone, ownerAccount, canOrganizerRespond, canModifyTimeZone, maxReminders, allowedReminders, deleted, canPartiallyUpdate,cal_sync1, cal_sync2, cal_sync3, cal_sync4, cal_sync5, cal_sync6) SELECT _id, account_name, account_type, _sync_id, _sync_version, _sync_time, dirty, name, displayName, calendar_color, access_level, visible, sync_events, calendar_location, calendar_timezone, ownerAccount, canOrganizerRespond, canModifyTimeZone, maxReminders, allowedReminders, deleted, canPartiallyUpdate,cal_sync1, cal_sync2, cal_sync3, cal_sync4, cal_sync5, cal_sync6 FROM Calendars_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1800
    const-string v0, "DROP TABLE Calendars_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1802
    const-string v0, "ALTER TABLE Events RENAME TO Events_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1803
    const-string v0, "DROP TRIGGER IF EXISTS events_cleanup_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1804
    const-string v0, "DROP INDEX IF EXISTS eventsCalendarIdIndex"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1809
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createEventsTable307(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1812
    const-string v0, "INSERT INTO Events (_id, _sync_id, sync_data4, sync_data5, sync_data2, dirty, sync_data8, calendar_id, sync_data3, title, eventLocation, description, eventStatus, selfAttendeeStatus, sync_data6, dtstart, dtend, eventTimezone, eventEndTimezone, duration, allDay, accessLevel, availability, hasAlarm, hasExtendedProperties, rrule, rdate, exrule, exdate, original_id,original_sync_id, originalInstanceTime, originalAllDay, lastDate, hasAttendeeData, guestsCanModify, guestsCanInviteOthers, guestsCanSeeGuests, organizer, deleted, sync_data7,lastSynced,sync_data1) SELECT _id, _sync_id, _sync_version, _sync_time, _sync_local_id, dirty, _sync_mark, calendar_id, htmlUri, title, eventLocation, description, eventStatus, selfAttendeeStatus, commentsUri, dtstart, dtend, eventTimezone, eventEndTimezone, duration, allDay, accessLevel, availability, hasAlarm, hasExtendedProperties, rrule, rdate, exrule, exdate, original_id,original_sync_id, originalInstanceTime, originalAllDay, lastDate, hasAttendeeData, guestsCanModify, guestsCanInviteOthers, guestsCanSeeGuests, organizer, deleted, sync_data7,lastSynced,sync_data1 FROM Events_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1905
    const-string v0, "DROP TABLE Events_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1908
    const-string v0, "CREATE TRIGGER events_cleanup_delete DELETE ON Events BEGIN DELETE FROM Instances WHERE event_id=old._id;DELETE FROM EventsRawTimes WHERE event_id=old._id;DELETE FROM Attendees WHERE event_id=old._id;DELETE FROM Reminders WHERE event_id=old._id;DELETE FROM CalendarAlerts WHERE event_id=old._id;DELETE FROM ExtendedProperties WHERE event_id=old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1915
    const-string v0, "CREATE TRIGGER original_sync_update UPDATE OF _sync_id ON Events BEGIN UPDATE Events SET original_sync_id=new._sync_id WHERE original_id=old._id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1916
    return-void
.end method

.method private upgradeToVersion306(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1698
    const-string v0, "DROP TRIGGER IF EXISTS original_sync_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1699
    const-string v0, "UPDATE Events SET _sync_id = REPLACE(_sync_id, \'/private/full/\', \'/events/\'), original_sync_id = REPLACE(original_sync_id, \'/private/full/\', \'/events/\') WHERE _id IN (SELECT Events._id FROM Events JOIN Calendars ON Events.calendar_id = Calendars._id WHERE account_type = \'com.google\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1706
    const-string v0, "CREATE TRIGGER original_sync_update UPDATE OF _sync_id ON Events BEGIN UPDATE Events SET original_sync_id=new._sync_id WHERE original_id=old._id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1708
    const-string v0, "UPDATE Calendars SET canPartiallyUpdate = 1 WHERE account_type = \'com.google\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1710
    const-string v0, "DELETE FROM _sync_state WHERE account_type = \'com.google\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1711
    return-void
.end method

.method private upgradeToVersion307(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1618
    const-string v1, "ALTER TABLE Events RENAME TO Events_Backup;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1619
    const-string v1, "DROP TRIGGER IF EXISTS events_cleanup_delete"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1620
    const-string v1, "DROP TRIGGER IF EXISTS original_sync_update"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1621
    const-string v1, "DROP INDEX IF EXISTS eventsCalendarIdIndex"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1622
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createEventsTable307(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1624
    const-string v0, "_id, _sync_id, dirty, lastSynced,calendar_id, title, eventLocation, description, eventColor, eventStatus, selfAttendeeStatus, dtstart, dtend, eventTimezone, duration, allDay, accessLevel, availability, hasAlarm, hasExtendedProperties, rrule, rdate, exrule, exdate, original_id,original_sync_id, originalInstanceTime, originalAllDay, lastDate, hasAttendeeData, guestsCanModify, guestsCanInviteOthers, guestsCanSeeGuests, organizer, deleted, eventEndTimezone, sync_data1,sync_data2,sync_data3,sync_data4,sync_data5,sync_data6,sync_data7,sync_data8,sync_data9,sync_data10 "

    .line 1673
    .local v0, "FIELD_LIST":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO Events ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FROM Events_Backup;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1676
    const-string v1, "DROP TABLE Events_Backup;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1679
    const-string v1, "CREATE TRIGGER events_cleanup_delete DELETE ON Events BEGIN DELETE FROM Instances WHERE event_id=old._id;DELETE FROM EventsRawTimes WHERE event_id=old._id;DELETE FROM Attendees WHERE event_id=old._id;DELETE FROM Reminders WHERE event_id=old._id;DELETE FROM CalendarAlerts WHERE event_id=old._id;DELETE FROM ExtendedProperties WHERE event_id=old._id;END"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1684
    const-string v1, "CREATE TRIGGER original_sync_update UPDATE OF _sync_id ON Events BEGIN UPDATE Events SET original_sync_id=new._sync_id WHERE original_id=old._id; END"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1685
    return-void
.end method

.method private upgradeToVersion308(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1596
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createColorsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1598
    const-string v0, "ALTER TABLE Calendars ADD COLUMN allowedAvailability TEXT DEFAULT \'0,1\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1599
    const-string v0, "ALTER TABLE Calendars ADD COLUMN allowedAttendeeTypes TEXT DEFAULT \'0,1,2\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1600
    const-string v0, "ALTER TABLE Calendars ADD COLUMN calendar_color_index TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1601
    const-string v0, "ALTER TABLE Events ADD COLUMN eventColor_index TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1605
    const-string v0, "UPDATE Calendars SET allowedAvailability=\'0,1,2\' WHERE _id IN (SELECT _id FROM Calendars WHERE account_type=\'com.android.exchange\');"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1610
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createColorsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1611
    return-void
.end method

.method private upgradeToVersion400(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1557
    const-string v0, "DROP TRIGGER IF EXISTS calendar_color_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1559
    const-string v0, "CREATE TRIGGER calendar_color_update UPDATE OF calendar_color_index ON Calendars WHEN new.calendar_color_index NOT NULL BEGIN UPDATE Calendars SET calendar_color=(SELECT color FROM Colors WHERE account_name=new.account_name AND account_type=new.account_type AND color_index=new.calendar_color_index AND color_type=0)  WHERE _id=old._id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1570
    const-string v0, "DROP TRIGGER IF EXISTS event_color_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1572
    const-string v0, "CREATE TRIGGER event_color_update UPDATE OF eventColor_index ON Events WHEN new.eventColor_index NOT NULL BEGIN UPDATE Events SET eventColor=(SELECT color FROM Colors WHERE account_name=(SELECT account_name FROM Calendars WHERE _id=new.calendar_id) AND account_type=(SELECT account_type FROM Calendars WHERE _id=new.calendar_id) AND color_index=new.eventColor_index AND color_type=1)  WHERE _id=old._id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1585
    return-void
.end method

.method private upgradeToVersion401(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1549
    const-string v0, "UPDATE events SET original_id=(SELECT _id FROM events inner_events WHERE inner_events._sync_id=events.original_sync_id AND inner_events.calendar_id=events.calendar_id) WHERE NOT original_id IS NULL AND (SELECT calendar_id FROM events ex_events WHERE ex_events._id=events.original_id) <> calendar_id "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1554
    return-void
.end method

.method private upgradeToVersion402(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1540
    const-string v0, "ALTER TABLE Attendees ADD COLUMN attendeeIdentity TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1541
    const-string v0, "ALTER TABLE Attendees ADD COLUMN attendeeIdNamespace TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1542
    return-void
.end method

.method private upgradeToVersion403(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1531
    const-string v0, "ALTER TABLE Events ADD COLUMN customAppPackage TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1532
    const-string v0, "ALTER TABLE Events ADD COLUMN customAppUri TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1533
    return-void
.end method

.method private upgradeToVersion501(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1510
    const-string v0, "ALTER TABLE Events ADD COLUMN isOrganizer INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1511
    const-string v0, "ALTER TABLE Calendars ADD COLUMN isPrimary INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1512
    return-void
.end method

.method private upgradeToVersion502(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1519
    const-string v0, "ALTER TABLE Events ADD COLUMN uid2445 TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1520
    return-void
.end method

.method private upgradeToVersion51(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3079
    const-string v0, "CalendarDatabaseHelper"

    const-string v1, "Upgrading DeletedEvents table"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    const-string v0, "ALTER TABLE DeletedEvents ADD COLUMN calendar_id INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3090
    const-string v0, "DROP TRIGGER IF EXISTS calendar_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3091
    const-string v0, "CREATE TRIGGER calendar_cleanup DELETE ON Calendars BEGIN DELETE FROM Events WHERE calendar_id=old._id;DELETE FROM DeletedEvents WHERE calendar_id = old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3097
    const-string v0, "DROP TRIGGER IF EXISTS event_to_deleted"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3098
    return-void
.end method

.method private upgradeToVersion52(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3019
    const-string v6, "ALTER TABLE Events ADD COLUMN originalAllDay INTEGER;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3038
    const-string v6, "SELECT _id,originalEvent FROM Events WHERE originalEvent IS NOT NULL"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3043
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_3

    .line 3045
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3046
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3047
    .local v2, "id":J
    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3050
    .local v4, "originalEvent":Ljava/lang/String;
    const-string v6, "SELECT allDay FROM Events WHERE _sync_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 3054
    .local v5, "recur":Landroid/database/Cursor;
    if-eqz v5, :cond_0

    .line 3062
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3063
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 3064
    .local v0, "allDay":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE Events SET originalAllDay="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE _id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3069
    .end local v0    # "allDay":I
    :cond_1
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3073
    .end local v2    # "id":J
    .end local v4    # "originalEvent":Ljava/lang/String;
    .end local v5    # "recur":Landroid/database/Cursor;
    :catchall_0
    move-exception v6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v6

    .line 3069
    .restart local v2    # "id":J
    .restart local v4    # "originalEvent":Ljava/lang/String;
    .restart local v5    # "recur":Landroid/database/Cursor;
    :catchall_1
    move-exception v6

    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3073
    .end local v2    # "id":J
    .end local v4    # "originalEvent":Ljava/lang/String;
    .end local v5    # "recur":Landroid/database/Cursor;
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3076
    :cond_3
    return-void
.end method

.method private upgradeToVersion53(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3003
    const-string v0, "CalendarDatabaseHelper"

    const-string v1, "Upgrading CalendarAlerts table"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    const-string v0, "ALTER TABLE CalendarAlerts ADD COLUMN creationTime INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3006
    const-string v0, "ALTER TABLE CalendarAlerts ADD COLUMN receivedTime INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3008
    const-string v0, "ALTER TABLE CalendarAlerts ADD COLUMN notifyTime INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3010
    return-void
.end method

.method private upgradeToVersion54(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2997
    const-string v0, "CalendarDatabaseHelper"

    const-string v1, "adding eventSyncAccountAndIdIndex"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    const-string v0, "CREATE INDEX eventSyncAccountAndIdIndex ON Events (_sync_account, _sync_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3000
    return-void
.end method

.method private upgradeToVersion55(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2974
    const-string v0, "ALTER TABLE Calendars ADD COLUMN _sync_account_type TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2976
    const-string v0, "ALTER TABLE Events ADD COLUMN _sync_account_type TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2978
    const-string v0, "ALTER TABLE DeletedEvents ADD COLUMN _sync_account_type TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2979
    const-string v0, "UPDATE Calendars SET _sync_account_type=\'com.google\' WHERE _sync_account IS NOT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2982
    const-string v0, "UPDATE Events SET _sync_account_type=\'com.google\' WHERE _sync_account IS NOT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2985
    const-string v0, "UPDATE DeletedEvents SET _sync_account_type=\'com.google\' WHERE _sync_account IS NOT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2988
    const-string v0, "CalendarDatabaseHelper"

    const-string v1, "re-creating eventSyncAccountAndIdIndex"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2989
    const-string v0, "DROP INDEX eventSyncAccountAndIdIndex"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2990
    const-string v0, "CREATE INDEX eventSyncAccountAndIdIndex ON Events (_sync_account_type, _sync_account, _sync_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2994
    return-void
.end method

.method private upgradeToVersion56(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2905
    const-string v5, "ALTER TABLE Calendars ADD COLUMN ownerAccount TEXT;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2907
    const-string v5, "ALTER TABLE Events ADD COLUMN hasAttendeeData INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2914
    const-string v5, "UPDATE Events SET _sync_dirty=0, _sync_version=NULL, _sync_id=REPLACE(_sync_id, \'/private/full-selfattendance\', \'/private/full\'),commentsUri=REPLACE(commentsUri, \'/private/full-selfattendance\', \'/private/full\');"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2924
    const-string v5, "UPDATE Calendars SET url=REPLACE(url, \'/private/full-selfattendance\', \'/private/full\');"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2929
    const-string v5, "SELECT _id, url FROM Calendars"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2933
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 2935
    :try_start_0
    const-string v3, "UPDATE Calendars SET ownerAccount=? WHERE _id=?"

    .line 2938
    .local v3, "updateSql":Ljava/lang/String;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2939
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 2940
    .local v1, "id":Ljava/lang/Long;
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2941
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->calendarEmailAddressFromFeedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2942
    .local v2, "owner":Ljava/lang/String;
    const-string v5, "UPDATE Calendars SET ownerAccount=? WHERE _id=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2945
    .end local v1    # "id":Ljava/lang/Long;
    .end local v2    # "owner":Ljava/lang/String;
    .end local v3    # "updateSql":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v5

    .restart local v3    # "updateSql":Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2948
    .end local v3    # "updateSql":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private upgradeToVersion57(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2882
    const-string v0, "ALTER TABLE Events ADD COLUMN guestsCanModify INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2885
    const-string v0, "ALTER TABLE Events ADD COLUMN guestsCanInviteOthers INTEGER NOT NULL DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2888
    const-string v0, "ALTER TABLE Events ADD COLUMN guestsCanSeeGuests INTEGER NOT NULL DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2891
    const-string v0, "ALTER TABLE Events ADD COLUMN organizer STRING;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2894
    const-string v0, "UPDATE Events SET organizer=(SELECT attendeeEmail FROM Attendees WHERE Attendees.event_id=Events._id AND Attendees.attendeeRelationship=2);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2902
    return-void
.end method

.method private upgradeToVersion59(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2855
    const-string v0, "DROP TABLE IF EXISTS BusyBits;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2856
    const-string v0, "CREATE TEMPORARY TABLE CalendarMetaData_Backup(_id,localTimezone,minInstance,maxInstance);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2862
    const-string v0, "INSERT INTO CalendarMetaData_Backup SELECT _id,localTimezone,minInstance,maxInstance FROM CalendarMetaData;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2869
    const-string v0, "DROP TABLE CalendarMetaData;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2870
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarMetaDataTable59(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2871
    const-string v0, "INSERT INTO CalendarMetaData SELECT _id,localTimezone,minInstance,maxInstance FROM CalendarMetaData_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2878
    const-string v0, "DROP TABLE CalendarMetaData_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2879
    return-void
.end method

.method private upgradeToVersion60(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2803
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeSyncState(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2804
    const-string v0, "DROP TRIGGER IF EXISTS calendar_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2805
    const-string v0, "CREATE TRIGGER calendar_cleanup DELETE ON Calendars BEGIN DELETE FROM Events WHERE calendar_id=old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2810
    const-string v0, "ALTER TABLE Events ADD COLUMN deleted INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2812
    const-string v0, "DROP TRIGGER IF EXISTS events_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2814
    const-string v0, "CREATE TRIGGER events_insert AFTER INSERT ON Events BEGIN UPDATE Events SET _sync_account= (SELECT _sync_account FROM Calendars WHERE Calendars._id=new.calendar_id),_sync_account_type= (SELECT _sync_account_type FROM Calendars WHERE Calendars._id=new.calendar_id) WHERE Events._id=new._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2825
    const-string v0, "DROP TABLE IF EXISTS DeletedEvents;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2826
    const-string v0, "DROP TRIGGER IF EXISTS events_cleanup_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2828
    const-string v0, "CREATE TRIGGER events_cleanup_delete DELETE ON Events BEGIN DELETE FROM Instances WHERE event_id=old._id;DELETE FROM EventsRawTimes WHERE event_id=old._id;DELETE FROM Attendees WHERE event_id=old._id;DELETE FROM Reminders WHERE event_id=old._id;DELETE FROM CalendarAlerts WHERE event_id=old._id;DELETE FROM ExtendedProperties WHERE event_id=old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2843
    const-string v0, "DROP TRIGGER IF EXISTS attendees_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2844
    const-string v0, "DROP TRIGGER IF EXISTS attendees_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2845
    const-string v0, "DROP TRIGGER IF EXISTS attendees_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2846
    const-string v0, "DROP TRIGGER IF EXISTS reminders_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2847
    const-string v0, "DROP TRIGGER IF EXISTS reminders_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2848
    const-string v0, "DROP TRIGGER IF EXISTS reminders_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2849
    const-string v0, "DROP TRIGGER IF EXISTS extended_properties_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2850
    const-string v0, "DROP TRIGGER IF EXISTS extended_properties_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2851
    const-string v0, "DROP TRIGGER IF EXISTS extended_properties_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2852
    return-void
.end method

.method private upgradeToVersion600(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1496
    const-string v0, "ALTER TABLE Events ADD COLUMN mutators TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1497
    const-string v0, "ALTER TABLE Calendars ADD COLUMN mutators TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1498
    return-void
.end method

.method private upgradeToVersion61(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2784
    const-string v0, "DROP TABLE IF EXISTS CalendarCache;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2787
    const-string v0, "CREATE TABLE IF NOT EXISTS CalendarCache (_id INTEGER PRIMARY KEY,key TEXT NOT NULL,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2793
    const-string v0, "INSERT INTO CalendarCache (key, value) VALUES (\'timezoneDatabaseVersion\',\'2009s\');"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2799
    return-void
.end method

.method private upgradeToVersion62(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 17
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2704
    const-string v14, "ALTER TABLE Events ADD COLUMN dtstart2 INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2706
    const-string v14, "ALTER TABLE Events ADD COLUMN dtend2 INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2708
    const-string v14, "ALTER TABLE Events ADD COLUMN eventTimezone2 TEXT;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2711
    const/4 v14, 0x1

    new-array v1, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "0"

    aput-object v15, v1, v14

    .line 2713
    .local v1, "allDayBit":[Ljava/lang/String;
    const-string v14, "UPDATE Events SET dtstart2=dtstart,dtend2=dtend,eventTimezone2=eventTimezone WHERE allDay=?;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2721
    const/4 v14, 0x0

    const-string v15, "1"

    aput-object v15, v1, v14

    .line 2722
    const-string v14, "SELECT Events._id,dtstart,dtend,eventTimezone,timezone FROM Events INNER JOIN Calendars WHERE Events.calendar_id=Calendars._id AND allDay=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2732
    .local v2, "cursor":Landroid/database/Cursor;
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 2733
    .local v12, "oldTime":Landroid/text/format/Time;
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    .line 2735
    .local v11, "newTime":Landroid/text/format/Time;
    if-eqz v2, :cond_2

    .line 2737
    const/4 v14, 0x4

    :try_start_0
    new-array v10, v14, [Ljava/lang/String;

    .line 2738
    .local v10, "newData":[Ljava/lang/String;
    const/4 v14, -0x1

    invoke-interface {v2, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2739
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 2740
    const/4 v14, 0x0

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 2741
    .local v8, "id":J
    const/4 v14, 0x1

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 2742
    .local v5, "dtstart":J
    const/4 v14, 0x2

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2743
    .local v3, "dtend":J
    const/4 v14, 0x3

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2744
    .local v7, "eTz":Ljava/lang/String;
    const/4 v14, 0x4

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2746
    .local v13, "tz":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 2747
    const-string v7, "UTC"

    .line 2751
    :cond_0
    invoke-virtual {v12, v7}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 2752
    invoke-virtual {v12, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 2753
    invoke-virtual {v11, v13}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 2754
    iget v14, v12, Landroid/text/format/Time;->monthDay:I

    iget v15, v12, Landroid/text/format/Time;->month:I

    iget v0, v12, Landroid/text/format/Time;->year:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v14, v15, v0}, Landroid/text/format/Time;->set(III)V

    .line 2755
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/text/format/Time;->normalize(Z)J

    .line 2756
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 2759
    invoke-virtual {v12, v7}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 2760
    invoke-virtual {v12, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 2761
    invoke-virtual {v11, v13}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 2762
    iget v14, v12, Landroid/text/format/Time;->monthDay:I

    iget v15, v12, Landroid/text/format/Time;->month:I

    iget v0, v12, Landroid/text/format/Time;->year:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v14, v15, v0}, Landroid/text/format/Time;->set(III)V

    .line 2763
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/text/format/Time;->normalize(Z)J

    .line 2764
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 2766
    const/4 v14, 0x0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v10, v14

    .line 2767
    const/4 v14, 0x1

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v10, v14

    .line 2768
    const/4 v14, 0x2

    aput-object v13, v10, v14

    .line 2769
    const/4 v14, 0x3

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v10, v14

    .line 2770
    const-string v14, "UPDATE Events SET dtstart2=?, dtend2=?, eventTimezone2=? WHERE _id=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2778
    .end local v3    # "dtend":J
    .end local v5    # "dtstart":J
    .end local v7    # "eTz":Ljava/lang/String;
    .end local v8    # "id":J
    .end local v10    # "newData":[Ljava/lang/String;
    .end local v13    # "tz":Ljava/lang/String;
    :catchall_0
    move-exception v14

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v14

    .restart local v10    # "newData":[Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2781
    .end local v10    # "newData":[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private upgradeToVersion64(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2698
    const-string v0, "ALTER TABLE Events ADD COLUMN syncAdapterData TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2700
    return-void
.end method

.method private upgradeToVersion66(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2692
    const-string v0, "ALTER TABLE Calendars ADD COLUMN organizerCanRespond INTEGER NOT NULL DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2694
    return-void
.end method

.method public static upgradeToVersion69(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 24
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2520
    const-string v14, "SELECT _id, dtstart, dtend, duration, dtstart2, dtend2, eventTimezone, eventTimezone2, rrule FROM Events WHERE allDay=?"

    .line 2531
    .local v14, "sql":Ljava/lang/String;
    const-string v20, "SELECT _id, dtstart, dtend, duration, dtstart2, dtend2, eventTimezone, eventTimezone2, rrule FROM Events WHERE allDay=?"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "1"

    aput-object v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2532
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_d

    .line 2541
    :try_start_0
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .line 2544
    .local v15, "time":Landroid/text/format/Time;
    const-string v19, "UTC"

    .line 2545
    .local v19, "utc":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 2546
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2547
    .local v12, "rrule":Ljava/lang/String;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 2548
    .local v10, "id":Ljava/lang/Long;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 2549
    .local v7, "dtstart":Ljava/lang/Long;
    const/4 v8, 0x0

    .line 2550
    .local v8, "dtstart2":Ljava/lang/Long;
    const/16 v20, 0x6

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 2551
    .local v16, "timezone":Ljava/lang/String;
    const/16 v20, 0x7

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2552
    .local v17, "timezone2":Ljava/lang/String;
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2554
    .local v9, "duration":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 2557
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2558
    .local v5, "dtend":Ljava/lang/Long;
    const/4 v6, 0x0

    .line 2561
    .local v6, "dtend2":Ljava/lang/Long;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 2562
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 2563
    const/16 v20, 0x5

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 2566
    :cond_1
    const/16 v18, 0x0

    .line 2567
    .local v18, "update":Z
    const-string v20, "UTC"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 2568
    const/16 v18, 0x1

    .line 2569
    const-string v16, "UTC"

    .line 2572
    :cond_2
    invoke-virtual/range {v15 .. v16}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 2573
    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v20

    or-int v18, v18, v20

    .line 2574
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 2576
    invoke-virtual/range {v15 .. v16}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 2577
    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v20

    or-int v18, v18, v20

    .line 2578
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2580
    if-eqz v8, :cond_3

    .line 2581
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 2582
    move-object/from16 v0, v17

    invoke-static {v15, v0, v8}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v20

    or-int v18, v18, v20

    .line 2583
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 2586
    :cond_3
    if-eqz v6, :cond_4

    .line 2587
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 2588
    move-object/from16 v0, v17

    invoke-static {v15, v0, v6}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v20

    or-int v18, v18, v20

    .line 2589
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 2592
    :cond_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 2593
    const/16 v18, 0x1

    .line 2596
    :cond_5
    if-eqz v18, :cond_0

    .line 2598
    const-string v20, "UPDATE Events SET dtstart=?, dtend=?, dtstart2=?, dtend2=?, duration=?, eventTimezone=?, eventTimezone2=? WHERE _id=?"

    const/16 v21, 0x8

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v7, v21, v22

    const/16 v22, 0x1

    aput-object v5, v21, v22

    const/16 v22, 0x2

    aput-object v8, v21, v22

    const/16 v22, 0x3

    aput-object v6, v21, v22

    const/16 v22, 0x4

    const/16 v23, 0x0

    aput-object v23, v21, v22

    const/16 v22, 0x5

    aput-object v16, v21, v22

    const/16 v22, 0x6

    aput-object v17, v21, v22

    const/16 v22, 0x7

    aput-object v10, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 2684
    .end local v5    # "dtend":Ljava/lang/Long;
    .end local v6    # "dtend2":Ljava/lang/Long;
    .end local v7    # "dtstart":Ljava/lang/Long;
    .end local v8    # "dtstart2":Ljava/lang/Long;
    .end local v9    # "duration":Ljava/lang/String;
    .end local v10    # "id":Ljava/lang/Long;
    .end local v12    # "rrule":Ljava/lang/String;
    .end local v15    # "time":Landroid/text/format/Time;
    .end local v16    # "timezone":Ljava/lang/String;
    .end local v17    # "timezone2":Ljava/lang/String;
    .end local v18    # "update":Z
    .end local v19    # "utc":Ljava/lang/String;
    :catchall_0
    move-exception v20

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v20

    .line 2623
    .restart local v7    # "dtstart":Ljava/lang/Long;
    .restart local v8    # "dtstart2":Ljava/lang/Long;
    .restart local v9    # "duration":Ljava/lang/String;
    .restart local v10    # "id":Ljava/lang/Long;
    .restart local v12    # "rrule":Ljava/lang/String;
    .restart local v15    # "time":Landroid/text/format/Time;
    .restart local v16    # "timezone":Ljava/lang/String;
    .restart local v17    # "timezone2":Ljava/lang/String;
    .restart local v19    # "utc":Ljava/lang/String;
    :cond_6
    :try_start_1
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 2624
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 2627
    :cond_7
    const/16 v18, 0x0

    .line 2628
    .restart local v18    # "update":Z
    const-string v20, "UTC"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 2629
    const/16 v18, 0x1

    .line 2630
    const-string v16, "UTC"

    .line 2633
    :cond_8
    invoke-virtual/range {v15 .. v16}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 2634
    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v20

    or-int v18, v18, v20

    .line 2635
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 2637
    if-eqz v8, :cond_9

    .line 2638
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 2639
    move-object/from16 v0, v17

    invoke-static {v15, v0, v8}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v20

    or-int v18, v18, v20

    .line 2640
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 2643
    :cond_9
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 2645
    const-string v9, "P1D"

    .line 2646
    const/16 v18, 0x1

    .line 2659
    :cond_a
    :goto_1
    if-eqz v18, :cond_0

    .line 2661
    const-string v20, "UPDATE Events SET dtstart=?, dtend=?, dtstart2=?, dtend2=?, duration=?,eventTimezone=?, eventTimezone2=? WHERE _id=?"

    const/16 v21, 0x8

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v7, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x0

    aput-object v23, v21, v22

    const/16 v22, 0x2

    aput-object v8, v21, v22

    const/16 v22, 0x3

    const/16 v23, 0x0

    aput-object v23, v21, v22

    const/16 v22, 0x4

    aput-object v9, v21, v22

    const/16 v22, 0x5

    aput-object v16, v21, v22

    const/16 v22, 0x6

    aput-object v17, v21, v22

    const/16 v22, 0x7

    aput-object v10, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2648
    :cond_b
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    .line 2650
    .local v11, "len":I
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x50

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    add-int/lit8 v20, v11, -0x1

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x53

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 2652
    const/16 v20, 0x1

    add-int/lit8 v21, v11, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 2653
    .local v13, "seconds":I
    const v20, 0x15180

    add-int v20, v20, v13

    add-int/lit8 v20, v20, -0x1

    const v21, 0x15180

    div-int v4, v20, v21

    .line 2654
    .local v4, "days":I
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "P"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "D"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 2655
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 2684
    .end local v4    # "days":I
    .end local v7    # "dtstart":Ljava/lang/Long;
    .end local v8    # "dtstart2":Ljava/lang/Long;
    .end local v9    # "duration":Ljava/lang/String;
    .end local v10    # "id":Ljava/lang/Long;
    .end local v11    # "len":I
    .end local v12    # "rrule":Ljava/lang/String;
    .end local v13    # "seconds":I
    .end local v16    # "timezone":Ljava/lang/String;
    .end local v17    # "timezone2":Ljava/lang/String;
    .end local v18    # "update":Z
    :cond_c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2687
    .end local v15    # "time":Landroid/text/format/Time;
    .end local v19    # "utc":Ljava/lang/String;
    :cond_d
    return-void
.end method


# virtual methods
.method public attendeesInsert(Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mAttendeesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public calendarAlertsInsert(Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mCalendarAlertsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public calendarsInsert(Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mCalendarsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public colorsInsert(Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mColorsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public createColorsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 761
    const-string v0, "CREATE TRIGGER event_color_update UPDATE OF eventColor_index ON Events WHEN new.eventColor_index NOT NULL BEGIN UPDATE Events SET eventColor=(SELECT color FROM Colors WHERE account_name=(SELECT account_name FROM Calendars WHERE _id=new.calendar_id) AND account_type=(SELECT account_type FROM Calendars WHERE _id=new.calendar_id) AND color_index=new.eventColor_index AND color_type=1)  WHERE _id=old._id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 762
    const-string v0, "CREATE TRIGGER calendar_color_update UPDATE OF calendar_color_index ON Calendars WHEN new.calendar_color_index NOT NULL BEGIN UPDATE Calendars SET calendar_color=(SELECT color FROM Colors WHERE account_name=new.account_name AND account_type=new.account_type AND color_index=new.calendar_color_index AND color_type=0)  WHERE _id=old._id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 763
    return-void
.end method

.method protected duplicateEvent(J)V
    .locals 10
    .param p1, "id"    # J

    .prologue
    .line 3370
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 3372
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v6, "SELECT canPartiallyUpdate FROM view_events WHERE _id = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v2, v6, v7}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 3377
    .local v0, "canPartiallyUpdate":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_1

    .line 3410
    .end local v0    # "canPartiallyUpdate":J
    :cond_0
    :goto_0
    return-void

    .line 3380
    :catch_0
    move-exception v3

    .line 3386
    .local v3, "e":Landroid/database/sqlite/SQLiteDoneException;
    goto :goto_0

    .line 3389
    .end local v3    # "e":Landroid/database/sqlite/SQLiteDoneException;
    .restart local v0    # "canPartiallyUpdate":J
    :cond_1
    const-string v6, "INSERT INTO Events  (_sync_id,calendar_id,title,eventLocation,description,eventColor,eventColor_index,eventStatus,selfAttendeeStatus,dtstart,dtend,eventTimezone,eventEndTimezone,duration,allDay,accessLevel,availability,hasAlarm,hasExtendedProperties,rrule,rdate,exrule,exdate,original_sync_id,original_id,originalInstanceTime,originalAllDay,lastDate,hasAttendeeData,guestsCanModify,guestsCanInviteOthers,guestsCanSeeGuests,organizer,isOrganizer,customAppPackage,customAppUri,uid2445,dirty,lastSynced) SELECT _sync_id,calendar_id,title,eventLocation,description,eventColor,eventColor_index,eventStatus,selfAttendeeStatus,dtstart,dtend,eventTimezone,eventEndTimezone,duration,allDay,accessLevel,availability,hasAlarm,hasExtendedProperties,rrule,rdate,exrule,exdate,original_sync_id,original_id,originalInstanceTime,originalAllDay,lastDate,hasAttendeeData,guestsCanModify,guestsCanInviteOthers,guestsCanSeeGuests,organizer,isOrganizer,customAppPackage,customAppUri,uid2445, 0, 1 FROM Events WHERE _id = ? AND dirty = ?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3399
    const-string v6, "SELECT CASE changes() WHEN 0 THEN -1 ELSE last_insert_rowid() END"

    const/4 v7, 0x0

    invoke-static {v2, v6, v7}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    .line 3401
    .local v4, "newId":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    .line 3405
    const-string v6, "CalendarDatabaseHelper"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3406
    const-string v6, "CalendarDatabaseHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Duplicating event "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " into new event "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3409
    :cond_2
    invoke-static {v2, v4, v5, p1, p2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->copyEventRelatedTables(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    goto :goto_0
.end method

.method public eventsInsert(Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mEventsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public eventsRawTimesReplace(Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mEventsRawTimesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->replace(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public extendedPropertiesInsert(Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mExtendedPropertiesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;
    .locals 1

    .prologue
    .line 3135
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    return-object v0
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 3130
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3131
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    monitor-exit p0

    return-object v0

    .line 3130
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public instancesInsert(Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mInstancesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public instancesReplace(Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mInstancesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->replace(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 385
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 386
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 1453
    const-string v0, "CalendarDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t downgrade DB from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1455
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1456
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 329
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "Calendars"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mCalendarsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 330
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "Colors"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mColorsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 331
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "Events"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mEventsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 332
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "EventsRawTimes"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mEventsRawTimesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 333
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "Instances"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mInstancesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 334
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "Attendees"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mAttendeesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 335
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "Reminders"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mRemindersInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 336
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "CalendarAlerts"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mCalendarAlertsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 337
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "ExtendedProperties"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mExtendedPropertiesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 339
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 15
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 1178
    const-string v9, "CalendarDatabaseHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Upgrading DB from version "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 1181
    .local v7, "startWhen":J
    const/16 v9, 0x31

    move/from16 v0, p2

    if-ge v0, v9, :cond_0

    .line 1182
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1183
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1449
    :goto_0
    return-void

    .line 1193
    :cond_0
    const/16 v9, 0x3b

    move/from16 v0, p2

    if-lt v0, v9, :cond_35

    const/16 v9, 0x42

    move/from16 v0, p2

    if-gt v0, v9, :cond_35

    const/4 v6, 0x1

    .line 1194
    .local v6, "recreateMetaDataAndInstances":Z
    :goto_1
    const/4 v1, 0x0

    .line 1197
    .local v1, "createEventsView":Z
    const/16 v9, 0x33

    move/from16 v0, p2

    if-ge v0, v9, :cond_1

    .line 1198
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion51(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1199
    const/16 p2, 0x33

    .line 1201
    :cond_1
    const/16 v9, 0x33

    move/from16 v0, p2

    if-ne v0, v9, :cond_2

    .line 1202
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion52(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1203
    add-int/lit8 p2, p2, 0x1

    .line 1205
    :cond_2
    const/16 v9, 0x34

    move/from16 v0, p2

    if-ne v0, v9, :cond_3

    .line 1206
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion53(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1207
    add-int/lit8 p2, p2, 0x1

    .line 1209
    :cond_3
    const/16 v9, 0x35

    move/from16 v0, p2

    if-ne v0, v9, :cond_4

    .line 1210
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion54(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1211
    add-int/lit8 p2, p2, 0x1

    .line 1213
    :cond_4
    const/16 v9, 0x36

    move/from16 v0, p2

    if-ne v0, v9, :cond_5

    .line 1214
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion55(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1215
    add-int/lit8 p2, p2, 0x1

    .line 1217
    :cond_5
    const/16 v9, 0x37

    move/from16 v0, p2

    if-eq v0, v9, :cond_6

    const/16 v9, 0x38

    move/from16 v0, p2

    if-ne v0, v9, :cond_7

    .line 1219
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeResync(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1221
    :cond_7
    const/16 v9, 0x37

    move/from16 v0, p2

    if-ne v0, v9, :cond_8

    .line 1222
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion56(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1223
    add-int/lit8 p2, p2, 0x1

    .line 1225
    :cond_8
    const/16 v9, 0x38

    move/from16 v0, p2

    if-ne v0, v9, :cond_9

    .line 1226
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion57(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1227
    add-int/lit8 p2, p2, 0x1

    .line 1229
    :cond_9
    const/16 v9, 0x39

    move/from16 v0, p2

    if-ne v0, v9, :cond_a

    .line 1231
    add-int/lit8 p2, p2, 0x1

    .line 1233
    :cond_a
    const/16 v9, 0x3a

    move/from16 v0, p2

    if-ne v0, v9, :cond_b

    .line 1234
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion59(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1235
    add-int/lit8 p2, p2, 0x1

    .line 1237
    :cond_b
    const/16 v9, 0x3b

    move/from16 v0, p2

    if-ne v0, v9, :cond_c

    .line 1238
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion60(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1239
    const/4 v1, 0x1

    .line 1240
    add-int/lit8 p2, p2, 0x1

    .line 1242
    :cond_c
    const/16 v9, 0x3c

    move/from16 v0, p2

    if-ne v0, v9, :cond_d

    .line 1243
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion61(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1244
    add-int/lit8 p2, p2, 0x1

    .line 1246
    :cond_d
    const/16 v9, 0x3d

    move/from16 v0, p2

    if-ne v0, v9, :cond_e

    .line 1247
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion62(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1248
    add-int/lit8 p2, p2, 0x1

    .line 1250
    :cond_e
    const/16 v9, 0x3e

    move/from16 v0, p2

    if-ne v0, v9, :cond_f

    .line 1251
    const/4 v1, 0x1

    .line 1252
    add-int/lit8 p2, p2, 0x1

    .line 1254
    :cond_f
    const/16 v9, 0x3f

    move/from16 v0, p2

    if-ne v0, v9, :cond_10

    .line 1255
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion64(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1256
    add-int/lit8 p2, p2, 0x1

    .line 1258
    :cond_10
    const/16 v9, 0x40

    move/from16 v0, p2

    if-ne v0, v9, :cond_11

    .line 1259
    const/4 v1, 0x1

    .line 1260
    add-int/lit8 p2, p2, 0x1

    .line 1262
    :cond_11
    const/16 v9, 0x41

    move/from16 v0, p2

    if-ne v0, v9, :cond_12

    .line 1263
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion66(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1264
    add-int/lit8 p2, p2, 0x1

    .line 1266
    :cond_12
    const/16 v9, 0x42

    move/from16 v0, p2

    if-ne v0, v9, :cond_13

    .line 1268
    add-int/lit8 p2, p2, 0x1

    .line 1270
    :cond_13
    if-eqz v6, :cond_14

    .line 1271
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->recreateMetaDataAndInstances67(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1273
    :cond_14
    const/16 v9, 0x43

    move/from16 v0, p2

    if-eq v0, v9, :cond_15

    const/16 v9, 0x44

    move/from16 v0, p2

    if-ne v0, v9, :cond_16

    .line 1274
    :cond_15
    invoke-static/range {p1 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion69(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1275
    const/16 p2, 0x45

    .line 1281
    :cond_16
    const/16 v9, 0x45

    move/from16 v0, p2

    if-ne v0, v9, :cond_17

    .line 1282
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion200(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1283
    const/4 v1, 0x1

    .line 1284
    const/16 p2, 0xc8

    .line 1286
    :cond_17
    const/16 v9, 0x46

    move/from16 v0, p2

    if-ne v0, v9, :cond_18

    .line 1287
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion200(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1288
    const/16 p2, 0xc8

    .line 1290
    :cond_18
    const/16 v9, 0x64

    move/from16 v0, p2

    if-ne v0, v9, :cond_19

    .line 1292
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion200(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1293
    const/16 p2, 0xc8

    .line 1295
    :cond_19
    const/4 v5, 0x1

    .line 1296
    .local v5, "need203Update":Z
    const/16 v9, 0x65

    move/from16 v0, p2

    if-eq v0, v9, :cond_1a

    const/16 v9, 0x66

    move/from16 v0, p2

    if-ne v0, v9, :cond_1b

    .line 1300
    :cond_1a
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion200(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1301
    const/16 p2, 0xc8

    .line 1302
    const/4 v5, 0x0

    .line 1304
    :cond_1b
    const/16 v9, 0xc8

    move/from16 v0, p2

    if-ne v0, v9, :cond_1c

    .line 1305
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion201(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1306
    add-int/lit8 p2, p2, 0x1

    .line 1308
    :cond_1c
    const/16 v9, 0xc9

    move/from16 v0, p2

    if-ne v0, v9, :cond_1d

    .line 1309
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion202(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1310
    const/4 v1, 0x1

    .line 1311
    add-int/lit8 p2, p2, 0x1

    .line 1313
    :cond_1d
    const/16 v9, 0xca

    move/from16 v0, p2

    if-ne v0, v9, :cond_1f

    .line 1314
    if-eqz v5, :cond_1e

    .line 1315
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion203(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1317
    :cond_1e
    add-int/lit8 p2, p2, 0x1

    .line 1319
    :cond_1f
    const/16 v9, 0xcb

    move/from16 v0, p2

    if-ne v0, v9, :cond_20

    .line 1320
    const/4 v1, 0x1

    .line 1321
    add-int/lit8 p2, p2, 0x1

    .line 1323
    :cond_20
    const/16 v9, 0xce

    move/from16 v0, p2

    if-ne v0, v9, :cond_21

    .line 1326
    add-int/lit8 p2, p2, -0x2

    .line 1328
    :cond_21
    const/16 v9, 0xcc

    move/from16 v0, p2

    if-ne v0, v9, :cond_22

    .line 1330
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion205(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1331
    const/4 v1, 0x1

    .line 1332
    add-int/lit8 p2, p2, 0x1

    .line 1334
    :cond_22
    const/16 v9, 0xcd

    move/from16 v0, p2

    if-ne v0, v9, :cond_23

    .line 1336
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion300(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1337
    const/4 v1, 0x1

    .line 1338
    const/16 p2, 0x12c

    .line 1340
    :cond_23
    const/16 v9, 0x12c

    move/from16 v0, p2

    if-ne v0, v9, :cond_24

    .line 1341
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion301(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1342
    const/4 v1, 0x1

    .line 1343
    add-int/lit8 p2, p2, 0x1

    .line 1345
    :cond_24
    const/16 v9, 0x12d

    move/from16 v0, p2

    if-ne v0, v9, :cond_25

    .line 1346
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion302(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1347
    add-int/lit8 p2, p2, 0x1

    .line 1349
    :cond_25
    const/16 v9, 0x12e

    move/from16 v0, p2

    if-ne v0, v9, :cond_26

    .line 1350
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion303(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1351
    add-int/lit8 p2, p2, 0x1

    .line 1352
    const/4 v1, 0x1

    .line 1354
    :cond_26
    const/16 v9, 0x12f

    move/from16 v0, p2

    if-ne v0, v9, :cond_27

    .line 1355
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion304(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1356
    add-int/lit8 p2, p2, 0x1

    .line 1357
    const/4 v1, 0x1

    .line 1359
    :cond_27
    const/16 v9, 0x130

    move/from16 v0, p2

    if-ne v0, v9, :cond_28

    .line 1360
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion305(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1361
    add-int/lit8 p2, p2, 0x1

    .line 1362
    const/4 v1, 0x1

    .line 1364
    :cond_28
    const/16 v9, 0x131

    move/from16 v0, p2

    if-ne v0, v9, :cond_29

    .line 1365
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion306(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1367
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->scheduleSync(Landroid/accounts/Account;ZLjava/lang/String;)V

    .line 1368
    add-int/lit8 p2, p2, 0x1

    .line 1370
    :cond_29
    const/16 v9, 0x132

    move/from16 v0, p2

    if-ne v0, v9, :cond_2a

    .line 1371
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion307(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1372
    add-int/lit8 p2, p2, 0x1

    .line 1374
    :cond_2a
    const/16 v9, 0x133

    move/from16 v0, p2

    if-ne v0, v9, :cond_2b

    .line 1375
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion308(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1376
    add-int/lit8 p2, p2, 0x1

    .line 1377
    const/4 v1, 0x1

    .line 1379
    :cond_2b
    const/16 v9, 0x134

    move/from16 v0, p2

    if-ne v0, v9, :cond_2c

    .line 1380
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion400(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1381
    const/4 v1, 0x1

    .line 1382
    const/16 p2, 0x190

    .line 1385
    :cond_2c
    const/16 v9, 0x135

    move/from16 v0, p2

    if-eq v0, v9, :cond_2d

    const/16 v9, 0x190

    move/from16 v0, p2

    if-ne v0, v9, :cond_2e

    .line 1386
    :cond_2d
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion401(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1387
    const/4 v1, 0x1

    .line 1388
    const/16 p2, 0x191

    .line 1390
    :cond_2e
    const/16 v9, 0x191

    move/from16 v0, p2

    if-ne v0, v9, :cond_2f

    .line 1391
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion402(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1392
    const/4 v1, 0x1

    .line 1393
    const/16 p2, 0x192

    .line 1395
    :cond_2f
    const/16 v9, 0x192

    move/from16 v0, p2

    if-ne v0, v9, :cond_30

    .line 1396
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion403(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1397
    const/4 v1, 0x1

    .line 1398
    const/16 p2, 0x193

    .line 1400
    :cond_30
    const/16 v9, 0x193

    move/from16 v0, p2

    if-ne v0, v9, :cond_31

    .line 1401
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion501(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1402
    const/4 v1, 0x1

    .line 1403
    const/16 p2, 0x1f5

    .line 1405
    :cond_31
    const/16 v9, 0x1f5

    move/from16 v0, p2

    if-ne v0, v9, :cond_32

    .line 1406
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion502(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1407
    const/4 v1, 0x1

    .line 1408
    const/16 p2, 0x1f6

    .line 1410
    :cond_32
    const/16 v9, 0x258

    move/from16 v0, p2

    if-ge v0, v9, :cond_33

    .line 1411
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion600(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1412
    const/4 v1, 0x1

    .line 1413
    const/16 p2, 0x258

    .line 1416
    :cond_33
    if-eqz v1, :cond_34

    .line 1417
    invoke-static/range {p1 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createEventsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1419
    :cond_34
    const/16 v9, 0x258

    move/from16 v0, p2

    if-eq v0, v9, :cond_36

    .line 1420
    const-string v9, "CalendarDatabaseHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Need to recreate Calendar schema because of unknown Calendar database version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1423
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1424
    const/16 p2, 0x258

    .line 1440
    :goto_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 1441
    .local v3, "endWhen":J
    const-string v9, "CalendarDatabaseHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Calendar upgrade took "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-long v11, v3, v7

    const-wide/32 v13, 0xf4240

    div-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1193
    .end local v1    # "createEventsView":Z
    .end local v3    # "endWhen":J
    .end local v5    # "need203Update":Z
    .end local v6    # "recreateMetaDataAndInstances":Z
    :cond_35
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1426
    .restart local v1    # "createEventsView":Z
    .restart local v5    # "need203Update":Z
    .restart local v6    # "recreateMetaDataAndInstances":Z
    :cond_36
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->removeOrphans(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1428
    .end local v5    # "need203Update":Z
    :catch_0
    move-exception v2

    .line 1429
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    iget-boolean v9, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mInTestMode:Z

    if-eqz v9, :cond_37

    .line 1431
    throw v2

    .line 1433
    :cond_37
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "onUpgrade: SQLiteException, recreating db. "

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1434
    const-string v9, "CalendarDatabaseHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "(oldVersion was "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1436
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0
.end method

.method public remindersInsert(Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mRemindersInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected removeDuplicateEvent(J)V
    .locals 9
    .param p1, "id"    # J

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3445
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3446
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "SELECT _id FROM Events WHERE _sync_id = (SELECT _sync_id FROM Events WHERE _id = ?) AND lastSynced = ?"

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "1"

    aput-object v6, v5, v8

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3458
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3459
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3461
    .local v2, "dupId":J
    const-string v4, "CalendarDatabaseHelper"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3462
    const-string v4, "CalendarDatabaseHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing duplicate event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of original event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3465
    :cond_0
    const-string v4, "DELETE FROM Events WHERE _id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3468
    .end local v2    # "dupId":J
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3470
    return-void

    .line 3468
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method scheduleSync(Landroid/accounts/Account;ZLjava/lang/String;)V
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uploadChangesOnly"    # Z
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 3148
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3149
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz p2, :cond_0

    .line 3150
    const-string v1, "upload"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3152
    :cond_0
    if-eqz p3, :cond_1

    .line 3153
    const-string v1, "feed"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3155
    :cond_1
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3157
    return-void
.end method
