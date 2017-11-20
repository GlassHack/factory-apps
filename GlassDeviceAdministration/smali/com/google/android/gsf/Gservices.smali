.class public Lcom/google/android/gsf/Gservices;
.super Ljava/lang/Object;
.source "Gservices.java"


# static fields
.field public static final CHANGED_ACTION:Ljava/lang/String; = "com.google.gservices.intent.action.GSERVICES_CHANGED"

.field public static final CONTENT_PREFIX_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FALSE_PATTERN:Ljava/util/regex/Pattern;

.field public static final OVERRIDE_ACTION:Ljava/lang/String; = "com.google.gservices.intent.action.GSERVICES_OVERRIDE"

.field public static final PERMISSION_READ_GSERVICES:Ljava/lang/String; = "com.google.android.providers.gsf.permission.READ_GSERVICES"

.field public static final TAG:Ljava/lang/String; = "Gservices"

.field public static final TRUE_PATTERN:Ljava/util/regex/Pattern;

.field private static sCache:Ljava/util/HashMap;
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

.field private static sPreCachePermissionCheckContext:Landroid/content/Context;

.field private static sPreloadedPrefixes:[Ljava/lang/String;

.field private static sVersionToken:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 48
    const-string v0, "content://com.google.android.gsf.gservices"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/Gservices;->CONTENT_URI:Landroid/net/Uri;

    .line 50
    const-string v0, "content://com.google.android.gsf.gservices/prefix"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/Gservices;->CONTENT_PREFIX_URI:Landroid/net/Uri;

    .line 53
    const-string v0, "^(1|true|t|on|yes|y)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/Gservices;->TRUE_PATTERN:Ljava/util/regex/Pattern;

    .line 55
    const-string v0, "^(0|false|f|off|no|n)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/Gservices;->FALSE_PATTERN:Ljava/util/regex/Pattern;

    .line 60
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gsf/Gservices;->sPreloadedPrefixes:[Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gsf/Gservices;->sPreCachePermissionCheckContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 37
    sput-object p0, Lcom/google/android/gsf/Gservices;->sVersionToken:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/android/gsf/Gservices;->sPreloadedPrefixes:[Ljava/lang/String;

    return-object v0
.end method

.method public static varargs bulkCacheByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "prefixes"    # [Ljava/lang/String;

    .prologue
    .line 270
    invoke-static {}, Lcom/google/android/gsf/Gservices;->maybeEnforceCalingOrSelfPermission()V

    .line 272
    invoke-static {p0, p1}, Lcom/google/android/gsf/Gservices;->getStringsByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 274
    .local v0, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v4, Lcom/google/android/gsf/Gservices;

    monitor-enter v4

    .line 275
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gsf/Gservices;->ensureCacheInitializedLocked(Landroid/content/ContentResolver;)V

    .line 276
    sput-object p1, Lcom/google/android/gsf/Gservices;->sPreloadedPrefixes:[Ljava/lang/String;

    .line 277
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 278
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v3, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 280
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    return-void
.end method

.method public static enablePreCachePermissionChecking(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/Gservices;->sPreCachePermissionCheckContext:Landroid/content/Context;

    .line 98
    return-void
.end method

.method private static ensureCacheInitializedLocked(Landroid/content/ContentResolver;)V
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 64
    sget-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gsf/Gservices;->sVersionToken:Ljava/lang/Object;

    .line 71
    new-instance v0, Lcom/google/android/gsf/Gservices$1;

    const-string v1, "Gservices"

    invoke-direct {v0, v1, p0}, Lcom/google/android/gsf/Gservices$1;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;)V

    invoke-virtual {v0}, Lcom/google/android/gsf/Gservices$1;->start()V

    .line 89
    :cond_0
    return-void
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 227
    invoke-static {p0, p1}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "valString":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    .end local p2    # "defValue":Z
    :cond_0
    :goto_0
    return p2

    .line 230
    .restart local p2    # "defValue":Z
    :cond_1
    sget-object v1, Lcom/google/android/gsf/Gservices;->TRUE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    const/4 p2, 0x1

    goto :goto_0

    .line 232
    :cond_2
    sget-object v1, Lcom/google/android/gsf/Gservices;->FALSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 233
    const/4 p2, 0x0

    goto :goto_0

    .line 236
    :cond_3
    const-string v1, "Gservices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempt to read gservices key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (value \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\") as boolean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .prologue
    .line 199
    invoke-static {p0, p1}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "valString":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 206
    .local v2, "value":F
    :goto_0
    return v2

    .end local v2    # "value":F
    :cond_0
    move v2, p2

    .line 202
    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/NumberFormatException;
    move v2, p2

    .restart local v2    # "value":F
    goto :goto_0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 182
    invoke-static {p0, p1}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "valString":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 189
    .local v2, "value":I
    :goto_0
    return v2

    .end local v2    # "value":I
    :cond_0
    move v2, p2

    .line 185
    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/NumberFormatException;
    move v2, p2

    .restart local v2    # "value":I
    goto :goto_0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 216
    invoke-static {p0, p1}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "valString":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 223
    .local v2, "value":J
    :goto_0
    return-wide v2

    .end local v2    # "value":J
    :cond_0
    move-wide v2, p2

    .line 219
    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/NumberFormatException;
    move-wide v2, p2

    .restart local v2    # "value":J
    goto :goto_0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    invoke-static {}, Lcom/google/android/gsf/Gservices;->maybeEnforceCalingOrSelfPermission()V

    .line 124
    const-class v1, Lcom/google/android/gsf/Gservices;

    monitor-enter v1

    .line 125
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gsf/Gservices;->ensureCacheInitializedLocked(Landroid/content/ContentResolver;)V

    .line 126
    sget-object v12, Lcom/google/android/gsf/Gservices;->sVersionToken:Ljava/lang/Object;

    .line 127
    .local v12, "version":Ljava/lang/Object;
    sget-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    sget-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 129
    .local v11, "value":Ljava/lang/String;
    if-eqz v11, :cond_0

    move-object p2, v11

    .end local p2    # "defValue":Ljava/lang/String;
    :cond_0
    monitor-exit v1

    .line 160
    .end local v11    # "value":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p2

    .line 131
    .restart local p2    # "defValue":Ljava/lang/String;
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    sget-object v6, Lcom/google/android/gsf/Gservices;->sPreloadedPrefixes:[Ljava/lang/String;

    .local v6, "arr$":[Ljava/lang/String;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_1
    if-ge v8, v9, :cond_3

    aget-object v10, v6, v8

    .line 136
    .local v10, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 131
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "prefix":Ljava/lang/String;
    .end local v12    # "version":Ljava/lang/Object;
    .end local p2    # "defValue":Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 141
    .restart local v6    # "arr$":[Ljava/lang/String;
    .restart local v8    # "i$":I
    .restart local v9    # "len$":I
    .restart local v12    # "version":Ljava/lang/Object;
    .restart local p2    # "defValue":Ljava/lang/String;
    :cond_3
    sget-object v1, Lcom/google/android/gsf/Gservices;->CONTENT_URI:Landroid/net/Uri;

    new-array v4, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 143
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_4

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_5

    .line 144
    :cond_4
    sget-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 159
    if-eqz v7, :cond_1

    .line 160
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 148
    :cond_5
    const/4 v0, 0x1

    :try_start_3
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 149
    .restart local v11    # "value":Ljava/lang/String;
    const-class v1, Lcom/google/android/gsf/Gservices;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 153
    :try_start_4
    sget-object v0, Lcom/google/android/gsf/Gservices;->sVersionToken:Ljava/lang/Object;

    if-ne v12, v0, :cond_6

    .line 154
    sget-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_6
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 157
    if-eqz v11, :cond_9

    .line 159
    .end local v11    # "value":Ljava/lang/String;
    :goto_2
    if-eqz v7, :cond_7

    .line 160
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object p2, v11

    goto :goto_0

    .line 156
    .restart local v11    # "value":Ljava/lang/String;
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 159
    .end local v11    # "value":Ljava/lang/String;
    :catchall_2
    move-exception v0

    if-eqz v7, :cond_8

    .line 160
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .restart local v11    # "value":Ljava/lang/String;
    :cond_9
    move-object v11, p2

    .line 157
    goto :goto_2
.end method

.method public static varargs getStringsByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "prefixes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 249
    invoke-static {}, Lcom/google/android/gsf/Gservices;->maybeEnforceCalingOrSelfPermission()V

    .line 251
    sget-object v1, Lcom/google/android/gsf/Gservices;->CONTENT_PREFIX_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 252
    .local v6, "c":Landroid/database/Cursor;
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    .line 253
    .local v7, "out":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v6, :cond_0

    .line 262
    :goto_0
    return-object v7

    .line 256
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 260
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getVersionToken(Landroid/content/ContentResolver;)Ljava/lang/Object;
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 289
    invoke-static {}, Lcom/google/android/gsf/Gservices;->maybeEnforceCalingOrSelfPermission()V

    .line 291
    const-class v1, Lcom/google/android/gsf/Gservices;

    monitor-enter v1

    .line 294
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gsf/Gservices;->ensureCacheInitializedLocked(Landroid/content/ContentResolver;)V

    .line 295
    sget-object v0, Lcom/google/android/gsf/Gservices;->sVersionToken:Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static maybeEnforceCalingOrSelfPermission()V
    .locals 3

    .prologue
    .line 106
    sget-object v0, Lcom/google/android/gsf/Gservices;->sPreCachePermissionCheckContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/google/android/gsf/Gservices;->sPreCachePermissionCheckContext:Landroid/content/Context;

    const-string v1, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    const-string v2, "attempting to read gservices without permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    return-void
.end method
