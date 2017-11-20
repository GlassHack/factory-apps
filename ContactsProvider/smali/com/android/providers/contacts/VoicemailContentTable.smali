.class public Lcom/android/providers/contacts/VoicemailContentTable;
.super Ljava/lang/Object;
.source "VoicemailContentTable.java"

# interfaces
.implements Lcom/android/providers/contacts/VoicemailTable$Delegate;


# static fields
.field private static final ALLOWED_COLUMNS:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FILENAME_ONLY_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mCallLogInsertionHelper:Lcom/android/providers/contacts/CallLogInsertionHelper;

.field private final mContext:Landroid/content/Context;

.field private final mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final mDelegateHelper:Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;

.field private final mTableName:Ljava/lang/String;

.field private final mVoicemailProjectionMap:Lcom/android/common/content/ProjectionMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/VoicemailContentTable;->FILENAME_ONLY_PROJECTION:[Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableSet$Builder;-><init>()V

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    const-string v1, "number"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    const-string v1, "is_read"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    const-string v1, "state"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    const-string v1, "source_data"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    const-string v1, "source_package"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    const-string v1, "has_content"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    const-string v1, "mime_type"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    const-string v1, "_display_name"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    const-string v1, "_size"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/VoicemailContentTable;->ALLOWED_COLUMNS:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;Lcom/android/providers/contacts/CallLogInsertionHelper;)V
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "dbHelper"    # Landroid/database/sqlite/SQLiteOpenHelper;
    .param p4, "contentProviderHelper"    # Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;
    .param p5, "callLogInsertionHelper"    # Lcom/android/providers/contacts/CallLogInsertionHelper;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mTableName:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mContext:Landroid/content/Context;

    .line 86
    iput-object p3, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 87
    iput-object p4, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mDelegateHelper:Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;

    .line 88
    new-instance v0, Lcom/android/common/content/ProjectionMap$Builder;

    invoke-direct {v0}, Lcom/android/common/content/ProjectionMap$Builder;-><init>()V

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "number"

    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "is_read"

    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "state"

    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "source_data"

    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "source_package"

    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "has_content"

    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "mime_type"

    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_display_name"

    invoke-static {p2}, Lcom/android/providers/contacts/VoicemailContentTable;->createDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_size"

    const-string v2, "NULL"

    invoke-virtual {v0, v1, v2}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/content/ProjectionMap$Builder;->build()Lcom/android/common/content/ProjectionMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mVoicemailProjectionMap:Lcom/android/common/content/ProjectionMap;

    .line 103
    iput-object p5, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mCallLogInsertionHelper:Lcom/android/providers/contacts/CallLogInsertionHelper;

    .line 104
    return-void
.end method

.method private checkInsertSupported(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)V
    .locals 5
    .param p1, "uriData"    # Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    .prologue
    .line 150
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot insert URI: %s. Inserted URIs should not contain an id."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    return-void
.end method

.method private checkUpdateSupported(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)V
    .locals 5
    .param p1, "uriData"    # Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    .prologue
    .line 246
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->hasId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot update URI: %s.  Bulk update not supported"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_0
    return-void
.end method

.method private static createDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const v1, 0x7f04000b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "prefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " || "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "number"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private generateDataFile()Ljava/lang/String;
    .locals 6

    .prologue
    .line 160
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mContext:Landroid/content/Context;

    const-string v4, "voicemail-data"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 161
    .local v0, "dataDirectory":Ljava/io/File;
    const-string v3, "voicemail"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 162
    .local v2, "voicemailFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 163
    .end local v0    # "dataDirectory":Ljava/io/File;
    .end local v2    # "voicemailFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "unable to create temp file"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getCallTypeClause()Ljava/lang/String;
    .locals 3

    .prologue
    .line 269
    const-string v0, "type"

    const-wide/16 v1, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/util/DbQueryUtils;->getEqualityClause(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 273
    new-instance v0, Lcom/android/providers/contacts/DbModifierWithNotification;

    iget-object v1, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mTableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/providers/contacts/DbModifierWithNotification;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    return-object v0
.end method

.method private updateVoicemailUri(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "newUri"    # Landroid/net/Uri;

    .prologue
    .line 169
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 170
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "voicemail_uri"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mTableName:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->createUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getWhereClause()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 175
    return-void
.end method


# virtual methods
.method public delete(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12
    .param p1, "uriData"    # Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 179
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 180
    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    aput-object p2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getWhereClause()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/android/providers/contacts/VoicemailContentTable;->getCallTypeClause()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/providers/contacts/util/DbQueryUtils;->concatenateClauses([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 185
    .local v6, "combinedClause":Ljava/lang/String;
    const/4 v7, 0x0

    .line 187
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/android/providers/contacts/VoicemailContentTable;->FILENAME_ONLY_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/VoicemailContentTable;->query(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 188
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 190
    .local v10, "filename":Ljava/lang/String;
    if-nez v10, :cond_1

    .line 191
    const-string v0, "VoicemailContentProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No filename for uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cannot delete file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 203
    .end local v10    # "filename":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/android/providers/contacts/util/CloseUtils;->closeQuietly(Landroid/database/Cursor;)V

    throw v0

    .line 194
    .restart local v10    # "filename":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v11

    .line 197
    .local v11, "success":Z
    if-nez v11, :cond_0

    .line 198
    const-string v0, "VoicemailContentProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 203
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "filename":Ljava/lang/String;
    .end local v11    # "success":Z
    :cond_2
    invoke-static {v7}, Lcom/android/providers/contacts/util/CloseUtils;->closeQuietly(Landroid/database/Cursor;)V

    .line 207
    invoke-direct {p0, v8}, Lcom/android/providers/contacts/VoicemailContentTable;->getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mTableName:Ljava/lang/String;

    invoke-interface {v0, v1, v6, p3}, Lcom/android/providers/contacts/DatabaseModifier;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getType(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Ljava/lang/String;
    .locals 1
    .param p1, "uriData"    # Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    .prologue
    .line 254
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const-string v0, "vnd.android.cursor.item/voicemail"

    .line 257
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "vnd.android.cursor.dir/voicemails"

    goto :goto_0
.end method

.method public insert(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .param p1, "uriData"    # Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v5, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mVoicemailProjectionMap:Lcom/android/common/content/ProjectionMap;

    invoke-static {v5, p2}, Lcom/android/providers/contacts/util/DbQueryUtils;->checkForSupportedColumns(Ljava/util/HashMap;Landroid/content/ContentValues;)V

    .line 120
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 121
    .local v0, "copiedValues":Landroid/content/ContentValues;
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/VoicemailContentTable;->checkInsertSupported(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)V

    .line 122
    iget-object v5, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mDelegateHelper:Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;

    invoke-interface {v5, p1, v0}, Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;->checkAndAddSourcePackageIntoValues(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)V

    .line 125
    iget-object v5, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mCallLogInsertionHelper:Lcom/android/providers/contacts/CallLogInsertionHelper;

    invoke-interface {v5, v0}, Lcom/android/providers/contacts/CallLogInsertionHelper;->addComputedValues(Landroid/content/ContentValues;)V

    .line 129
    const-string v5, "_data"

    invoke-direct {p0}, Lcom/android/providers/contacts/VoicemailContentTable;->generateDataFile()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v5, "type"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    const-string v5, "new"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 135
    const-string v5, "new"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    :cond_0
    iget-object v5, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 139
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/VoicemailContentTable;->getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v5

    iget-object v6, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mTableName:Ljava/lang/String;

    invoke-interface {v5, v6, v2, v0}, Lcom/android/providers/contacts/DatabaseModifier;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 140
    .local v3, "rowId":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    .line 141
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 143
    .local v2, "newUri":Landroid/net/Uri;
    invoke-direct {p0, v1, v2}, Lcom/android/providers/contacts/VoicemailContentTable;->updateVoicemailUri(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)V

    .line 146
    .end local v2    # "newUri":Landroid/net/Uri;
    :cond_1
    return-object v2
.end method

.method public openFile(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "uriData"    # Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mDelegateHelper:Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;->openDataFile(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public query(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uriData"    # Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 214
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 215
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v2, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mTableName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 216
    iget-object v2, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mVoicemailProjectionMap:Lcom/android/common/content/ProjectionMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 217
    invoke-virtual {v0, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 219
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v2, v4

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getWhereClause()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    const/4 v4, 0x2

    invoke-direct {p0}, Lcom/android/providers/contacts/VoicemailContentTable;->getCallTypeClause()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-static {v2}, Lcom/android/providers/contacts/util/DbQueryUtils;->concatenateClauses([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, "combinedClause":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, p2

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    .line 222
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 223
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 224
    iget-object v2, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/VoicemailContract$Voicemails;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v8, v2, v4}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 226
    :cond_0
    return-object v8
.end method

.method public update(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "uriData"    # Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 233
    sget-object v2, Lcom/android/providers/contacts/VoicemailContentTable;->ALLOWED_COLUMNS:Lcom/google/common/collect/ImmutableSet;

    const-string v3, "Updates are not allowed."

    invoke-static {v2, p2, v3}, Lcom/android/providers/contacts/util/DbQueryUtils;->checkForSupportedColumns(Ljava/util/Set;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 234
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/VoicemailContentTable;->checkUpdateSupported(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)V

    .line 236
    iget-object v2, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 239
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getWhereClause()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/android/providers/contacts/VoicemailContentTable;->getCallTypeClause()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/android/providers/contacts/util/DbQueryUtils;->concatenateClauses([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "combinedClause":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/VoicemailContentTable;->getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/contacts/VoicemailContentTable;->mTableName:Ljava/lang/String;

    invoke-interface {v2, v3, p2, v0, p4}, Lcom/android/providers/contacts/DatabaseModifier;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method
