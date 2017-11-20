.class public Lcom/android/providers/calendar/CalendarInstancesHelper;
.super Ljava/lang/Object;
.source "CalendarInstancesHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;,
        Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;
    }
.end annotation


# static fields
.field private static final EXPAND_COLUMNS:[Ljava/lang/String;


# instance fields
.field private mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

.field private mMetaData:Lcom/android/providers/calendar/MetaData;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 107
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "eventStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "rdate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "exrule"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "exdate"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "original_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "originalInstanceTime"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "deleted"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/calendar/CalendarInstancesHelper;->EXPAND_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/providers/calendar/CalendarDatabaseHelper;Lcom/android/providers/calendar/MetaData;)V
    .locals 2
    .param p1, "calendarDbHelper"    # Lcom/android/providers/calendar/CalendarDatabaseHelper;
    .param p2, "metaData"    # Lcom/android/providers/calendar/MetaData;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    .line 133
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 134
    iput-object p2, p0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mMetaData:Lcom/android/providers/calendar/MetaData;

    .line 135
    new-instance v0, Lcom/android/providers/calendar/CalendarCache;

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-direct {v0, v1}, Lcom/android/providers/calendar/CalendarCache;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    .line 136
    return-void
.end method

.method static computeTimezoneDependentFields(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V
    .locals 6
    .param p0, "begin"    # J
    .param p2, "end"    # J
    .param p4, "local"    # Landroid/text/format/Time;
    .param p5, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 891
    invoke-virtual {p4, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 892
    iget-wide v4, p4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p0, p1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 893
    .local v2, "startDay":I
    iget v4, p4, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v4, v4, 0x3c

    iget v5, p4, Landroid/text/format/Time;->minute:I

    add-int v3, v4, v5

    .line 895
    .local v3, "startMinute":I
    invoke-virtual {p4, p2, p3}, Landroid/text/format/Time;->set(J)V

    .line 896
    iget-wide v4, p4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p2, p3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 897
    .local v0, "endDay":I
    iget v4, p4, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v4, v4, 0x3c

    iget v5, p4, Landroid/text/format/Time;->minute:I

    add-int v1, v4, v5

    .line 903
    .local v1, "endMinute":I
    if-nez v1, :cond_0

    if-le v0, v2, :cond_0

    .line 904
    const/16 v1, 0x5a0

    .line 905
    add-int/lit8 v0, v0, -0x1

    .line 908
    :cond_0
    const-string v4, "startDay"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p5, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 909
    const-string v4, "endDay"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p5, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 910
    const-string v4, "startMinute"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p5, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 911
    const-string v4, "endMinute"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p5, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 912
    return-void
.end method

.method private getEntries(JJ)Landroid/database/Cursor;
    .locals 11
    .param p1, "begin"    # J
    .param p3, "end"    # J

    .prologue
    .line 563
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 564
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "view_events"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 565
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 567
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 568
    .local v8, "beginString":Ljava/lang/String;
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 586
    .local v10, "endString":Ljava/lang/String;
    const-string v1, "((dtstart <= ? AND (lastDate IS NULL OR lastDate >= ?)) OR (originalInstanceTime IS NOT NULL AND originalInstanceTime <= ? AND originalInstanceTime >= ?)) AND (sync_events != ?) AND (lastSynced = ?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 587
    const/4 v1, 0x6

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v10, v4, v1

    const/4 v1, 0x1

    aput-object v8, v4, v1

    const/4 v1, 0x2

    aput-object v10, v4, v1

    const/4 v1, 0x3

    const-wide/32 v2, 0x240c8400

    sub-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x4

    const-string v2, "0"

    aput-object v2, v4, v1

    const/4 v1, 0x5

    const-string v2, "0"

    aput-object v2, v4, v1

    .line 595
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/android/providers/calendar/CalendarInstancesHelper;->EXPAND_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 597
    .local v9, "c":Landroid/database/Cursor;
    const-string v1, "CalInstances"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    const-string v1, "CalInstances"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instance expansion:  got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " entries"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_0
    return-object v9
.end method

.method private static getEventValue(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "rowId"    # J
    .param p3, "columnName"    # Ljava/lang/String;

    .prologue
    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Events"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "where":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getRelevantRecurrenceEntries(Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 9
    .param p1, "recurrenceSyncId"    # Ljava/lang/String;
    .param p2, "rowId"    # J

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 835
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 837
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "view_events"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 838
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 840
    if-nez p1, :cond_1

    .line 841
    const-string v8, "_id=?"

    .line 842
    .local v8, "where":Ljava/lang/String;
    invoke-virtual {v0, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 843
    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    .line 857
    .local v4, "selectionArgs":[Ljava/lang/String;
    :goto_0
    const-string v1, "CalInstances"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 858
    const-string v1, "CalInstances"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrieving events to expand: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_0
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/android/providers/calendar/CalendarInstancesHelper;->EXPAND_COLUMNS:[Ljava/lang/String;

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 848
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v8    # "where":Ljava/lang/String;
    :cond_1
    const-string v8, "(_sync_id=? OR original_sync_id=?) AND lastSynced = ?"

    .line 850
    .restart local v8    # "where":Ljava/lang/String;
    invoke-virtual {v0, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 851
    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    aput-object p1, v4, v2

    aput-object p1, v4, v5

    const-string v1, "0"

    aput-object v1, v4, v6

    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    goto :goto_0
.end method

.method static getSyncIdKey(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .param p0, "syncId"    # Ljava/lang/String;
    .param p1, "calendarId"    # J

    .prologue
    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateRecurrenceInstancesLocked(Landroid/content/ContentValues;JLandroid/database/sqlite/SQLiteDatabase;)V
    .locals 17
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "rowId"    # J
    .param p4, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 746
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mMetaData:Lcom/android/providers/calendar/MetaData;

    invoke-virtual {v3}, Lcom/android/providers/calendar/MetaData;->getFieldsLocked()Lcom/android/providers/calendar/MetaData$Fields;

    move-result-object v11

    .line 747
    .local v11, "fields":Lcom/android/providers/calendar/MetaData$Fields;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v8

    .line 750
    .local v8, "instancesTimezone":Ljava/lang/String;
    const-string v3, "original_sync_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 751
    .local v13, "originalSyncId":Ljava/lang/String;
    if-nez v13, :cond_0

    .line 752
    const-string v3, "original_sync_id"

    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarInstancesHelper;->getEventValue(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 756
    :cond_0
    if-eqz v13, :cond_4

    .line 758
    move-object v15, v13

    .line 772
    .local v15, "recurrenceSyncId":Ljava/lang/String;
    :cond_1
    :goto_0
    if-nez v15, :cond_6

    .line 776
    const-string v3, "original_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 777
    .local v12, "originalId":Ljava/lang/String;
    if-nez v12, :cond_2

    .line 779
    const-string v3, "original_id"

    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarInstancesHelper;->getEventValue(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 782
    :cond_2
    if-eqz v12, :cond_5

    .line 784
    move-object v14, v12

    .line 792
    .local v14, "recurrenceId":Ljava/lang/String;
    :goto_1
    const-string v16, "_id IN (SELECT Instances._id as _id FROM Instances INNER JOIN Events ON (Events._id=Instances.event_id) WHERE Events._id=? OR Events.original_id=?)"

    .line 793
    .local v16, "where":Ljava/lang/String;
    const-string v3, "Instances"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v14, v4, v5

    const/4 v5, 0x1

    aput-object v14, v4, v5

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 811
    .end local v12    # "originalId":Ljava/lang/String;
    .end local v14    # "recurrenceId":Ljava/lang/String;
    .local v10, "delCount":I
    :goto_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v15, v1, v2}, Lcom/android/providers/calendar/CalendarInstancesHelper;->getRelevantRecurrenceEntries(Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v9

    .line 813
    .local v9, "entries":Landroid/database/Cursor;
    :try_start_0
    iget-wide v4, v11, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    iget-wide v6, v11, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/providers/calendar/CalendarInstancesHelper;->performInstanceExpansion(JJLjava/lang/String;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    if-eqz v9, :cond_3

    .line 817
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 820
    :cond_3
    return-void

    .line 763
    .end local v9    # "entries":Landroid/database/Cursor;
    .end local v10    # "delCount":I
    .end local v15    # "recurrenceSyncId":Ljava/lang/String;
    .end local v16    # "where":Ljava/lang/String;
    :cond_4
    const-string v3, "_sync_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 764
    .restart local v15    # "recurrenceSyncId":Ljava/lang/String;
    if-nez v15, :cond_1

    .line 766
    const-string v3, "_sync_id"

    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarInstancesHelper;->getEventValue(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 787
    .restart local v12    # "originalId":Ljava/lang/String;
    :cond_5
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "recurrenceId":Ljava/lang/String;
    goto :goto_1

    .line 800
    .end local v12    # "originalId":Ljava/lang/String;
    .end local v14    # "recurrenceId":Ljava/lang/String;
    :cond_6
    const-string v16, "_id IN (SELECT Instances._id as _id FROM Instances INNER JOIN Events ON (Events._id=Instances.event_id) WHERE Events._sync_id=? OR Events.original_sync_id=?)"

    .line 801
    .restart local v16    # "where":Ljava/lang/String;
    const-string v3, "Instances"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v15, v4, v5

    const/4 v5, 0x1

    aput-object v15, v4, v5

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .restart local v10    # "delCount":I
    goto :goto_2

    .line 816
    .restart local v9    # "entries":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_7

    .line 817
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v3
.end method


# virtual methods
.method protected expandInstanceRangeLocked(JJLjava/lang/String;)V
    .locals 7
    .param p1, "begin"    # J
    .param p3, "end"    # J
    .param p5, "localTimezone"    # Ljava/lang/String;

    .prologue
    .line 538
    const-string v0, "CalInstances"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    const-string v0, "CalInstances"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expanding events between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/calendar/CalendarInstancesHelper;->getEntries(JJ)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "entries":Landroid/database/Cursor;
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 544
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/calendar/CalendarInstancesHelper;->performInstanceExpansion(JJLjava/lang/String;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    if-eqz v6, :cond_1

    .line 547
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 553
    :cond_1
    return-void

    .line 546
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 547
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method protected performInstanceExpansion(JJLjava/lang/String;Landroid/database/Cursor;)V
    .locals 76
    .param p1, "begin"    # J
    .param p3, "end"    # J
    .param p5, "localTimezone"    # Ljava/lang/String;
    .param p6, "entries"    # Landroid/database/Cursor;

    .prologue
    .line 164
    new-instance v4, Lcom/android/calendarcommon2/RecurrenceProcessor;

    invoke-direct {v4}, Lcom/android/calendarcommon2/RecurrenceProcessor;-><init>()V

    .line 168
    .local v4, "rp":Lcom/android/calendarcommon2/RecurrenceProcessor;
    const-string v19, "ORIGINAL_EVENT_AND_CALENDAR"

    .line 170
    .local v19, "ORIGINAL_EVENT_AND_CALENDAR":Ljava/lang/String;
    const-string v11, "eventStatus"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v69

    .line 171
    .local v69, "statusColumn":I
    const-string v11, "dtstart"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 172
    .local v32, "dtstartColumn":I
    const-string v11, "dtend"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 173
    .local v31, "dtendColumn":I
    const-string v11, "eventTimezone"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v41

    .line 174
    .local v41, "eventTimezoneColumn":I
    const-string v11, "duration"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    .line 175
    .local v34, "durationColumn":I
    const-string v11, "rrule"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v66

    .line 176
    .local v66, "rruleColumn":I
    const-string v11, "rdate"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v64

    .line 177
    .local v64, "rdateColumn":I
    const-string v11, "exrule"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 178
    .local v44, "exruleColumn":I
    const-string v11, "exdate"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v42

    .line 179
    .local v42, "exdateColumn":I
    const-string v11, "allDay"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 180
    .local v21, "allDayColumn":I
    const-string v11, "_id"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v48

    .line 181
    .local v48, "idColumn":I
    const-string v11, "_sync_id"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v71

    .line 182
    .local v71, "syncIdColumn":I
    const-string v11, "original_sync_id"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v55

    .line 183
    .local v55, "originalEventColumn":I
    const-string v11, "originalInstanceTime"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v57

    .line 184
    .local v57, "originalInstanceTimeColumn":I
    const-string v11, "calendar_id"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 185
    .local v27, "calendarIdColumn":I
    const-string v11, "deleted"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 188
    .local v30, "deletedColumn":I
    new-instance v49, Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;

    invoke-direct/range {v49 .. v49}, Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;-><init>()V

    .line 191
    .local v49, "instancesMap":Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;
    new-instance v33, Lcom/android/calendarcommon2/Duration;

    invoke-direct/range {v33 .. v33}, Lcom/android/calendarcommon2/Duration;-><init>()V

    .line 192
    .local v33, "duration":Lcom/android/calendarcommon2/Duration;
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 207
    .local v5, "eventTime":Landroid/text/format/Time;
    :cond_0
    :goto_0
    invoke-interface/range {p6 .. p6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_18

    .line 209
    const/4 v12, 0x0

    .line 211
    .local v12, "initialValues":Landroid/content/ContentValues;
    :try_start_0
    move-object/from16 v0, p6

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_5

    const/16 v20, 0x1

    .line 213
    .local v20, "allDay":Z
    :goto_1
    move-object/from16 v0, p6

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 214
    .local v40, "eventTimezone":Ljava/lang/String;
    if-nez v20, :cond_1

    invoke-static/range {v40 .. v40}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 218
    :cond_1
    const-string v40, "UTC"

    .line 221
    :cond_2
    move-object/from16 v0, p6

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 222
    .local v13, "dtstartMillis":J
    move-object/from16 v0, p6

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    .line 224
    .local v39, "eventId":Ljava/lang/Long;
    move-object/from16 v0, p6

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v37

    .line 225
    .local v37, "durationStr":Ljava/lang/String;
    if-eqz v37, :cond_3

    .line 227
    :try_start_1
    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon2/Duration;->parse(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/util/TimeFormatException; {:try_start_1 .. :try_end_1} :catch_3

    .line 244
    :cond_3
    :goto_2
    :try_start_2
    move-object/from16 v0, p6

    move/from16 v1, v71

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v70

    .line 245
    .local v70, "syncId":Ljava/lang/String;
    move-object/from16 v0, p6

    move/from16 v1, v55

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    .line 247
    .local v54, "originalEvent":Ljava/lang/String;
    const-wide/16 v58, -0x1

    .line 248
    .local v58, "originalInstanceTimeMillis":J
    move-object/from16 v0, p6

    move/from16 v1, v57

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_4

    .line 249
    move-object/from16 v0, p6

    move/from16 v1, v57

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    .line 251
    :cond_4
    move-object/from16 v0, p6

    move/from16 v1, v69

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v68

    .line 252
    .local v68, "status":I
    move-object/from16 v0, p6

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_7

    const/16 v29, 0x1

    .line 254
    .local v29, "deleted":Z
    :goto_3
    move-object/from16 v0, p6

    move/from16 v1, v66

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v67

    .line 255
    .local v67, "rruleStr":Ljava/lang/String;
    move-object/from16 v0, p6

    move/from16 v1, v64

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v65

    .line 256
    .local v65, "rdateStr":Ljava/lang/String;
    move-object/from16 v0, p6

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v45

    .line 257
    .local v45, "exruleStr":Ljava/lang/String;
    move-object/from16 v0, p6

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 258
    .local v43, "exdateStr":Ljava/lang/String;
    move-object/from16 v0, p6

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 260
    .local v25, "calendarId":J
    move-object/from16 v0, v70

    move-wide/from16 v1, v25

    invoke-static {v0, v1, v2}, Lcom/android/providers/calendar/CalendarInstancesHelper;->getSyncIdKey(Ljava/lang/String;J)Ljava/lang/String;
    :try_end_2
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v72

    .line 262
    .local v72, "syncIdKey":Ljava/lang/String;
    const/4 v6, 0x0

    .line 264
    .local v6, "recur":Lcom/android/calendarcommon2/RecurrenceSet;
    :try_start_3
    new-instance v6, Lcom/android/calendarcommon2/RecurrenceSet;

    .end local v6    # "recur":Lcom/android/calendarcommon2/RecurrenceSet;
    move-object/from16 v0, v67

    move-object/from16 v1, v65

    move-object/from16 v2, v45

    move-object/from16 v3, v43

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/calendarcommon2/RecurrenceSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 273
    .restart local v6    # "recur":Lcom/android/calendarcommon2/RecurrenceSet;
    if-eqz v6, :cond_10

    :try_start_4
    invoke-virtual {v6}, Lcom/android/calendarcommon2/RecurrenceSet;->hasRecurrence()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 276
    const/4 v11, 0x2

    move/from16 v0, v68

    if-ne v0, v11, :cond_8

    .line 278
    const-string v11, "CalendarProvider2"

    const/4 v15, 0x6

    invoke-static {v11, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 279
    const-string v11, "CalendarProvider2"

    const-string v15, "Found canceled recurring event in Events table.  Ignoring."

    invoke-static {v11, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 418
    .end local v6    # "recur":Lcom/android/calendarcommon2/RecurrenceSet;
    .end local v13    # "dtstartMillis":J
    .end local v20    # "allDay":Z
    .end local v25    # "calendarId":J
    .end local v29    # "deleted":Z
    .end local v37    # "durationStr":Ljava/lang/String;
    .end local v39    # "eventId":Ljava/lang/Long;
    .end local v40    # "eventTimezone":Ljava/lang/String;
    .end local v43    # "exdateStr":Ljava/lang/String;
    .end local v45    # "exruleStr":Ljava/lang/String;
    .end local v54    # "originalEvent":Ljava/lang/String;
    .end local v58    # "originalInstanceTimeMillis":J
    .end local v65    # "rdateStr":Ljava/lang/String;
    .end local v67    # "rruleStr":Ljava/lang/String;
    .end local v68    # "status":I
    .end local v70    # "syncId":Ljava/lang/String;
    .end local v72    # "syncIdKey":Ljava/lang/String;
    :catch_0
    move-exception v38

    .line 419
    .local v38, "e":Lcom/android/calendarcommon2/DateException;
    :goto_4
    const-string v11, "CalendarProvider2"

    const/4 v15, 0x6

    invoke-static {v11, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 420
    const-string v11, "CalendarProvider2"

    const-string v15, "RecurrenceProcessor error "

    move-object/from16 v0, v38

    invoke-static {v11, v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 211
    .end local v38    # "e":Lcom/android/calendarcommon2/DateException;
    :cond_5
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 229
    .restart local v13    # "dtstartMillis":J
    .restart local v20    # "allDay":Z
    .restart local v37    # "durationStr":Ljava/lang/String;
    .restart local v39    # "eventId":Ljava/lang/Long;
    .restart local v40    # "eventTimezone":Ljava/lang/String;
    :catch_1
    move-exception v38

    .line 230
    .restart local v38    # "e":Lcom/android/calendarcommon2/DateException;
    :try_start_5
    const-string v11, "CalendarProvider2"

    const/4 v15, 0x6

    invoke-static {v11, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 231
    const-string v11, "CalendarProvider2"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "error parsing duration for event "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v39

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v37

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v38

    invoke-static {v11, v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    :cond_6
    const/4 v11, 0x1

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/calendarcommon2/Duration;->sign:I

    .line 235
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/calendarcommon2/Duration;->weeks:I

    .line 236
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/calendarcommon2/Duration;->days:I

    .line 237
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/calendarcommon2/Duration;->hours:I

    .line 238
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/calendarcommon2/Duration;->minutes:I

    .line 239
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/calendarcommon2/Duration;->seconds:I

    .line 240
    const-string v37, "+P0S"

    goto/16 :goto_2

    .line 252
    .end local v38    # "e":Lcom/android/calendarcommon2/DateException;
    .restart local v54    # "originalEvent":Ljava/lang/String;
    .restart local v58    # "originalInstanceTimeMillis":J
    .restart local v68    # "status":I
    .restart local v70    # "syncId":Ljava/lang/String;
    :cond_7
    const/16 v29, 0x0

    goto/16 :goto_3

    .line 265
    .restart local v25    # "calendarId":J
    .restart local v29    # "deleted":Z
    .restart local v43    # "exdateStr":Ljava/lang/String;
    .restart local v45    # "exruleStr":Ljava/lang/String;
    .restart local v65    # "rdateStr":Ljava/lang/String;
    .restart local v67    # "rruleStr":Ljava/lang/String;
    .restart local v72    # "syncIdKey":Ljava/lang/String;
    :catch_2
    move-exception v38

    .line 266
    .local v38, "e":Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;
    const-string v11, "CalendarProvider2"

    const/4 v15, 0x6

    invoke-static {v11, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 267
    const-string v11, "CalendarProvider2"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Could not parse RRULE recurrence string: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v67

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v38

    invoke-static {v11, v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 422
    .end local v13    # "dtstartMillis":J
    .end local v20    # "allDay":Z
    .end local v25    # "calendarId":J
    .end local v29    # "deleted":Z
    .end local v37    # "durationStr":Ljava/lang/String;
    .end local v38    # "e":Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;
    .end local v39    # "eventId":Ljava/lang/Long;
    .end local v40    # "eventTimezone":Ljava/lang/String;
    .end local v43    # "exdateStr":Ljava/lang/String;
    .end local v45    # "exruleStr":Ljava/lang/String;
    .end local v54    # "originalEvent":Ljava/lang/String;
    .end local v58    # "originalInstanceTimeMillis":J
    .end local v65    # "rdateStr":Ljava/lang/String;
    .end local v67    # "rruleStr":Ljava/lang/String;
    .end local v68    # "status":I
    .end local v70    # "syncId":Ljava/lang/String;
    .end local v72    # "syncIdKey":Ljava/lang/String;
    :catch_3
    move-exception v38

    .line 423
    .local v38, "e":Landroid/util/TimeFormatException;
    :goto_5
    const-string v11, "CalendarProvider2"

    const/4 v15, 0x6

    invoke-static {v11, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 424
    const-string v11, "CalendarProvider2"

    const-string v15, "RecurrenceProcessor error "

    move-object/from16 v0, v38

    invoke-static {v11, v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 284
    .end local v38    # "e":Landroid/util/TimeFormatException;
    .restart local v6    # "recur":Lcom/android/calendarcommon2/RecurrenceSet;
    .restart local v13    # "dtstartMillis":J
    .restart local v20    # "allDay":Z
    .restart local v25    # "calendarId":J
    .restart local v29    # "deleted":Z
    .restart local v37    # "durationStr":Ljava/lang/String;
    .restart local v39    # "eventId":Ljava/lang/Long;
    .restart local v40    # "eventTimezone":Ljava/lang/String;
    .restart local v43    # "exdateStr":Ljava/lang/String;
    .restart local v45    # "exruleStr":Ljava/lang/String;
    .restart local v54    # "originalEvent":Ljava/lang/String;
    .restart local v58    # "originalInstanceTimeMillis":J
    .restart local v65    # "rdateStr":Ljava/lang/String;
    .restart local v67    # "rruleStr":Ljava/lang/String;
    .restart local v68    # "status":I
    .restart local v70    # "syncId":Ljava/lang/String;
    .restart local v72    # "syncIdKey":Ljava/lang/String;
    :cond_8
    if-eqz v29, :cond_9

    .line 285
    :try_start_6
    const-string v11, "CalendarProvider2"

    const/4 v15, 0x3

    invoke-static {v11, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 286
    const-string v11, "CalendarProvider2"

    const-string v15, "Found deleted recurring event in Events table.  Ignoring."

    invoke-static {v11, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 293
    :cond_9
    move-object/from16 v0, v40

    iput-object v0, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 294
    invoke-virtual {v5, v13, v14}, Landroid/text/format/Time;->set(J)V

    .line 295
    move/from16 v0, v20

    iput-boolean v0, v5, Landroid/text/format/Time;->allDay:Z

    .line 297
    if-nez v37, :cond_b

    .line 299
    const-string v11, "CalendarProvider2"

    const/4 v15, 0x6

    invoke-static {v11, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 300
    const-string v11, "CalendarProvider2"

    const-string v15, "Repeating event has no duration -- should not happen."

    invoke-static {v11, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_a
    if-eqz v20, :cond_c

    .line 305
    const/4 v11, 0x1

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/calendarcommon2/Duration;->sign:I

    .line 306
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/calendarcommon2/Duration;->weeks:I

    .line 307
    const/4 v11, 0x1

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/calendarcommon2/Duration;->days:I

    .line 308
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/calendarcommon2/Duration;->hours:I

    .line 309
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/calendarcommon2/Duration;->minutes:I

    .line 310
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/calendarcommon2/Duration;->seconds:I

    .line 311
    const-string v37, "+P1D"

    :cond_b
    :goto_6
    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    .line 332
    invoke-virtual/range {v4 .. v10}, Lcom/android/calendarcommon2/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcom/android/calendarcommon2/RecurrenceSet;JJ)[J

    move-result-object v28

    .line 336
    .local v28, "dates":[J
    if-eqz v20, :cond_e

    .line 337
    const-string v11, "UTC"

    iput-object v11, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 342
    :goto_7
    invoke-virtual/range {v33 .. v33}, Lcom/android/calendarcommon2/Duration;->getMillis()J

    move-result-wide v35

    .line 343
    .local v35, "durationMillis":J
    move-object/from16 v22, v28

    .local v22, "arr$":[J
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v51, v0
    :try_end_6
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_6 .. :try_end_6} :catch_3

    .local v51, "len$":I
    const/16 v46, 0x0

    .local v46, "i$":I
    move-object/from16 v18, v12

    .end local v12    # "initialValues":Landroid/content/ContentValues;
    .local v18, "initialValues":Landroid/content/ContentValues;
    :goto_8
    move/from16 v0, v46

    move/from16 v1, v51

    if-ge v0, v1, :cond_f

    :try_start_7
    aget-wide v7, v22, v46

    .line 344
    .local v7, "date":J
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V
    :try_end_7
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Landroid/util/TimeFormatException; {:try_start_7 .. :try_end_7} :catch_5

    .line 345
    .end local v18    # "initialValues":Landroid/content/ContentValues;
    .restart local v12    # "initialValues":Landroid/content/ContentValues;
    :try_start_8
    const-string v11, "event_id"

    move-object/from16 v0, v39

    invoke-virtual {v12, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 347
    const-string v11, "begin"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v11, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 348
    add-long v9, v7, v35

    .line 349
    .local v9, "dtendMillis":J
    const-string v11, "end"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v11, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object v11, v5

    .line 351
    invoke-static/range {v7 .. v12}, Lcom/android/providers/calendar/CalendarInstancesHelper;->computeTimezoneDependentFields(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V

    .line 353
    move-object/from16 v0, v49

    move-object/from16 v1, v72

    invoke-virtual {v0, v1, v12}, Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;->add(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 343
    add-int/lit8 v46, v46, 0x1

    move-object/from16 v18, v12

    .end local v12    # "initialValues":Landroid/content/ContentValues;
    .restart local v18    # "initialValues":Landroid/content/ContentValues;
    goto :goto_8

    .line 315
    .end local v7    # "date":J
    .end local v9    # "dtendMillis":J
    .end local v18    # "initialValues":Landroid/content/ContentValues;
    .end local v22    # "arr$":[J
    .end local v28    # "dates":[J
    .end local v35    # "durationMillis":J
    .end local v46    # "i$":I
    .end local v51    # "len$":I
    .restart local v12    # "initialValues":Landroid/content/ContentValues;
    :cond_c
    const/4 v11, 0x1

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/calendarcommon2/Duration;->sign:I

    .line 316
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/calendarcommon2/Duration;->weeks:I

    .line 317
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/calendarcommon2/Duration;->days:I

    .line 318
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/calendarcommon2/Duration;->hours:I

    .line 319
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/calendarcommon2/Duration;->minutes:I

    .line 320
    move-object/from16 v0, p6

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_d

    .line 321
    move-object/from16 v0, p6

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 322
    .restart local v9    # "dtendMillis":J
    sub-long v15, v9, v13

    const-wide/16 v74, 0x3e8

    div-long v15, v15, v74

    long-to-int v11, v15

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/calendarcommon2/Duration;->seconds:I

    .line 323
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "+P"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v33

    iget v15, v0, Lcom/android/calendarcommon2/Duration;->seconds:I

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, "S"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 324
    goto/16 :goto_6

    .line 325
    .end local v9    # "dtendMillis":J
    :cond_d
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/calendarcommon2/Duration;->seconds:I

    .line 326
    const-string v37, "+P0S"

    goto/16 :goto_6

    .line 339
    .restart local v28    # "dates":[J
    :cond_e
    move-object/from16 v0, p5

    iput-object v0, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    goto/16 :goto_7

    .end local v12    # "initialValues":Landroid/content/ContentValues;
    .restart local v18    # "initialValues":Landroid/content/ContentValues;
    .restart local v22    # "arr$":[J
    .restart local v35    # "durationMillis":J
    .restart local v46    # "i$":I
    .restart local v51    # "len$":I
    :cond_f
    move-object/from16 v12, v18

    .line 355
    .end local v18    # "initialValues":Landroid/content/ContentValues;
    .restart local v12    # "initialValues":Landroid/content/ContentValues;
    goto/16 :goto_0

    .line 357
    .end local v22    # "arr$":[J
    .end local v28    # "dates":[J
    .end local v35    # "durationMillis":J
    .end local v46    # "i$":I
    .end local v51    # "len$":I
    :cond_10
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V
    :try_end_8
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_8 .. :try_end_8} :catch_3

    .line 363
    .end local v12    # "initialValues":Landroid/content/ContentValues;
    .restart local v18    # "initialValues":Landroid/content/ContentValues;
    if-eqz v54, :cond_11

    const-wide/16 v15, -0x1

    cmp-long v11, v58, v15

    if-eqz v11, :cond_11

    .line 367
    :try_start_9
    const-string v11, "ORIGINAL_EVENT_AND_CALENDAR"

    move-object/from16 v0, v54

    move-wide/from16 v1, v25

    invoke-static {v0, v1, v2}, Lcom/android/providers/calendar/CalendarInstancesHelper;->getSyncIdKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v11, "originalInstanceTime"

    invoke-static/range {v58 .. v59}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 371
    const-string v11, "eventStatus"

    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 374
    :cond_11
    move-wide v9, v13

    .line 375
    .restart local v9    # "dtendMillis":J
    if-nez v37, :cond_15

    .line 376
    move-object/from16 v0, p6

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_12

    .line 377
    move-object/from16 v0, p6

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 388
    :cond_12
    :goto_9
    cmp-long v11, v9, p1

    if-ltz v11, :cond_13

    cmp-long v11, v13, p3

    if-lez v11, :cond_14

    .line 389
    :cond_13
    if-eqz v54, :cond_16

    const-wide/16 v15, -0x1

    cmp-long v11, v58, v15

    if-eqz v11, :cond_16

    .line 390
    const-string v11, "eventStatus"

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 400
    :cond_14
    const-string v11, "event_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-virtual {v0, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 402
    const-string v11, "begin"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 403
    const-string v11, "end"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 406
    const-string v11, "deleted"

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 408
    if-eqz v20, :cond_17

    .line 409
    const-string v11, "UTC"

    iput-object v11, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    :goto_a
    move-wide v15, v9

    move-object/from16 v17, v5

    .line 413
    invoke-static/range {v13 .. v18}, Lcom/android/providers/calendar/CalendarInstancesHelper;->computeTimezoneDependentFields(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V

    .line 416
    move-object/from16 v0, v49

    move-object/from16 v1, v72

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;->add(Ljava/lang/String;Landroid/content/ContentValues;)V

    move-object/from16 v12, v18

    .end local v18    # "initialValues":Landroid/content/ContentValues;
    .restart local v12    # "initialValues":Landroid/content/ContentValues;
    goto/16 :goto_0

    .line 380
    .end local v12    # "initialValues":Landroid/content/ContentValues;
    .restart local v18    # "initialValues":Landroid/content/ContentValues;
    :cond_15
    move-object/from16 v0, v33

    invoke-virtual {v0, v13, v14}, Lcom/android/calendarcommon2/Duration;->addTo(J)J

    move-result-wide v9

    goto :goto_9

    .line 392
    :cond_16
    const-string v11, "CalendarProvider2"

    const/4 v15, 0x6

    invoke-static {v11, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 393
    const-string v11, "CalendarProvider2"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unexpected event outside window: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v70

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 418
    .end local v9    # "dtendMillis":J
    :catch_4
    move-exception v38

    move-object/from16 v12, v18

    .end local v18    # "initialValues":Landroid/content/ContentValues;
    .restart local v12    # "initialValues":Landroid/content/ContentValues;
    goto/16 :goto_4

    .line 411
    .end local v12    # "initialValues":Landroid/content/ContentValues;
    .restart local v9    # "dtendMillis":J
    .restart local v18    # "initialValues":Landroid/content/ContentValues;
    :cond_17
    move-object/from16 v0, p5

    iput-object v0, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;
    :try_end_9
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Landroid/util/TimeFormatException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_a

    .line 422
    .end local v9    # "dtendMillis":J
    :catch_5
    move-exception v38

    move-object/from16 v12, v18

    .end local v18    # "initialValues":Landroid/content/ContentValues;
    .restart local v12    # "initialValues":Landroid/content/ContentValues;
    goto/16 :goto_5

    .line 451
    .end local v6    # "recur":Lcom/android/calendarcommon2/RecurrenceSet;
    .end local v12    # "initialValues":Landroid/content/ContentValues;
    .end local v13    # "dtstartMillis":J
    .end local v20    # "allDay":Z
    .end local v25    # "calendarId":J
    .end local v29    # "deleted":Z
    .end local v37    # "durationStr":Ljava/lang/String;
    .end local v39    # "eventId":Ljava/lang/Long;
    .end local v40    # "eventTimezone":Ljava/lang/String;
    .end local v43    # "exdateStr":Ljava/lang/String;
    .end local v45    # "exruleStr":Ljava/lang/String;
    .end local v54    # "originalEvent":Ljava/lang/String;
    .end local v58    # "originalInstanceTimeMillis":J
    .end local v65    # "rdateStr":Ljava/lang/String;
    .end local v67    # "rruleStr":Ljava/lang/String;
    .end local v68    # "status":I
    .end local v70    # "syncId":Ljava/lang/String;
    .end local v72    # "syncIdKey":Ljava/lang/String;
    :cond_18
    invoke-virtual/range {v49 .. v49}, Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;->keySet()Ljava/util/Set;

    move-result-object v50

    .line 452
    .local v50, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v50 .. v50}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v46

    :cond_19
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1c

    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Ljava/lang/String;

    .line 453
    .restart local v72    # "syncIdKey":Ljava/lang/String;
    move-object/from16 v0, v49

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;

    .line 454
    .local v52, "list":Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;
    invoke-virtual/range {v52 .. v52}, Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;->iterator()Ljava/util/Iterator;

    move-result-object v47

    .local v47, "i$":Ljava/util/Iterator;
    :cond_1a
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_19

    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Landroid/content/ContentValues;

    .line 458
    .local v73, "values":Landroid/content/ContentValues;
    const-string v11, "ORIGINAL_EVENT_AND_CALENDAR"

    move-object/from16 v0, v73

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 462
    const-string v11, "ORIGINAL_EVENT_AND_CALENDAR"

    move-object/from16 v0, v73

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 463
    .local v56, "originalEventPlusCalendar":Ljava/lang/String;
    const-string v11, "originalInstanceTime"

    move-object/from16 v0, v73

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v61

    .line 464
    .local v61, "originalTime":J
    move-object/from16 v0, v49

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;

    .line 466
    .local v60, "originalList":Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;
    if-eqz v60, :cond_1a

    .line 476
    invoke-virtual/range {v60 .. v60}, Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;->size()I

    move-result v11

    add-int/lit8 v53, v11, -0x1

    .local v53, "num":I
    :goto_b
    if-ltz v53, :cond_1a

    .line 477
    move-object/from16 v0, v60

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Landroid/content/ContentValues;

    .line 478
    .local v63, "originalValues":Landroid/content/ContentValues;
    const-string v11, "begin"

    move-object/from16 v0, v63

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    .line 479
    .local v23, "beginTime":J
    cmp-long v11, v23, v61

    if-nez v11, :cond_1b

    .line 481
    move-object/from16 v0, v60

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;->remove(I)Ljava/lang/Object;

    .line 476
    :cond_1b
    add-int/lit8 v53, v53, -0x1

    goto :goto_b

    .line 503
    .end local v23    # "beginTime":J
    .end local v47    # "i$":Ljava/util/Iterator;
    .end local v52    # "list":Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;
    .end local v53    # "num":I
    .end local v56    # "originalEventPlusCalendar":Ljava/lang/String;
    .end local v60    # "originalList":Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;
    .end local v61    # "originalTime":J
    .end local v63    # "originalValues":Landroid/content/ContentValues;
    .end local v72    # "syncIdKey":Ljava/lang/String;
    .end local v73    # "values":Landroid/content/ContentValues;
    :cond_1c
    invoke-interface/range {v50 .. v50}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v46

    :cond_1d
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_21

    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Ljava/lang/String;

    .line 504
    .restart local v72    # "syncIdKey":Ljava/lang/String;
    move-object/from16 v0, v49

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;

    .line 505
    .restart local v52    # "list":Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;
    invoke-virtual/range {v52 .. v52}, Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;->iterator()Ljava/util/Iterator;

    move-result-object v47

    .restart local v47    # "i$":Ljava/util/Iterator;
    :cond_1e
    :goto_c
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1d

    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Landroid/content/ContentValues;

    .line 509
    .restart local v73    # "values":Landroid/content/ContentValues;
    const-string v11, "eventStatus"

    move-object/from16 v0, v73

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v68

    .line 510
    .local v68, "status":Ljava/lang/Integer;
    const-string v11, "deleted"

    move-object/from16 v0, v73

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_20

    const-string v11, "deleted"

    move-object/from16 v0, v73

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    .line 512
    .restart local v29    # "deleted":Z
    :goto_d
    if-eqz v68, :cond_1f

    invoke-virtual/range {v68 .. v68}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v15, 0x2

    if-eq v11, v15, :cond_1e

    :cond_1f
    if-nez v29, :cond_1e

    .line 517
    const-string v11, "deleted"

    move-object/from16 v0, v73

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 520
    const-string v11, "ORIGINAL_EVENT_AND_CALENDAR"

    move-object/from16 v0, v73

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 521
    const-string v11, "originalInstanceTime"

    move-object/from16 v0, v73

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 522
    const-string v11, "eventStatus"

    move-object/from16 v0, v73

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-object/from16 v0, v73

    invoke-virtual {v11, v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->instancesReplace(Landroid/content/ContentValues;)J

    goto :goto_c

    .line 510
    .end local v29    # "deleted":Z
    :cond_20
    const/16 v29, 0x0

    goto :goto_d

    .line 527
    .end local v47    # "i$":Ljava/util/Iterator;
    .end local v52    # "list":Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;
    .end local v68    # "status":Ljava/lang/Integer;
    .end local v72    # "syncIdKey":Ljava/lang/String;
    .end local v73    # "values":Landroid/content/ContentValues;
    :cond_21
    return-void
.end method

.method public updateInstancesLocked(Landroid/content/ContentValues;JZLandroid/database/sqlite/SQLiteDatabase;)V
    .locals 26
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "rowId"    # J
    .param p4, "newEvent"    # Z
    .param p5, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 623
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mMetaData:Lcom/android/providers/calendar/MetaData;

    invoke-virtual {v5}, Lcom/android/providers/calendar/MetaData;->getFieldsLocked()Lcom/android/providers/calendar/MetaData$Fields;

    move-result-object v16

    .line 624
    .local v16, "fields":Lcom/android/providers/calendar/MetaData$Fields;
    move-object/from16 v0, v16

    iget-wide v5, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    const-string v5, "dtstart"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    .line 629
    .local v15, "dtstartMillis":Ljava/lang/Long;
    if-nez v15, :cond_3

    .line 630
    if-eqz p4, :cond_2

    .line 632
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "DTSTART missing."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 634
    :cond_2
    const-string v5, "CalInstances"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 635
    const-string v5, "CalInstances"

    const-string v6, "Missing DTSTART.  No need to update instance."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 640
    :cond_3
    if-nez p4, :cond_4

    .line 646
    const-string v5, "Instances"

    const-string v6, "event_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v7, v8

    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 651
    :cond_4
    const-string v5, "rrule"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 652
    .local v23, "rrule":Ljava/lang/String;
    const-string v5, "rdate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 653
    .local v22, "rdate":Ljava/lang/String;
    const-string v5, "original_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 654
    .local v19, "originalId":Ljava/lang/String;
    const-string v5, "original_sync_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 655
    .local v21, "originalSyncId":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->isRecurrenceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 656
    const-string v5, "lastDate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    .line 657
    .local v18, "lastDateMillis":Ljava/lang/Long;
    const-string v5, "originalInstanceTime"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    .line 661
    .local v20, "originalInstanceTime":Ljava/lang/Long;
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v16

    iget-wide v7, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_7

    if-eqz v18, :cond_5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v16

    iget-wide v7, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_7

    :cond_5
    const/16 v17, 0x1

    .line 666
    .local v17, "insideWindow":Z
    :goto_1
    if-eqz v20, :cond_8

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v16

    iget-wide v7, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_8

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v16

    iget-wide v7, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    const-wide/32 v24, 0x240c8400

    sub-long v7, v7, v24

    cmp-long v5, v5, v7

    if-ltz v5, :cond_8

    const/4 v11, 0x1

    .line 673
    .local v11, "affectsWindow":Z
    :goto_2
    if-nez v17, :cond_6

    if-eqz v11, :cond_0

    .line 674
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/calendar/CalendarInstancesHelper;->updateRecurrenceInstancesLocked(Landroid/content/ContentValues;JLandroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 661
    .end local v11    # "affectsWindow":Z
    .end local v17    # "insideWindow":Z
    :cond_7
    const/16 v17, 0x0

    goto :goto_1

    .line 666
    .restart local v17    # "insideWindow":Z
    :cond_8
    const/4 v11, 0x0

    goto :goto_2

    .line 682
    .end local v17    # "insideWindow":Z
    .end local v18    # "lastDateMillis":Ljava/lang/Long;
    .end local v20    # "originalInstanceTime":Ljava/lang/Long;
    :cond_9
    const-string v5, "dtend"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    .line 683
    .local v14, "dtendMillis":Ljava/lang/Long;
    if-nez v14, :cond_a

    .line 684
    move-object v14, v15

    .line 692
    :cond_a
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v16

    iget-wide v7, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_0

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v16

    iget-wide v7, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_0

    .line 693
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 694
    .local v10, "instanceValues":Landroid/content/ContentValues;
    const-string v5, "event_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v10, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 695
    const-string v5, "begin"

    invoke-virtual {v10, v5, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 696
    const-string v5, "end"

    invoke-virtual {v10, v5, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 698
    const/4 v12, 0x0

    .line 699
    .local v12, "allDay":Z
    const-string v5, "allDay"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    .line 700
    .local v13, "allDayInteger":Ljava/lang/Integer;
    if-eqz v13, :cond_b

    .line 701
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_c

    const/4 v12, 0x1

    .line 705
    :cond_b
    :goto_3
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    .line 706
    .local v9, "local":Landroid/text/format/Time;
    if-eqz v12, :cond_d

    .line 707
    const-string v5, "UTC"

    iput-object v5, v9, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 712
    :goto_4
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static/range {v5 .. v10}, Lcom/android/providers/calendar/CalendarInstancesHelper;->computeTimezoneDependentFields(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V

    .line 714
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v5, v10}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->instancesInsert(Landroid/content/ContentValues;)J

    goto/16 :goto_0

    .line 701
    .end local v9    # "local":Landroid/text/format/Time;
    :cond_c
    const/4 v12, 0x0

    goto :goto_3

    .line 709
    .restart local v9    # "local":Landroid/text/format/Time;
    :cond_d
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    iput-object v5, v9, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    goto :goto_4
.end method
