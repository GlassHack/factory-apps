.class public Lcom/android/providers/calendar/MetaData;
.super Ljava/lang/Object;
.source "MetaData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/MetaData$Fields;
    }
.end annotation


# static fields
.field private static final sCalendarMetaDataProjection:[Ljava/lang/String;


# instance fields
.field private mFields:Lcom/android/providers/calendar/MetaData$Fields;

.field private mInitialized:Z

.field private final mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "localTimezone"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "minInstance"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "maxInstance"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/calendar/MetaData;->sCalendarMetaDataProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 1
    .param p1, "openHelper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/providers/calendar/MetaData$Fields;

    invoke-direct {v0, p0}, Lcom/android/providers/calendar/MetaData$Fields;-><init>(Lcom/android/providers/calendar/MetaData;)V

    iput-object v0, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    .line 70
    iput-object p1, p0, Lcom/android/providers/calendar/MetaData;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 71
    return-void
.end method

.method private readLocked(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 131
    const/4 v13, 0x0

    .line 132
    .local v13, "timezone":Ljava/lang/String;
    const-wide/16 v11, 0x0

    .local v11, "minInstance":J
    const-wide/16 v9, 0x0

    .line 136
    .local v9, "maxInstance":J
    const-string v1, "CalendarMetaData"

    sget-object v2, Lcom/android/providers/calendar/MetaData;->sCalendarMetaDataProjection:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 139
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 141
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 142
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v9

    .line 145
    :cond_0
    if-eqz v8, :cond_1

    .line 146
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iput-object v13, v0, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iput-wide v11, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    .line 153
    iget-object v0, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iput-wide v9, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/calendar/MetaData;->mInitialized:Z

    .line 157
    return-void

    .line 145
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 146
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method


# virtual methods
.method public clearInstanceRange()V
    .locals 7

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/providers/calendar/MetaData;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 228
    .local v6, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 232
    :try_start_0
    iget-boolean v0, p0, Lcom/android/providers/calendar/MetaData;->mInitialized:Z

    if-nez v0, :cond_0

    .line 233
    invoke-direct {p0, v6}, Lcom/android/providers/calendar/MetaData;->readLocked(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget-object v1, v0, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/MetaData;->writeLocked(Ljava/lang/String;JJ)V

    .line 236
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 240
    return-void

    .line 238
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public getFieldsLocked()Lcom/android/providers/calendar/MetaData$Fields;
    .locals 4

    .prologue
    .line 110
    new-instance v1, Lcom/android/providers/calendar/MetaData$Fields;

    invoke-direct {v1, p0}, Lcom/android/providers/calendar/MetaData$Fields;-><init>(Lcom/android/providers/calendar/MetaData;)V

    .line 114
    .local v1, "fields":Lcom/android/providers/calendar/MetaData$Fields;
    iget-boolean v2, p0, Lcom/android/providers/calendar/MetaData;->mInitialized:Z

    if-nez v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/android/providers/calendar/MetaData;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 116
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v0}, Lcom/android/providers/calendar/MetaData;->readLocked(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 118
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    iget-object v2, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget-object v2, v2, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    .line 119
    iget-object v2, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget-wide v2, v2, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    iput-wide v2, v1, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    .line 120
    iget-object v2, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget-wide v2, v2, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    iput-wide v2, v1, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    .line 121
    return-object v1
.end method

.method public writeLocked(Ljava/lang/String;JJ)V
    .locals 7
    .param p1, "timezone"    # Ljava/lang/String;
    .param p2, "begin"    # J
    .param p4, "end"    # J

    .prologue
    const/4 v5, 0x0

    .line 195
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 196
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "_id"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    const-string v3, "localTimezone"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v3, "minInstance"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 199
    const-string v3, "maxInstance"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 203
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/calendar/MetaData;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 204
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "CalendarMetaData"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    iget-object v3, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iput-object p1, v3, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    .line 214
    iget-object v3, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iput-wide p2, v3, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    .line 215
    iget-object v3, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iput-wide p4, v3, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    .line 216
    return-void

    .line 205
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v3, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iput-object v5, v3, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    .line 208
    iget-object v3, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget-object v4, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    iput-wide v5, v3, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    .line 209
    throw v1
.end method
