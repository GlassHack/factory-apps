.class public final Lcom/google/android/gms/wearable/service/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/wearable/service/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/wearable/service/a;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/gms/wearable/service/b;->a:Lcom/google/android/gms/wearable/service/a;

    .line 33
    return-void
.end method

.method private static a(Landroid/database/Cursor;)Lcom/google/android/gms/wearable/ConnectionConfiguration;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 123
    const-string v0, "name"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 125
    const-string v0, "pairedBtAddress"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 127
    const-string v0, "connectionType"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 129
    const-string v0, "role"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 131
    const-string v0, "connectionEnabled"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 134
    new-instance v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;

    const-string v7, "NULL_STRING"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v1, v2

    :cond_0
    const-string v7, "NULL_STRING"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :goto_0
    if-lez v6, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/wearable/ConnectionConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    return-object v0

    :cond_1
    move-object v2, v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/gms/wearable/ConnectionConfiguration;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 36
    if-eqz p1, :cond_2

    .line 38
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/b;->a:Lcom/google/android/gms/wearable/service/a;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/service/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "connectionConfigurations"

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-static {v0}, Lcom/google/android/gms/wearable/service/b;->a(Landroid/database/Cursor;)Lcom/google/android/gms/wearable/ConnectionConfiguration;

    move-result-object v2

    .line 49
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 51
    :cond_1
    return-object v2

    .line 36
    :cond_2
    const-string p1, "NULL_STRING"

    goto :goto_0
.end method

.method public final a()Ljava/util/List;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 86
    const-string v0, "ConnectionConfig"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "ConnectionConfig"

    const-string v1, "loadConnectionConfigs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/b;->a:Lcom/google/android/gms/wearable/service/a;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/service/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "connectionConfigurations"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    invoke-static {v0}, Lcom/google/android/gms/wearable/service/b;->a(Landroid/database/Cursor;)Lcom/google/android/gms/wearable/ConnectionConfiguration;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 100
    return-object v1
.end method

.method public final a(Lcom/google/android/gms/wearable/ConnectionConfiguration;)V
    .locals 5

    .prologue
    .line 68
    const-string v0, "ConnectionConfig"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "ConnectionConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveConnectionConfig="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 72
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->b()Ljava/lang/String;

    move-result-object v1

    .line 75
    :goto_1
    const-string v3, "name"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "pairedBtAddress"

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "connectionType"

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    const-string v0, "role"

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    const-string v0, "connectionEnabled"

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/b;->a:Lcom/google/android/gms/wearable/service/a;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/service/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "connectionConfigurations"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 83
    return-void

    .line 72
    :cond_1
    const-string v0, "NULL_STRING"

    goto :goto_0

    .line 73
    :cond_2
    const-string v1, "NULL_STRING"

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 58
    if-eqz p1, :cond_0

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/b;->a:Lcom/google/android/gms/wearable/service/a;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/service/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "connectionConfigurations"

    const-string v2, "name=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 64
    return v0

    .line 58
    :cond_0
    const-string p1, "NULL_STRING"

    goto :goto_0
.end method
