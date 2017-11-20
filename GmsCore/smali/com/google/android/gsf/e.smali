.class public Lcom/google/android/gsf/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;

.field private static e:Ljava/util/HashMap;

.field private static f:Ljava/lang/Object;

.field private static g:[Ljava/lang/String;

.field private static h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 48
    const-string v0, "content://com.google.android.gsf.gservices"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/e;->a:Landroid/net/Uri;

    .line 50
    const-string v0, "content://com.google.android.gsf.gservices/prefix"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/e;->b:Landroid/net/Uri;

    .line 53
    const-string v0, "^(1|true|t|on|yes|y)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/e;->c:Ljava/util/regex/Pattern;

    .line 55
    const-string v0, "^(0|false|f|off|no|n)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/e;->d:Ljava/util/regex/Pattern;

    .line 60
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gsf/e;->g:[Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gsf/e;->h:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 189
    :cond_0
    :goto_0
    return p2

    .line 187
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 223
    :cond_0
    :goto_0
    return-wide p2

    .line 221
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/ContentResolver;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 289
    invoke-static {}, Lcom/google/android/gsf/e;->c()V

    .line 291
    const-class v1, Lcom/google/android/gsf/e;

    monitor-enter v1

    .line 294
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gsf/e;->b(Landroid/content/ContentResolver;)V

    .line 295
    sget-object v0, Lcom/google/android/gsf/e;->f:Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 37
    sput-object p0, Lcom/google/android/gsf/e;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 121
    invoke-static {}, Lcom/google/android/gsf/e;->c()V

    .line 124
    const-class v1, Lcom/google/android/gsf/e;

    monitor-enter v1

    .line 125
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gsf/e;->b(Landroid/content/ContentResolver;)V

    .line 126
    sget-object v6, Lcom/google/android/gsf/e;->f:Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/google/android/gsf/e;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    sget-object v0, Lcom/google/android/gsf/e;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    if-eqz v0, :cond_0

    move-object p2, v0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :cond_1
    :goto_0
    return-object p2

    .line 131
    :cond_2
    monitor-exit v1

    .line 135
    sget-object v1, Lcom/google/android/gsf/e;->g:[Ljava/lang/String;

    array-length v4, v1

    move v0, v3

    :goto_1
    if-ge v0, v4, :cond_3

    aget-object v5, v1, v0

    .line 136
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 141
    :cond_3
    sget-object v1, Lcom/google/android/gsf/e;->a:Landroid/net/Uri;

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v3

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 143
    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_5

    .line 144
    :cond_4
    sget-object v0, Lcom/google/android/gsf/e;->e:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 159
    if-eqz v1, :cond_1

    .line 160
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 148
    :cond_5
    const/4 v0, 0x1

    :try_start_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    const-class v2, Lcom/google/android/gsf/e;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 153
    :try_start_3
    sget-object v3, Lcom/google/android/gsf/e;->f:Ljava/lang/Object;

    if-ne v6, v3, :cond_6

    .line 154
    sget-object v3, Lcom/google/android/gsf/e;->e:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_6
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 157
    if-eqz v0, :cond_7

    move-object p2, v0

    .line 159
    :cond_7
    if-eqz v1, :cond_1

    .line 160
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 156
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 159
    :catchall_2
    move-exception v0

    if-eqz v1, :cond_8

    .line 160
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method static synthetic a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/android/gsf/e;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method public static varargs a(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 249
    invoke-static {}, Lcom/google/android/gsf/e;->c()V

    .line 251
    sget-object v1, Lcom/google/android/gsf/e;->b:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 252
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 253
    if-nez v1, :cond_0

    .line 262
    :goto_0
    return-object v0

    .line 256
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 260
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/e;->h:Landroid/content/Context;

    .line 98
    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return p2

    .line 230
    :cond_1
    sget-object v1, Lcom/google/android/gsf/e;->c:Ljava/util/regex/Pattern;

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
    sget-object v1, Lcom/google/android/gsf/e;->d:Ljava/util/regex/Pattern;

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

    const-string v3, "attempt to read gservices key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (value \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\") as boolean"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static b(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 199
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 206
    :cond_0
    :goto_0
    return v0

    .line 204
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static b(Landroid/content/ContentResolver;)V
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/google/android/gsf/e;->e:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/e;->e:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gsf/e;->f:Ljava/lang/Object;

    .line 71
    new-instance v0, Lcom/google/android/gsf/f;

    const-string v1, "Gservices"

    invoke-direct {v0, v1, p0}, Lcom/google/android/gsf/f;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;)V

    invoke-virtual {v0}, Lcom/google/android/gsf/f;->start()V

    .line 89
    :cond_0
    return-void
.end method

.method public static varargs b(Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 270
    invoke-static {}, Lcom/google/android/gsf/e;->c()V

    .line 272
    invoke-static {p0, p1}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 274
    const-class v1, Lcom/google/android/gsf/e;

    monitor-enter v1

    .line 275
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gsf/e;->b(Landroid/content/ContentResolver;)V

    .line 276
    sput-object p1, Lcom/google/android/gsf/e;->g:[Ljava/lang/String;

    .line 277
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 278
    sget-object v3, Lcom/google/android/gsf/e;->e:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method static synthetic b()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/android/gsf/e;->g:[Ljava/lang/String;

    return-object v0
.end method

.method private static c()V
    .locals 3

    .prologue
    .line 106
    sget-object v0, Lcom/google/android/gsf/e;->h:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/google/android/gsf/e;->h:Landroid/content/Context;

    const-string v1, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    const-string v2, "attempting to read gservices without permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    return-void
.end method
