.class public final Lcom/google/android/gms/gcm/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Lcom/google/android/gms/gcm/aw;

.field private static final e:[Ljava/lang/String;


# instance fields
.field final a:Lcom/google/android/gms/gcm/ax;

.field final b:Landroid/content/Context;

.field c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "uid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/gcm/aw;->e:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/gcm/aw;->c:I

    .line 112
    new-instance v0, Lcom/google/android/gms/gcm/ax;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/gcm/ax;-><init>(Lcom/google/android/gms/gcm/aw;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/gcm/aw;->a:Lcom/google/android/gms/gcm/ax;

    .line 113
    iput-object p1, p0, Lcom/google/android/gms/gcm/aw;->b:Landroid/content/Context;

    .line 114
    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/gms/gcm/aw;
    .locals 2

    .prologue
    .line 104
    const-class v1, Lcom/google/android/gms/gcm/aw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/gcm/aw;->d:Lcom/google/android/gms/gcm/aw;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/google/android/gms/gcm/aw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/gcm/aw;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/gcm/aw;->d:Lcom/google/android/gms/gcm/aw;

    .line 107
    :cond_0
    sget-object v0, Lcom/google/android/gms/gcm/aw;->d:Lcom/google/android/gms/gcm/aw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 278
    iget-object v0, p0, Lcom/google/android/gms/gcm/aw;->a:Lcom/google/android/gms/gcm/ax;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/ax;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 281
    :try_start_0
    const-string v0, "registrations"

    const-string v2, "package_name = ? AND uid = ? AND reg_id IS NULL"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 289
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 290
    const-string v2, "SELECT reg_id, _id FROM registrations WHERE package_name = ? AND sender_id = ? AND uid = ? ORDER BY timestamp_ms DESC"

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 293
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-le v3, v6, :cond_0

    .line 294
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 295
    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 297
    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 302
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 309
    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0

    .line 302
    :cond_0
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 305
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 306
    const-string v3, "registrations"

    const-string v4, "_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 309
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 310
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Long;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 221
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/aw;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    :goto_0
    return-object v0

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/gcm/aw;->a:Lcom/google/android/gms/gcm/ax;

    invoke-virtual {v1}, Lcom/google/android/gms/gcm/ax;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 225
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 226
    const-string v3, "package_name"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v3, "sender_id"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v3, "uid"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 229
    const-string v3, "reg_id"

    invoke-virtual {v2, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v3, "timestamp_ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 231
    const-string v3, "registrations"

    invoke-virtual {v1, v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 232
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 233
    if-eqz p2, :cond_1

    .line 235
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/gcm/aw;->b(Ljava/lang/String;Ljava/lang/String;I)V

    .line 237
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method final a(J)Ljava/lang/String;
    .locals 5

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/gms/gcm/aw;->a:Lcom/google/android/gms/gcm/ax;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/ax;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 200
    const-string v1, "SELECT reg_id FROM registrations WHERE _id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 201
    const-string v0, "reg_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 203
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 209
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v0

    .line 206
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 137
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/aw;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    :goto_0
    return-object v0

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/gcm/aw;->a:Lcom/google/android/gms/gcm/ax;

    invoke-virtual {v1}, Lcom/google/android/gms/gcm/ax;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 141
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 144
    const-string v3, "SELECT reg_id, _id FROM registrations WHERE package_name = ? AND sender_id = ? AND uid = ? ORDER BY timestamp_ms DESC"

    invoke-virtual {v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 146
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 152
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 149
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method final a(JLjava/lang/String;)V
    .locals 7

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/gms/gcm/aw;->a:Lcom/google/android/gms/gcm/ax;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/ax;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 242
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 243
    const-string v2, "reg_id"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :try_start_0
    const-string v2, "registrations"

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 250
    if-gtz v0, :cond_0

    .line 251
    const-string v0, "GCM/RS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No rows found for rowid: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 255
    return-void

    .line 254
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0
.end method

.method final a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 124
    iget v1, p0, Lcom/google/android/gms/gcm/aw;->c:I

    if-nez v1, :cond_1

    .line 125
    const/4 v0, 0x0

    .line 129
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    iget v1, p0, Lcom/google/android/gms/gcm/aw;->c:I

    if-ne v1, v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/google/android/gms/gcm/aw;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/gcm/ab;->c(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method final a(Ljava/lang/String;I)Z
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 160
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/aw;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    :goto_0
    return v10

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/aw;->a:Lcom/google/android/gms/gcm/ax;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/ax;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 164
    const-string v1, "registrations"

    sget-object v2, Lcom/google/android/gms/gcm/aw;->e:[Ljava/lang/String;

    const-string v3, "package_name = ? AND uid = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v10

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    const-string v8, "1"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 174
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v9

    .line 175
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 176
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v10, v1

    .line 177
    goto :goto_0

    :cond_1
    move v1, v10

    .line 174
    goto :goto_1
.end method

.method final b(Ljava/lang/String;I)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/aw;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 274
    :cond_0
    :goto_0
    return v0

    .line 268
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/gcm/aw;->a:Lcom/google/android/gms/gcm/ax;

    invoke-virtual {v2}, Lcom/google/android/gms/gcm/ax;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 269
    const-string v3, "registrations"

    const-string v4, "package_name = ? AND uid = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 273
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 274
    if-lez v3, :cond_0

    move v0, v1

    goto :goto_0
.end method
