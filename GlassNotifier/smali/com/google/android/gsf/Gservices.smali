.class public Lcom/google/android/gsf/Gservices;
.super Ljava/lang/Object;
.source "Gservices.java"


# static fields
.field public static final CHANGED_ACTION:Ljava/lang/String; = "com.google.gservices.intent.action.GSERVICES_CHANGED"

.field public static final CONTENT_PREFIX_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final DEBUG:Z = false

.field public static final FALSE_PATTERN:Ljava/util/regex/Pattern;

.field public static final OVERRIDE_ACTION:Ljava/lang/String; = "com.google.gservices.intent.action.GSERVICES_OVERRIDE"

.field public static final PERMISSION_READ_GSERVICES:Ljava/lang/String; = "com.google.android.providers.gsf.permission.READ_GSERVICES"

.field public static final TAG:Ljava/lang/String; = "Gservices"

.field public static final TRUE_PATTERN:Ljava/util/regex/Pattern;

.field static final sBooleanCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static sCache:Ljava/util/HashMap;
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

.field static final sFloatCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final sIntCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sInvalidateCache:Ljava/util/concurrent/atomic/AtomicBoolean;

.field static final sLongCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sPreloaded:Z

.field static sPreloadedPrefixes:[Ljava/lang/String;

.field private static sVersionToken:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 49
    const-string v0, "content://com.google.android.gsf.gservices"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/Gservices;->CONTENT_URI:Landroid/net/Uri;

    .line 51
    const-string v0, "content://com.google.android.gsf.gservices/prefix"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/Gservices;->CONTENT_PREFIX_URI:Landroid/net/Uri;

    .line 54
    const-string v0, "^(1|true|t|on|yes|y)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/Gservices;->TRUE_PATTERN:Ljava/util/regex/Pattern;

    .line 56
    const-string v0, "^(0|false|f|off|no|n)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/Gservices;->FALSE_PATTERN:Ljava/util/regex/Pattern;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/android/gsf/Gservices;->sInvalidateCache:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/Gservices;->sBooleanCache:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/Gservices;->sIntCache:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/Gservices;->sLongCache:Ljava/util/HashMap;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/Gservices;->sFloatCache:Ljava/util/HashMap;

    .line 79
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gsf/Gservices;->sPreloadedPrefixes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/android/gsf/Gservices;->sInvalidateCache:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static addNewPrefixesLocked([Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "newPrefixes"    # [Ljava/lang/String;

    .prologue
    .line 366
    sget-object v7, Lcom/google/android/gsf/Gservices;->sPreloadedPrefixes:[Ljava/lang/String;

    array-length v7, v7

    array-length v8, p0

    add-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x4

    div-int/lit8 v7, v7, 0x3

    add-int/lit8 v2, v7, 0x1

    .line 367
    .local v2, "capacity":I
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 369
    .local v6, "newPreloadedPrefixes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v7, Lcom/google/android/gsf/Gservices;->sPreloadedPrefixes:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v0, "addedPrefixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v1, p0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    .line 373
    .local v5, "newPrefix":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 374
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 377
    .end local v5    # "newPrefix":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 378
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    .line 382
    :goto_1
    return-object v7

    .line 381
    :cond_2
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    sput-object v7, Lcom/google/android/gsf/Gservices;->sPreloadedPrefixes:[Ljava/lang/String;

    .line 382
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    goto :goto_1
.end method

.method public static varargs bulkCacheByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "prefixes"    # [Ljava/lang/String;

    .prologue
    .line 343
    array-length v1, p1

    if-nez v1, :cond_0

    .line 362
    :goto_0
    return-void

    .line 347
    :cond_0
    const-class v2, Lcom/google/android/gsf/Gservices;

    monitor-enter v2

    .line 348
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gsf/Gservices;->ensureCacheInitializedLocked(Landroid/content/ContentResolver;)V

    .line 349
    invoke-static {p1}, Lcom/google/android/gsf/Gservices;->addNewPrefixesLocked([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "addedPrefixes":[Ljava/lang/String;
    sget-boolean v1, Lcom/google/android/gsf/Gservices;->sPreloaded:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 354
    :cond_1
    sget-object v1, Lcom/google/android/gsf/Gservices;->sPreloadedPrefixes:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/google/android/gsf/Gservices;->bulkCacheByPrefixLocked(Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 361
    :cond_2
    :goto_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "addedPrefixes":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 355
    .restart local v0    # "addedPrefixes":[Ljava/lang/String;
    :cond_3
    :try_start_1
    array-length v1, v0

    if-eqz v1, :cond_2

    .line 359
    invoke-static {p0, v0}, Lcom/google/android/gsf/Gservices;->bulkCacheByPrefixLocked(Landroid/content/ContentResolver;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static bulkCacheByPrefixLocked(Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "prefixes"    # [Ljava/lang/String;

    .prologue
    .line 390
    sget-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Lcom/google/android/gsf/Gservices;->getStringsByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 391
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gsf/Gservices;->sPreloaded:Z

    .line 392
    return-void
.end method

.method private static ensureCacheInitializedLocked(Landroid/content/ContentResolver;)V
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v1, 0x0

    .line 83
    sget-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 84
    sget-object v0, Lcom/google/android/gsf/Gservices;->sInvalidateCache:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gsf/Gservices;->sVersionToken:Ljava/lang/Object;

    .line 87
    sput-boolean v1, Lcom/google/android/gsf/Gservices;->sPreloaded:Z

    .line 93
    sget-object v0, Lcom/google/android/gsf/Gservices;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/gsf/Gservices$1;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gsf/Gservices$1;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    sget-object v0, Lcom/google/android/gsf/Gservices;->sInvalidateCache:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 110
    sget-object v0, Lcom/google/android/gsf/Gservices;->sBooleanCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 111
    sget-object v0, Lcom/google/android/gsf/Gservices;->sIntCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 112
    sget-object v0, Lcom/google/android/gsf/Gservices;->sLongCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 113
    sget-object v0, Lcom/google/android/gsf/Gservices;->sFloatCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gsf/Gservices;->sVersionToken:Ljava/lang/Object;

    .line 115
    sput-boolean v1, Lcom/google/android/gsf/Gservices;->sPreloaded:Z

    goto :goto_0
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 290
    invoke-static {p0}, Lcom/google/android/gsf/Gservices;->getVersionToken(Landroid/content/ContentResolver;)Ljava/lang/Object;

    move-result-object v3

    .line 291
    .local v3, "version":Ljava/lang/Object;
    sget-object v4, Lcom/google/android/gsf/Gservices;->sBooleanCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, p1, v5}, Lcom/google/android/gsf/Gservices;->getValue(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 292
    .local v0, "cacheValue":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 314
    :goto_0
    return v2

    .line 296
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "valString":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 299
    :cond_1
    move v2, p2

    .line 313
    .local v2, "value":Z
    :goto_1
    sget-object v4, Lcom/google/android/gsf/Gservices;->sBooleanCache:Ljava/util/HashMap;

    invoke-static {v3, v4, p1, v0}, Lcom/google/android/gsf/Gservices;->putValueAndRemoveFromStringCache(Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 300
    .end local v2    # "value":Z
    :cond_2
    sget-object v4, Lcom/google/android/gsf/Gservices;->TRUE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 301
    const/4 v2, 0x1

    .line 302
    .restart local v2    # "value":Z
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 303
    .end local v2    # "value":Z
    :cond_3
    sget-object v4, Lcom/google/android/gsf/Gservices;->FALSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 304
    const/4 v2, 0x0

    .line 305
    .restart local v2    # "value":Z
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 308
    .end local v2    # "value":Z
    :cond_4
    const-string v4, "Gservices"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "attempt to read gservices key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (value \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\") as boolean"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    move v2, p2

    .restart local v2    # "value":Z
    goto :goto_1
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .prologue
    .line 236
    invoke-static {p0}, Lcom/google/android/gsf/Gservices;->getVersionToken(Landroid/content/ContentResolver;)Ljava/lang/Object;

    move-result-object v4

    .line 237
    .local v4, "version":Ljava/lang/Object;
    sget-object v5, Lcom/google/android/gsf/Gservices;->sFloatCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v5, p1, v6}, Lcom/google/android/gsf/Gservices;->getValue(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 238
    .local v0, "cacheValue":Ljava/lang/Float;
    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 256
    :goto_0
    return v3

    .line 242
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "valString":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 246
    move v3, p2

    .line 255
    .local v3, "value":F
    :goto_1
    sget-object v5, Lcom/google/android/gsf/Gservices;->sFloatCache:Ljava/util/HashMap;

    invoke-static {v4, v5, p1, v0}, Lcom/google/android/gsf/Gservices;->putValueAndRemoveFromStringCache(Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 248
    .end local v3    # "value":F
    :cond_1
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 249
    .restart local v3    # "value":F
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 251
    .end local v3    # "value":F
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Ljava/lang/NumberFormatException;
    move v3, p2

    .restart local v3    # "value":F
    goto :goto_1
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 206
    invoke-static {p0}, Lcom/google/android/gsf/Gservices;->getVersionToken(Landroid/content/ContentResolver;)Ljava/lang/Object;

    move-result-object v4

    .line 207
    .local v4, "version":Ljava/lang/Object;
    sget-object v5, Lcom/google/android/gsf/Gservices;->sIntCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, p1, v6}, Lcom/google/android/gsf/Gservices;->getValue(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 208
    .local v0, "cacheValue":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 226
    :goto_0
    return v3

    .line 212
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "valString":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 216
    move v3, p2

    .line 225
    .local v3, "value":I
    :goto_1
    sget-object v5, Lcom/google/android/gsf/Gservices;->sIntCache:Ljava/util/HashMap;

    invoke-static {v4, v5, p1, v0}, Lcom/google/android/gsf/Gservices;->putValueAndRemoveFromStringCache(Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 218
    .end local v3    # "value":I
    :cond_1
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 219
    .restart local v3    # "value":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 221
    .end local v3    # "value":I
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/NumberFormatException;
    move v3, p2

    .restart local v3    # "value":I
    goto :goto_1
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 266
    invoke-static {p0}, Lcom/google/android/gsf/Gservices;->getVersionToken(Landroid/content/ContentResolver;)Ljava/lang/Object;

    move-result-object v3

    .line 267
    .local v3, "version":Ljava/lang/Object;
    sget-object v6, Lcom/google/android/gsf/Gservices;->sLongCache:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v6, p1, v7}, Lcom/google/android/gsf/Gservices;->getValue(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 268
    .local v0, "cacheValue":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 286
    :goto_0
    return-wide v4

    .line 272
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "valString":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 276
    move-wide v4, p2

    .line 285
    .local v4, "value":J
    :goto_1
    sget-object v6, Lcom/google/android/gsf/Gservices;->sLongCache:Ljava/util/HashMap;

    invoke-static {v3, v6, p1, v0}, Lcom/google/android/gsf/Gservices;->putValueAndRemoveFromStringCache(Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 278
    .end local v4    # "value":J
    :cond_1
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 279
    .restart local v4    # "value":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 281
    .end local v4    # "value":J
    :catch_0
    move-exception v1

    .line 282
    .local v1, "e":Ljava/lang/NumberFormatException;
    move-wide v4, p2

    .restart local v4    # "value":J
    goto :goto_1
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 196
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

    .line 128
    const-class v1, Lcom/google/android/gsf/Gservices;

    monitor-enter v1

    .line 129
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gsf/Gservices;->ensureCacheInitializedLocked(Landroid/content/ContentResolver;)V

    .line 130
    sget-object v12, Lcom/google/android/gsf/Gservices;->sVersionToken:Ljava/lang/Object;

    .line 131
    .local v12, "version":Ljava/lang/Object;
    sget-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    sget-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 133
    .local v11, "value":Ljava/lang/String;
    if-eqz v11, :cond_0

    move-object p2, v11

    .end local p2    # "defValue":Ljava/lang/String;
    :cond_0
    monitor-exit v1

    .line 172
    .end local v11    # "value":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p2

    .line 136
    .restart local p2    # "defValue":Ljava/lang/String;
    :cond_2
    sget-object v6, Lcom/google/android/gsf/Gservices;->sPreloadedPrefixes:[Ljava/lang/String;

    .local v6, "arr$":[Ljava/lang/String;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_1
    if-ge v8, v9, :cond_7

    aget-object v10, v6, v8

    .line 137
    .local v10, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 138
    sget-boolean v0, Lcom/google/android/gsf/Gservices;->sPreloaded:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 143
    :cond_3
    sget-object v0, Lcom/google/android/gsf/Gservices;->sPreloadedPrefixes:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/gsf/Gservices;->bulkCacheByPrefixLocked(Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 144
    sget-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 145
    sget-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 146
    .restart local v11    # "value":Ljava/lang/String;
    if-eqz v11, :cond_4

    move-object p2, v11

    .end local p2    # "defValue":Ljava/lang/String;
    :cond_4
    monitor-exit v1

    goto :goto_0

    .line 154
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "prefix":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    .end local v12    # "version":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 151
    .restart local v6    # "arr$":[Ljava/lang/String;
    .restart local v8    # "i$":I
    .restart local v9    # "len$":I
    .restart local v10    # "prefix":Ljava/lang/String;
    .restart local v12    # "version":Ljava/lang/Object;
    .restart local p2    # "defValue":Ljava/lang/String;
    :cond_5
    :try_start_1
    monitor-exit v1

    goto :goto_0

    .line 136
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 154
    .end local v10    # "prefix":Ljava/lang/String;
    :cond_7
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    sget-object v1, Lcom/google/android/gsf/Gservices;->CONTENT_URI:Landroid/net/Uri;

    new-array v4, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 158
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_8

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_9

    .line 159
    :cond_8
    const/4 v0, 0x0

    invoke-static {v12, p1, v0}, Lcom/google/android/gsf/Gservices;->putStringCache(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 171
    if-eqz v7, :cond_1

    .line 172
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 163
    :cond_9
    const/4 v0, 0x1

    :try_start_3
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 164
    .restart local v11    # "value":Ljava/lang/String;
    if-eqz v11, :cond_a

    invoke-virtual {v11, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 166
    move-object v11, p2

    .line 168
    :cond_a
    invoke-static {v12, p1, v11}, Lcom/google/android/gsf/Gservices;->putStringCache(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 169
    if-eqz v11, :cond_c

    .line 171
    .end local v11    # "value":Ljava/lang/String;
    :goto_2
    if-eqz v7, :cond_b

    .line 172
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_b
    move-object p2, v11

    goto :goto_0

    .restart local v11    # "value":Ljava/lang/String;
    :cond_c
    move-object v11, p2

    .line 169
    goto :goto_2

    .line 171
    .end local v11    # "value":Ljava/lang/String;
    :catchall_1
    move-exception v0

    if-eqz v7, :cond_d

    .line 172
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v0
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

    .line 324
    sget-object v1, Lcom/google/android/gsf/Gservices;->CONTENT_PREFIX_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 325
    .local v6, "c":Landroid/database/Cursor;
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    .line 326
    .local v7, "out":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v6, :cond_0

    .line 335
    :goto_0
    return-object v7

    .line 329
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
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

    .line 333
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static getValue(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;TT;>;"
    .local p2, "defValue":Ljava/lang/Object;, "TT;"
    const-class v2, Lcom/google/android/gsf/Gservices;

    monitor-enter v2

    .line 410
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 411
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 412
    .local v0, "value":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    monitor-exit v2

    .line 415
    .end local v0    # "value":Ljava/lang/Object;, "TT;"
    :goto_1
    return-object v1

    .restart local v0    # "value":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object v1, p2

    .line 412
    goto :goto_0

    .line 414
    .end local v0    # "value":Ljava/lang/Object;, "TT;"
    :cond_1
    monitor-exit v2

    .line 415
    const/4 v1, 0x0

    goto :goto_1

    .line 414
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getVersionToken(Landroid/content/ContentResolver;)Ljava/lang/Object;
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 400
    const-class v1, Lcom/google/android/gsf/Gservices;

    monitor-enter v1

    .line 403
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gsf/Gservices;->ensureCacheInitializedLocked(Landroid/content/ContentResolver;)V

    .line 404
    sget-object v0, Lcom/google/android/gsf/Gservices;->sVersionToken:Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static putStringCache(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "version"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 178
    const-class v1, Lcom/google/android/gsf/Gservices;

    monitor-enter v1

    .line 182
    :try_start_0
    sget-object v0, Lcom/google/android/gsf/Gservices;->sVersionToken:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    .line 183
    sget-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_0
    monitor-exit v1

    .line 186
    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static putValueAndRemoveFromStringCache(Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "version"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p1, "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    const-class v1, Lcom/google/android/gsf/Gservices;

    monitor-enter v1

    .line 421
    :try_start_0
    sget-object v0, Lcom/google/android/gsf/Gservices;->sVersionToken:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    .line 422
    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    :cond_0
    monitor-exit v1

    .line 428
    return-void

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
