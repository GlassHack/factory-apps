.class public Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable;
.super Ljava/lang/Object;
.source "GoogleSettingsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/GoogleSettingsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameValueTable"
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "name"

.field public static final VALUE:Ljava/lang/String; = "value"

.field static sCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable;->sCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureCacheInitializedLocked(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;
    .locals 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 62
    sget-object v2, Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable;->sCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;

    .line 63
    .local v0, "cacheValue":Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;
    if-nez v0, :cond_1

    .line 64
    new-instance v0, Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;

    .end local v0    # "cacheValue":Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;
    invoke-direct {v0}, Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;-><init>()V

    .line 65
    .restart local v0    # "cacheValue":Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;
    sget-object v2, Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable;->sCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    move-object v1, v0

    .line 74
    .local v1, "finalCacheValue":Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;
    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable$1;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1}, Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable$1;-><init>(Landroid/os/Handler;Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;)V

    invoke-virtual {p0, p1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 95
    .end local v1    # "finalCacheValue":Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;
    :cond_0
    :goto_0
    return-object v0

    .line 86
    :cond_1
    iget-object v2, v0, Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;->invalidateCache:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    monitor-enter v0

    .line 91
    :try_start_0
    iget-object v2, v0, Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;->valueCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 92
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;->versionToken:Ljava/lang/Object;

    .line 93
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected static getString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 112
    const-class v1, Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable;

    monitor-enter v1

    .line 113
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable;->ensureCacheInitializedLocked(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;

    move-result-object v7

    .line 114
    .local v7, "cacheValue":Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-enter v7

    .line 118
    :try_start_1
    iget-object v10, v7, Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;->versionToken:Ljava/lang/Object;

    .line 119
    .local v10, "version":Ljava/lang/Object;
    iget-object v0, v7, Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;->valueCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, v7, Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;->valueCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 143
    :goto_0
    return-object v0

    .line 114
    .end local v7    # "cacheValue":Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;
    .end local v10    # "version":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 122
    .restart local v7    # "cacheValue":Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;
    .restart local v10    # "version":Ljava/lang/Object;
    :cond_0
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 124
    const/4 v9, 0x0

    .line 125
    .local v9, "value":Ljava/lang/String;
    const/4 v6, 0x0

    .line 127
    .local v6, "c":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_4
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "value"

    aput-object v1, v2, v0

    const-string v3, "name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 130
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 131
    :cond_1
    const/4 v0, 0x0

    invoke-static {v7, v10, p2, v0}, Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable;->putCache(Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 141
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v11

    goto :goto_0

    .line 122
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v9    # "value":Ljava/lang/String;
    .end local v10    # "version":Ljava/lang/Object;
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 135
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v9    # "value":Ljava/lang/String;
    .restart local v10    # "version":Ljava/lang/Object;
    :cond_3
    const/4 v0, 0x0

    :try_start_6
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 136
    invoke-static {v7, v10, p2, v9}, Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable;->putCache(Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 141
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move-object v0, v9

    .line 143
    goto :goto_0

    .line 137
    :catch_0
    move-exception v8

    .line 139
    .local v8, "e":Landroid/database/SQLException;
    :try_start_7
    const-string v0, "GoogleSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 141
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8    # "e":Landroid/database/SQLException;
    :catchall_2
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-static {p0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected static getVersionToken(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/Object;
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 100
    const-class v2, Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable;

    monitor-enter v2

    .line 103
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable;->ensureCacheInitializedLocked(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;

    move-result-object v0

    .line 104
    .local v0, "cacheValue":Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-enter v0

    .line 106
    :try_start_1
    iget-object v1, v0, Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;->versionToken:Ljava/lang/Object;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    .line 104
    .end local v0    # "cacheValue":Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 107
    .restart local v0    # "cacheValue":Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private static putCache(Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "cacheValue"    # Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;
    .param p1, "version"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 181
    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;->versionToken:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;->valueCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_0
    monitor-exit p0

    .line 189
    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static putString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 149
    const-class v4, Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable;

    monitor-enter v4

    .line 150
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable;->ensureCacheInitializedLocked(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;

    move-result-object v0

    .line 151
    .local v0, "cacheValue":Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-static {v0, p2}, Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable;->removeCachedValue(Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;Ljava/lang/String;)V

    .line 157
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 158
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "name"

    invoke-virtual {v2, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v4, "value"

    invoke-virtual {v2, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0, p1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 161
    const/4 v3, 0x1

    .line 169
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    return v3

    .line 151
    .end local v0    # "cacheValue":Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 162
    .restart local v0    # "cacheValue":Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Landroid/database/SQLException;
    const-string v4, "GoogleSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t set key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 165
    .end local v1    # "e":Landroid/database/SQLException;
    :catch_1
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "GoogleSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t set key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static removeCachedValue(Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;Ljava/lang/String;)V
    .locals 1
    .param p0, "cacheValue"    # Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 174
    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;->valueCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    monitor-exit p0

    .line 177
    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
