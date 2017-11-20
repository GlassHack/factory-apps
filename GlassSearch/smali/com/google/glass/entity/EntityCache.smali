.class public Lcom/google/glass/entity/EntityCache;
.super Ljava/lang/Object;
.source "EntityCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/entity/EntityCache$19;,
        Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;,
        Lcom/google/glass/entity/EntityCache$GlasswareChangedBroadcastReceiver;,
        Lcom/google/glass/entity/EntityCache$EntityDataFilterKey;,
        Lcom/google/glass/entity/EntityCache$EntityData;
    }
.end annotation


# static fields
.field public static final ACTION_ENTITY_CACHE_CHANGED:Ljava/lang/String; = "com.google.glass.action.ENTITY_CACHE_CHANGED"

.field private static final DEFAULT_ENTITY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENTITYDATA_TO_ENTITY_FUNCTION:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENTITY_DATA_FILTER_CACHE_SIZE:I = 0x40

.field private static final GLASSWARES_REQUIRING_ENTITY_CACHE_RELOADING:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final HANGOUTS_SHARE_TARGETS_BLACKLIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_PHONE_NUMBER:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field protected static final INTERNAL_ONLY_MIRROR_COMMANDS:[I

.field private static final IS_COMMAND_TARGET:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_FOCUS_ENTITY:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_HANGOUT_ENTITY:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_IN_SHARE_TARGET_BLACKLIST:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_NOT_IN_SHARE_TARGET_BLACKLIST:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_PLUS_ENTITY:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_SHARE_MENU_TARGET:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_SHARE_TARGET:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_SPEAKABLE:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_STARRED:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_VALID_ITEM_TARGET:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_RECENT_CONTACTS:I = 0xa

.field private static final MAX_RECENT_SHARE_TARGETS:I = 0x4

.field public static final MAX_SPEAKABLE_MIRROR_SHARE_TARGETS_PER_SOURCE:I = 0x3

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static packageNameForTest:Ljava/lang/String;

.field private static sharedInstance:Lcom/google/glass/entity/EntityCache;


# instance fields
.field private final boutiqueQueryHelper:Lcom/google/glass/boutique/BoutiqueQueryHelper;

.field private final cacheReloadingExecutor:Ljava/util/concurrent/Executor;

.field private final clock:Lcom/google/glass/time/Clock;

.field private final context:Landroid/content/Context;

.field private enabledMirrorSources:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final entityChangeObserver:Landroid/database/ContentObserver;

.field private final entityDataCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private entityDataCacheVersion:J

.field private final entityDataFilterCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityDataFilterKey;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;>;"
        }
    .end annotation
.end field

.field private final glasswareChangedReceiver:Lcom/google/glass/entity/EntityCache$GlasswareChangedBroadcastReceiver;

.field private hasFocusContacts:Z

.field private final reloadCacheEnqueued:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 70
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 234
    new-instance v0, Lcom/google/android/util/ArraySet;

    invoke-direct {v0}, Lcom/google/android/util/ArraySet;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->HANGOUTS_SHARE_TARGETS_BLACKLIST:Ljava/util/Set;

    .line 236
    sget-object v0, Lcom/google/glass/entity/EntityCache;->HANGOUTS_SHARE_TARGETS_BLACKLIST:Ljava/util/Set;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "PUBLIC"

    aput-object v2, v1, v3

    const-string v2, "DASHER_DOMAIN"

    aput-object v2, v1, v4

    const-string v2, "YOUR_CIRCLES"

    aput-object v2, v1, v5

    .line 237
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 236
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 253
    new-instance v0, Lcom/google/android/util/ArraySet;

    invoke-direct {v0}, Lcom/google/android/util/ArraySet;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->GLASSWARES_REQUIRING_ENTITY_CACHE_RELOADING:Ljava/util/Set;

    .line 256
    sget-object v0, Lcom/google/glass/entity/EntityCache;->GLASSWARES_REQUIRING_ENTITY_CACHE_RELOADING:Ljava/util/Set;

    new-array v1, v5, [Ljava/lang/String;

    sget-object v2, Lcom/google/glass/entity/EntityUtils;->GMAIL_GLASSWARE_SOURCE:Ljava/lang/String;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/glass/entity/EntityUtils;->HANGOUTS_GLASSWARE_SOURCE:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 257
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 256
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 268
    new-instance v0, Lcom/google/glass/entity/EntityCache$1;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$1;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->ENTITYDATA_TO_ENTITY_FUNCTION:Lcom/google/common/base/Function;

    .line 277
    new-instance v0, Lcom/google/glass/entity/EntityCache$2;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$2;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_SPEAKABLE:Lcom/google/common/base/Predicate;

    .line 285
    new-instance v0, Lcom/google/glass/entity/EntityCache$3;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$3;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_STARRED:Lcom/google/common/base/Predicate;

    .line 296
    new-instance v0, Lcom/google/glass/entity/EntityCache$4;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$4;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_PLUS_ENTITY:Lcom/google/common/base/Predicate;

    .line 307
    new-instance v0, Lcom/google/glass/entity/EntityCache$5;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$5;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_IN_SHARE_TARGET_BLACKLIST:Lcom/google/common/base/Predicate;

    .line 319
    sget-object v0, Lcom/google/glass/entity/EntityCache;->IS_IN_SHARE_TARGET_BLACKLIST:Lcom/google/common/base/Predicate;

    .line 320
    invoke-static {v0}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_NOT_IN_SHARE_TARGET_BLACKLIST:Lcom/google/common/base/Predicate;

    .line 326
    new-instance v0, Lcom/google/glass/entity/EntityCache$6;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$6;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_SHARE_TARGET:Lcom/google/common/base/Predicate;

    .line 334
    new-instance v0, Lcom/google/glass/entity/EntityCache$7;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$7;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_SHARE_MENU_TARGET:Lcom/google/common/base/Predicate;

    .line 342
    new-instance v0, Lcom/google/glass/entity/EntityCache$8;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$8;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_FOCUS_ENTITY:Lcom/google/common/base/Predicate;

    .line 350
    new-instance v0, Lcom/google/glass/entity/EntityCache$9;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$9;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->HAS_PHONE_NUMBER:Lcom/google/common/base/Predicate;

    .line 358
    new-instance v0, Lcom/google/glass/entity/EntityCache$10;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$10;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_HANGOUT_ENTITY:Lcom/google/common/base/Predicate;

    .line 366
    new-instance v0, Lcom/google/glass/entity/EntityCache$11;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$11;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_VALID_ITEM_TARGET:Lcom/google/common/base/Predicate;

    .line 374
    new-instance v0, Lcom/google/glass/entity/EntityCache$12;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$12;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_COMMAND_TARGET:Lcom/google/common/base/Predicate;

    .line 382
    new-instance v0, Lcom/google/glass/entity/EntityCache$13;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$13;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->DEFAULT_ENTITY_COMPARATOR:Ljava/util/Comparator;

    .line 918
    new-array v0, v4, [I

    aput v6, v0, v3

    sput-object v0, Lcom/google/glass/entity/EntityCache;->INTERNAL_ONLY_MIRROR_COMMANDS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 483
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    new-instance v1, Lcom/google/glass/boutique/BoutiqueQueryHelper;

    invoke-direct {v1}, Lcom/google/glass/boutique/BoutiqueQueryHelper;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/entity/EntityCache;-><init>(Landroid/content/Context;Lcom/google/glass/time/Clock;Lcom/google/glass/boutique/BoutiqueQueryHelper;)V

    .line 484
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/glass/time/Clock;Lcom/google/glass/boutique/BoutiqueQueryHelper;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clock"    # Lcom/google/glass/time/Clock;
    .param p3, "boutiqueQueryHelper"    # Lcom/google/glass/boutique/BoutiqueQueryHelper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    new-instance v0, Lcom/google/glass/entity/EntityCache$GlasswareChangedBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/google/glass/entity/EntityCache$GlasswareChangedBroadcastReceiver;-><init>(Lcom/google/glass/entity/EntityCache;)V

    iput-object v0, p0, Lcom/google/glass/entity/EntityCache;->glasswareChangedReceiver:Lcom/google/glass/entity/EntityCache$GlasswareChangedBroadcastReceiver;

    .line 442
    new-instance v0, Lcom/google/glass/entity/EntityCache$14;

    const/16 v1, 0x40

    invoke-direct {v0, p0, v1}, Lcom/google/glass/entity/EntityCache$14;-><init>(Lcom/google/glass/entity/EntityCache;I)V

    iput-object v0, p0, Lcom/google/glass/entity/EntityCache;->entityDataFilterCache:Landroid/util/LruCache;

    .line 457
    new-instance v0, Lcom/google/android/util/ArraySet;

    invoke-direct {v0}, Lcom/google/android/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/entity/EntityCache;->enabledMirrorSources:Ljava/util/Set;

    .line 475
    new-instance v0, Lcom/google/glass/async/PriorityThreadFactory;

    const/16 v1, 0x13

    sget-object v2, Lcom/google/glass/entity/EntityCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 477
    invoke-interface {v2}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/entityCacheReloading"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    .line 475
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/entity/EntityCache;->cacheReloadingExecutor:Ljava/util/concurrent/Executor;

    .line 478
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/glass/entity/EntityCache;->reloadCacheEnqueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 488
    iput-object p1, p0, Lcom/google/glass/entity/EntityCache;->context:Landroid/content/Context;

    .line 489
    iput-object p2, p0, Lcom/google/glass/entity/EntityCache;->clock:Lcom/google/glass/time/Clock;

    .line 490
    iput-object p3, p0, Lcom/google/glass/entity/EntityCache;->boutiqueQueryHelper:Lcom/google/glass/boutique/BoutiqueQueryHelper;

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    .line 493
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 494
    new-instance v0, Lcom/google/glass/entity/EntityCache$15;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/google/glass/entity/EntityCache$15;-><init>(Lcom/google/glass/entity/EntityCache;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/entity/EntityCache;->entityChangeObserver:Landroid/database/ContentObserver;

    .line 502
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/entity/EntityCache;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/entity/EntityCache;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/google/glass/entity/EntityCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/entity/EntityCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/entity/EntityCache;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/glass/entity/EntityCache;->requestReloadEntityDataCache()V

    return-void
.end method

.method static synthetic access$300()Ljava/util/Set;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/google/glass/entity/EntityCache;->GLASSWARES_REQUIRING_ENTITY_CACHE_RELOADING:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/entity/EntityCache;Lcom/google/glass/entity/EntityCache$EntityData;Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/entity/EntityCache;
    .param p1, "x1"    # Lcom/google/glass/entity/EntityCache$EntityData;
    .param p2, "x2"    # Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/google/glass/entity/EntityCache;->getRecentTimestamp(Lcom/google/glass/entity/EntityCache$EntityData;Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/google/glass/entity/EntityCache;->DEFAULT_ENTITY_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/util/MimeTypeMatcher;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/util/MimeTypeMatcher;
    .param p1, "x1"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 69
    invoke-static {p0, p1}, Lcom/google/glass/entity/EntityCache;->matchesItem(Lcom/google/glass/util/MimeTypeMatcher;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    return v0
.end method

.method private addUniqueHangoutEntities(Ljava/util/List;I)V
    .locals 9
    .param p2, "maxListSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 757
    .local p1, "communicationTargets":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, p2, :cond_1

    .line 785
    :cond_0
    return-void

    .line 761
    :cond_1
    new-instance v1, Lcom/google/android/util/ArraySet;

    invoke-direct {v1}, Lcom/google/android/util/ArraySet;-><init>()V

    .line 762
    .local v1, "communicationIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/entity/EntityCache$EntityData;

    .line 763
    .local v0, "communicationEntity":Lcom/google/glass/entity/EntityCache$EntityData;
    iget-object v7, v0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v7}, Lcom/google/glass/entity/EntityUtils;->getHangoutsPersonas(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/util/List;

    move-result-object v4

    .line 765
    .local v4, "hangoutsPersonas":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;>;"
    if-eqz v4, :cond_2

    .line 766
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 767
    .local v5, "persona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getPersonaId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 772
    .end local v0    # "communicationEntity":Lcom/google/glass/entity/EntityCache$EntityData;
    .end local v4    # "hangoutsPersonas":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;>;"
    .end local v5    # "persona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :cond_3
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 773
    .local v3, "hangoutsEntitiesToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    invoke-direct {p0}, Lcom/google/glass/entity/EntityCache;->getHangoutEntities()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/entity/EntityCache$EntityData;

    .line 774
    .local v2, "hangoutEntity":Lcom/google/glass/entity/EntityCache$EntityData;
    iget-object v7, v2, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getObfuscatedGaiaId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, v2, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 775
    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getObfuscatedGaiaId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 776
    :cond_5
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 780
    .end local v2    # "hangoutEntity":Lcom/google/glass/entity/EntityCache$EntityData;
    :cond_6
    invoke-virtual {p0, v3}, Lcom/google/glass/entity/EntityCache;->sortShareTargets(Ljava/util/List;)V

    .line 782
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, p2, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 783
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private addUniqueStarredEntities(Ljava/util/List;Ljava/util/List;I)V
    .locals 5
    .param p3, "maxListSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 789
    .local p1, "communicationTargets":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    .local p2, "starredTargets":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, p3, :cond_1

    .line 804
    :cond_0
    return-void

    .line 793
    :cond_1
    new-instance v1, Lcom/google/android/util/ArraySet;

    invoke-direct {v1}, Lcom/google/android/util/ArraySet;-><init>()V

    .line 794
    .local v1, "communicationIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/entity/EntityCache$EntityData;

    .line 795
    .local v0, "communicationEntity":Lcom/google/glass/entity/EntityCache$EntityData;
    iget-object v4, v0, Lcom/google/glass/entity/EntityCache$EntityData;->entityGuid:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 798
    .end local v0    # "communicationEntity":Lcom/google/glass/entity/EntityCache$EntityData;
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, p3, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 799
    const/4 v3, 0x0

    invoke-interface {p2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/entity/EntityCache$EntityData;

    .line 800
    .local v2, "starredEntity":Lcom/google/glass/entity/EntityCache$EntityData;
    iget-object v3, v2, Lcom/google/glass/entity/EntityCache$EntityData;->entityGuid:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 801
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private clearCache()V
    .locals 4

    .prologue
    .line 626
    iget-wide v0, p0, Lcom/google/glass/entity/EntityCache;->entityDataCacheVersion:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/glass/entity/EntityCache;->entityDataCacheVersion:J

    .line 629
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->entityDataFilterCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 632
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 633
    return-void
.end method

.method private extractRecentEntities(Ljava/util/List;Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;I)Ljava/util/List;
    .locals 11
    .param p2, "timestampOptions"    # Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;
    .param p3, "maxRecent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;",
            "Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1133
    .local p1, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    iget-object v7, p0, Lcom/google/glass/entity/EntityCache;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v7}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v7

    sget-wide v9, Lcom/google/glass/entity/EntityProviderConstants;->RECENT_ENTITIES_INTERVAL_MILLIS_CUTOFF:J

    sub-long v2, v7, v9

    .line 1137
    .local v2, "recentBoostCutoffMillis":J
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 1138
    .local v4, "recentEntities":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/entity/EntityCache$EntityData;

    .line 1139
    .local v0, "entityData":Lcom/google/glass/entity/EntityCache$EntityData;
    invoke-direct {p0, v0, p2}, Lcom/google/glass/entity/EntityCache;->getRecentTimestamp(Lcom/google/glass/entity/EntityCache$EntityData;Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;)J

    move-result-wide v8

    cmp-long v8, v8, v2

    if-lez v8, :cond_0

    .line 1140
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1146
    .end local v0    # "entityData":Lcom/google/glass/entity/EntityCache$EntityData;
    :cond_1
    new-instance v7, Lcom/google/glass/entity/EntityCache$17;

    invoke-direct {v7, p0, p2}, Lcom/google/glass/entity/EntityCache$17;-><init>(Lcom/google/glass/entity/EntityCache;Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;)V

    invoke-static {v4, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1176
    invoke-static {p3}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 1177
    .local v6, "retVal":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7, p3}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 1178
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/glass/entity/EntityCache$EntityData;

    .line 1179
    .local v5, "recentEntityData":Lcom/google/glass/entity/EntityCache$EntityData;
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1183
    invoke-interface {p1, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1177
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1186
    .end local v5    # "recentEntityData":Lcom/google/glass/entity/EntityCache$EntityData;
    :cond_2
    return-object v6
.end method

.method private fromCursorToEntityData(Landroid/database/Cursor;Ljava/util/Set;)Lcom/google/glass/entity/EntityCache$EntityData;
    .locals 12
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/glass/entity/EntityCache$EntityData;"
        }
    .end annotation

    .prologue
    .local p2, "enabledSources":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 1234
    :try_start_0
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    .line 1237
    .local v1, "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    if-nez v1, :cond_0

    .line 1267
    .end local v1    # "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :goto_0
    return-object v7

    .line 1242
    .restart local v1    # "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_0
    invoke-static {v1, p2}, Lcom/google/glass/entity/EntityHelper;->removeDisabledPersonas(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Ljava/util/Set;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 1245
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1246
    .local v2, "phoneNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "phone_number"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1247
    .local v3, "primaryPhone":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1248
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1250
    :cond_1
    const-string v8, "secondary_phone_numbers"

    .line 1251
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1250
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1252
    .local v6, "secondaryPhoneListStr":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 1253
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    move v8, v9

    :goto_1
    if-ge v8, v11, :cond_2

    aget-object v5, v10, v8

    .line 1255
    .local v5, "secondaryPhone":Ljava/lang/String;
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1253
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1260
    .end local v5    # "secondaryPhone":Ljava/lang/String;
    :cond_2
    const-string v8, "email"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1262
    .local v4, "sanitizedEmail":Ljava/lang/String;
    new-instance v8, Lcom/google/glass/entity/EntityCache$EntityData;

    invoke-direct {v8, v1, v2, v4}, Lcom/google/glass/entity/EntityCache$EntityData;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v8

    goto :goto_0

    .line 1263
    .end local v1    # "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .end local v2    # "phoneNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "primaryPhone":Ljava/lang/String;
    .end local v4    # "sanitizedEmail":Ljava/lang/String;
    .end local v6    # "secondaryPhoneListStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1266
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v8, Lcom/google/glass/entity/EntityCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Error reading cursor."

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v8, v0, v10, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getEntities(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1103
    .local p0, "input":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/google/glass/entity/EntityCache;->ENTITYDATA_TO_ENTITY_FUNCTION:Lcom/google/common/base/Function;

    invoke-static {v0, v1}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getEntities(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1098
    .local p0, "input":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    sget-object v0, Lcom/google/glass/entity/EntityCache;->ENTITYDATA_TO_ENTITY_FUNCTION:Lcom/google/common/base/Function;

    invoke-static {p0, v0}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getHangoutEntities()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 830
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/base/Predicate;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/glass/entity/EntityCache;->IS_HANGOUT_ENTITY:Lcom/google/common/base/Predicate;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityCache;->getFilteredCachedEntitiesAsList([Lcom/google/common/base/Predicate;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getMatchingItemPredicate(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/common/base/Predicate;
    .locals 1
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ")",
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1191
    if-nez p1, :cond_0

    .line 1192
    sget-object v0, Lcom/google/glass/entity/EntityCache;->IS_VALID_ITEM_TARGET:Lcom/google/common/base/Predicate;

    .line 1194
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/glass/entity/EntityCache$18;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/entity/EntityCache$18;-><init>(Lcom/google/glass/entity/EntityCache;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_0
.end method

.method private declared-synchronized getMatchingShareEntities(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/List;
    .locals 4
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 899
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Lcom/google/common/base/Predicate;

    const/4 v2, 0x0

    .line 900
    invoke-direct {p0, p1}, Lcom/google/glass/entity/EntityCache;->getMatchingItemPredicate(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/common/base/Predicate;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/google/glass/entity/EntityCache;->getFilteredCachedEntitiesAsList([Lcom/google/common/base/Predicate;)Ljava/util/List;

    move-result-object v0

    .line 901
    .local v0, "matchingShareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityCache;->sortShareTargets(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    monitor-exit p0

    return-object v0

    .line 899
    .end local v0    # "matchingShareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private varargs getMessagingTargets([Lcom/google/common/base/Predicate;)Lcom/google/glass/entity/EntityList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;)",
            "Lcom/google/glass/entity/EntityList;"
        }
    .end annotation

    .prologue
    .line 737
    .local p1, "filters":[Lcom/google/common/base/Predicate;, "[Lcom/google/common/base/Predicate<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityCache;->getFilteredCachedEntitiesAsList([Lcom/google/common/base/Predicate;)Ljava/util/List;

    move-result-object v0

    .line 742
    .local v0, "filteredEntities":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    const v5, 0x7fffffff

    invoke-direct {p0, v0, v5}, Lcom/google/glass/entity/EntityCache;->addUniqueHangoutEntities(Ljava/util/List;I)V

    .line 745
    sget-object v5, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;->CREATION_AND_CONTENT_USAGE:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    const/16 v6, 0xa

    invoke-direct {p0, v0, v5, v6}, Lcom/google/glass/entity/EntityCache;->extractRecentEntities(Ljava/util/List;Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;I)Ljava/util/List;

    move-result-object v2

    .line 747
    .local v2, "recentEntities":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 750
    .local v3, "recentEntitySize":I
    invoke-direct {p0, v0}, Lcom/google/glass/entity/EntityCache;->getStarredSubset(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 751
    .local v4, "starredEntities":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityCache;->getMaxSpeakableTargets()I

    move-result v5

    invoke-direct {p0, v2, v4, v5}, Lcom/google/glass/entity/EntityCache;->addUniqueStarredEntities(Ljava/util/List;Ljava/util/List;I)V

    .line 752
    invoke-static {v2}, Lcom/google/glass/entity/EntityCache;->getEntities(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 753
    .local v1, "messagingTargets":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    new-instance v5, Lcom/google/glass/entity/EntityList;

    invoke-direct {v5, v1, v3}, Lcom/google/glass/entity/EntityList;-><init>(Ljava/util/List;I)V

    return-object v5
.end method

.method private getPlusShareTargets(I)Ljava/util/List;
    .locals 4
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1029
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/common/base/Predicate;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/glass/entity/EntityCache;->IS_SHARE_TARGET:Lcom/google/common/base/Predicate;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/google/glass/entity/EntityCache;->IS_PLUS_ENTITY:Lcom/google/common/base/Predicate;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/google/glass/entity/EntityCache;->IS_NOT_IN_SHARE_TARGET_BLACKLIST:Lcom/google/common/base/Predicate;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/google/glass/entity/EntityCache;->getFilteredCachedEntitiesAsList([Lcom/google/common/base/Predicate;)Ljava/util/List;

    move-result-object v0

    .line 1032
    .local v0, "shareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityCache;->sortShareTargets(Ljava/util/List;)V

    .line 1033
    invoke-static {v0, p1}, Lcom/google/glass/entity/EntityCache;->subList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/entity/EntityCache;->getEntities(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getRecentTimestamp(Lcom/google/glass/entity/EntityCache$EntityData;Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;)J
    .locals 4
    .param p1, "entityData"    # Lcom/google/glass/entity/EntityCache$EntityData;
    .param p2, "timestampOptions"    # Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    .prologue
    .line 1120
    sget-object v0, Lcom/google/glass/entity/EntityCache$19;->$SwitchMap$com$google$glass$entity$EntityCache$TimestampFieldOptions:[I

    invoke-virtual {p2}, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1126
    iget-wide v0, p1, Lcom/google/glass/entity/EntityCache$EntityData;->contentUsageTimestampMs:J

    iget-object v2, p1, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getCreationTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 1122
    :pswitch_0
    iget-wide v0, p1, Lcom/google/glass/entity/EntityCache$EntityData;->phoneUsageTimestampMs:J

    goto :goto_0

    .line 1124
    :pswitch_1
    iget-wide v0, p1, Lcom/google/glass/entity/EntityCache$EntityData;->contentUsageTimestampMs:J

    goto :goto_0

    .line 1120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private varargs declared-synchronized getShareTargetsFilteredSorted([Lcom/google/common/base/Predicate;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1062
    .local p1, "predicates":[Lcom/google/common/base/Predicate;, "[Lcom/google/common/base/Predicate<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityCache;->getFilteredCachedEntitiesAsList([Lcom/google/common/base/Predicate;)Ljava/util/List;

    move-result-object v0

    .line 1063
    .local v0, "shareTargetsData":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityCache;->sortShareTargets(Ljava/util/List;)V

    .line 1064
    invoke-static {v0}, Lcom/google/glass/entity/EntityCache;->getEntities(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 1062
    .end local v0    # "shareTargetsData":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static getSharedInstance()Lcom/google/glass/entity/EntityCache;
    .locals 1

    .prologue
    .line 512
    sget-object v0, Lcom/google/glass/entity/EntityCache;->sharedInstance:Lcom/google/glass/entity/EntityCache;

    return-object v0
.end method

.method private getStarredSubset(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 856
    .local p1, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    sget-object v1, Lcom/google/glass/entity/EntityCache;->IS_STARRED:Lcom/google/common/base/Predicate;

    invoke-static {p1, v1}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 857
    .local v0, "starred":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityCache;->sortMessagingTargets(Ljava/util/List;)V

    .line 858
    return-object v0
.end method

.method private static matchesItem(Lcom/google/glass/util/MimeTypeMatcher;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 3
    .param p0, "matcher"    # Lcom/google/glass/util/MimeTypeMatcher;
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    const/4 v1, 0x1

    .line 1211
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "text/plain"

    invoke-virtual {p0, v2}, Lcom/google/glass/util/MimeTypeMatcher;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1228
    :cond_0
    :goto_0
    return v1

    .line 1214
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getHtml()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "text/html"

    invoke-virtual {p0, v2}, Lcom/google/glass/util/MimeTypeMatcher;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1217
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "application/url"

    invoke-virtual {p0, v2}, Lcom/google/glass/util/MimeTypeMatcher;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1221
    :cond_3
    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v2}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 1223
    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/glass/util/MimeTypeMatcher;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1222
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1228
    .end local v0    # "i":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private requestReloadEntityDataCache()V
    .locals 3

    .prologue
    .line 639
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->reloadCacheEnqueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    sget-object v0, Lcom/google/glass/entity/EntityCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Received request to reload entity cache, but dropping as one is already enqueued."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 651
    :goto_0
    return-void

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->cacheReloadingExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/glass/entity/EntityCache$16;

    invoke-direct {v1, p0}, Lcom/google/glass/entity/EntityCache$16;-><init>(Lcom/google/glass/entity/EntityCache;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static setPackageNameForTest(Ljava/lang/String;)V
    .locals 0
    .param p0, "packageNameForTest"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 517
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 518
    sput-object p0, Lcom/google/glass/entity/EntityCache;->packageNameForTest:Ljava/lang/String;

    .line 519
    return-void
.end method

.method public static declared-synchronized setSharedInstance(Lcom/google/glass/entity/EntityCache;)V
    .locals 3
    .param p0, "instance"    # Lcom/google/glass/entity/EntityCache;

    .prologue
    .line 505
    const-class v1, Lcom/google/glass/entity/EntityCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/glass/entity/EntityCache;->sharedInstance:Lcom/google/glass/entity/EntityCache;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Shared instance should only be set once"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 508
    :cond_0
    :try_start_1
    sput-object p0, Lcom/google/glass/entity/EntityCache;->sharedInstance:Lcom/google/glass/entity/EntityCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    monitor-exit v1

    return-void
.end method

.method private sortEntities(Ljava/util/List;Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;)V
    .locals 2
    .param p2, "timestampOptions"    # Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;",
            "Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1087
    .local p1, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v1}, Lcom/google/glass/entity/EntityCache;->extractRecentEntities(Ljava/util/List;Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;I)Ljava/util/List;

    move-result-object v0

    .line 1091
    .local v0, "recentEntities":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    sget-object v1, Lcom/google/glass/entity/EntityCache;->DEFAULT_ENTITY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1092
    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 1093
    return-void
.end method

.method private static subList(Ljava/util/List;I)Ljava/util/List;
    .locals 2
    .param p1, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1281
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {p0, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static trimShareTargets(Ljava/util/List;II)Ljava/util/List;
    .locals 9
    .param p1, "totalMax"    # I
    .param p2, "maxPerSource"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;II)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    const v8, 0x7fffffff

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 971
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    if-lez p1, :cond_0

    move v5, v6

    :goto_0
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 973
    if-lez p2, :cond_1

    :goto_1
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 975
    if-ne p1, v8, :cond_2

    if-ne p2, v8, :cond_2

    .line 1005
    .end local p0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    :goto_2
    return-object p0

    .restart local p0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    :cond_0
    move v5, v7

    .line 972
    goto :goto_0

    :cond_1
    move v6, v7

    .line 973
    goto :goto_1

    .line 979
    :cond_2
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 980
    .local v0, "countsBySource":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 981
    .local v4, "trimmed":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 982
    .local v1, "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, p1, :cond_5

    .end local v1    # "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_4
    move-object p0, v4

    .line 1005
    goto :goto_2

    .line 986
    .restart local v1    # "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_5
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 987
    .local v3, "source":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 988
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    :cond_6
    invoke-static {v1}, Lcom/google/glass/entity/EntityUtils;->isPlusIndividualEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 994
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 995
    .local v2, "newCountForSource":I
    if-gt v2, p2, :cond_3

    .line 999
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    .end local v2    # "newCountForSource":I
    :cond_7
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method


# virtual methods
.method getAllEntities()Ljava/util/List;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1286
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 1287
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    sget-object v1, Lcom/google/glass/entity/EntityCache;->ENTITYDATA_TO_ENTITY_FUNCTION:Lcom/google/common/base/Function;

    invoke-static {v0, v1}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getAllMirrorCommandEntitiesSorted()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1051
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Lcom/google/common/base/Predicate;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/glass/entity/EntityCache;->IS_SHARE_TARGET:Lcom/google/common/base/Predicate;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/glass/entity/EntityCache;->IS_COMMAND_TARGET:Lcom/google/common/base/Predicate;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/entity/EntityCache;->getShareTargetsFilteredSorted([Lcom/google/common/base/Predicate;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllShareTargets()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1042
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Lcom/google/common/base/Predicate;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/glass/entity/EntityCache;->IS_SHARE_TARGET:Lcom/google/common/base/Predicate;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/entity/EntityCache;->getShareTargetsFilteredSorted([Lcom/google/common/base/Predicate;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected varargs getFilteredCachedEntitiesAsList([Lcom/google/common/base/Predicate;)Ljava/util/List;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 849
    .local p1, "predicates":[Lcom/google/common/base/Predicate;, "[Lcom/google/common/base/Predicate<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->entityDataFilterCache:Landroid/util/LruCache;

    new-instance v1, Lcom/google/glass/entity/EntityCache$EntityDataFilterKey;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/entity/EntityCache$EntityDataFilterKey;-><init>(Lcom/google/glass/entity/EntityCache;[Lcom/google/common/base/Predicate;)V

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getLimitedMirrorCommandEntities(II)Lcom/google/common/collect/ListMultimap;
    .locals 11
    .param p1, "maxTotal"    # I
    .param p2, "maxPerSource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ListMultimap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 930
    invoke-static {}, Lcom/google/common/collect/ArrayListMultimap;->create()Lcom/google/common/collect/ArrayListMultimap;

    move-result-object v5

    .line 932
    .local v5, "mm":Lcom/google/common/collect/ListMultimap;, "Lcom/google/common/collect/ListMultimap<Ljava/lang/Integer;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityCache;->getAllMirrorCommandEntitiesSorted()Ljava/util/List;

    move-result-object v1

    .line 933
    .local v1, "allMirrorCommandEntities":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    if-eqz v1, :cond_2

    .line 934
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 935
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 936
    .local v6, "shareTarget":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget-object v9, v6, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    array-length v9, v9

    if-ge v4, v9, :cond_1

    .line 937
    iget-object v9, v6, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    aget-object v0, v9, v4

    .line 938
    .local v0, "acceptedCommand":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    sget-object v9, Lcom/google/glass/entity/EntityCache;->INTERNAL_ONLY_MIRROR_COMMANDS:[I

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->getType()I

    move-result v10

    invoke-static {v9, v10}, Lcom/google/common/primitives/Ints;->contains([II)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 939
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 936
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 944
    :cond_0
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->getType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9, v6}, Lcom/google/common/collect/ListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2

    .line 934
    .end local v0    # "acceptedCommand":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 949
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v6    # "shareTarget":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_2
    invoke-interface {v5}, Lcom/google/common/collect/ListMultimap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 954
    .local v2, "availableCommand":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Lcom/google/common/collect/ListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-static {v9}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v8

    .line 955
    .local v8, "untrimmed":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-static {v8, p1, p2}, Lcom/google/glass/entity/EntityCache;->trimShareTargets(Ljava/util/List;II)Ljava/util/List;

    move-result-object v7

    .line 957
    .local v7, "trimmed":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9, v7}, Lcom/google/common/collect/ListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    goto :goto_3

    .line 960
    .end local v2    # "availableCommand":I
    .end local v7    # "trimmed":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    .end local v8    # "untrimmed":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    :cond_3
    return-object v5
.end method

.method public getMaxSpeakableTargets()I
    .locals 1

    .prologue
    .line 1273
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->ACV:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12c

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x14

    goto :goto_0
.end method

.method public getMirrorCommandEntities()Lcom/google/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ListMultimap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    const v0, 0x7fffffff

    .line 911
    invoke-virtual {p0, v0, v0}, Lcom/google/glass/entity/EntityCache;->getLimitedMirrorCommandEntities(II)Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method getShareTargetEntityData(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/Iterable;
    .locals 2
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 881
    if-nez p1, :cond_0

    .line 882
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 885
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/glass/entity/EntityCache;->getMatchingShareEntities(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/google/glass/entity/EntityCache;->IS_SHARE_MENU_TARGET:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized getShareTargets(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/List;
    .locals 1
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 876
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityCache;->getShareTargetEntityData(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/entity/EntityCache;->getEntities(Ljava/lang/Iterable;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getSpeakableMessagingTargets()Lcom/google/glass/entity/EntityList;
    .locals 3

    .prologue
    .line 706
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Lcom/google/common/base/Predicate;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/glass/entity/EntityCache;->IS_SPEAKABLE:Lcom/google/common/base/Predicate;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/glass/entity/EntityCache;->IS_FOCUS_ENTITY:Lcom/google/common/base/Predicate;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/entity/EntityCache;->getMessagingTargets([Lcom/google/common/base/Predicate;)Lcom/google/glass/entity/EntityList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSpeakableMirrorCommandEntities()Lcom/google/common/collect/ListMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ListMultimap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 906
    .line 907
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityCache;->getMaxSpeakableTargets()I

    move-result v0

    const/4 v1, 0x3

    .line 906
    invoke-virtual {p0, v0, v1}, Lcom/google/glass/entity/EntityCache;->getLimitedMirrorCommandEntities(II)Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getSpeakablePhoneCallTargets()Lcom/google/glass/entity/EntityList;
    .locals 8

    .prologue
    .line 813
    monitor-enter p0

    const/4 v5, 0x3

    :try_start_0
    new-array v5, v5, [Lcom/google/common/base/Predicate;

    const/4 v6, 0x0

    sget-object v7, Lcom/google/glass/entity/EntityCache;->IS_SPEAKABLE:Lcom/google/common/base/Predicate;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lcom/google/glass/entity/EntityCache;->IS_FOCUS_ENTITY:Lcom/google/common/base/Predicate;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Lcom/google/glass/entity/EntityCache;->HAS_PHONE_NUMBER:Lcom/google/common/base/Predicate;

    aput-object v7, v5, v6

    .line 814
    invoke-virtual {p0, v5}, Lcom/google/glass/entity/EntityCache;->getFilteredCachedEntitiesAsList([Lcom/google/common/base/Predicate;)Ljava/util/List;

    move-result-object v3

    .line 817
    .local v3, "speakableEntities":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    sget-object v5, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;->PHONE_USAGE:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    const/16 v6, 0xa

    invoke-direct {p0, v3, v5, v6}, Lcom/google/glass/entity/EntityCache;->extractRecentEntities(Ljava/util/List;Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;I)Ljava/util/List;

    move-result-object v1

    .line 819
    .local v1, "recentEntities":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 822
    .local v2, "recentEntitySize":I
    invoke-direct {p0, v3}, Lcom/google/glass/entity/EntityCache;->getStarredSubset(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 823
    .local v4, "starredEntities":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityCache;->getMaxSpeakableTargets()I

    move-result v5

    invoke-direct {p0, v1, v4, v5}, Lcom/google/glass/entity/EntityCache;->addUniqueStarredEntities(Ljava/util/List;Ljava/util/List;I)V

    .line 824
    invoke-static {v1}, Lcom/google/glass/entity/EntityCache;->getEntities(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 825
    .local v0, "phoneCallTargets":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    new-instance v5, Lcom/google/glass/entity/EntityList;

    invoke-direct {v5, v0, v2}, Lcom/google/glass/entity/EntityList;-><init>(Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v5

    .line 813
    .end local v0    # "phoneCallTargets":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    .end local v1    # "recentEntities":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    .end local v2    # "recentEntitySize":I
    .end local v3    # "speakableEntities":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    .end local v4    # "starredEntities":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method declared-synchronized getSpeakablePlusShareTargets()Lcom/google/glass/entity/EntityList;
    .locals 2

    .prologue
    .line 838
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/glass/entity/EntityList;

    invoke-virtual {p0}, Lcom/google/glass/entity/EntityCache;->getMaxSpeakableTargets()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/glass/entity/EntityCache;->getPlusShareTargets(I)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/entity/EntityList;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSpeakableSendTargets(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/entity/EntityList;
    .locals 3
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 726
    monitor-enter p0

    if-nez p1, :cond_0

    .line 728
    :try_start_0
    new-instance v0, Lcom/google/glass/entity/EntityList;

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/entity/EntityList;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x3

    :try_start_1
    new-array v0, v0, [Lcom/google/common/base/Predicate;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/glass/entity/EntityCache;->IS_SPEAKABLE:Lcom/google/common/base/Predicate;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/glass/entity/EntityCache;->IS_FOCUS_ENTITY:Lcom/google/common/base/Predicate;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-direct {p0, p1}, Lcom/google/glass/entity/EntityCache;->getMatchingItemPredicate(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/common/base/Predicate;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/entity/EntityCache;->getMessagingTargets([Lcom/google/common/base/Predicate;)Lcom/google/glass/entity/EntityList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 726
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getSpeakableShareTargets(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/entity/EntityList;
    .locals 4
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 866
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/glass/entity/EntityList;

    .line 867
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityCache;->getShareTargetEntityData(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/Iterable;

    move-result-object v1

    sget-object v2, Lcom/google/glass/entity/EntityCache;->IS_SPEAKABLE:Lcom/google/common/base/Predicate;

    invoke-static {v1, v2}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/entity/EntityCache;->getEntities(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 868
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityCache;->getMaxSpeakableTargets()I

    move-result v2

    const/4 v3, 0x3

    .line 866
    invoke-static {v1, v2, v3}, Lcom/google/glass/entity/EntityCache;->trimShareTargets(Ljava/util/List;II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/entity/EntityList;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getSpeakableVideoCallTargets()Lcom/google/glass/entity/EntityList;
    .locals 3

    .prologue
    .line 715
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Lcom/google/common/base/Predicate;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/glass/entity/EntityCache;->IS_SPEAKABLE:Lcom/google/common/base/Predicate;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/glass/entity/EntityCache;->IS_FOCUS_ENTITY:Lcom/google/common/base/Predicate;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/entity/EntityCache;->getMessagingTargets([Lcom/google/common/base/Predicate;)Lcom/google/glass/entity/EntityList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVersion()J
    .locals 2

    .prologue
    .line 544
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 545
    iget-wide v0, p0, Lcom/google/glass/entity/EntityCache;->entityDataCacheVersion:J

    return-wide v0
.end method

.method public declared-synchronized getVideoCallTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1018
    monitor-enter p0

    const v0, 0x7fffffff

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/glass/entity/EntityCache;->getPlusShareTargets(I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasFocusContacts()Z
    .locals 1

    .prologue
    .line 550
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/entity/EntityCache;->hasFocusContacts:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isMirrorGlasswareEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "glasswareSource"    # Ljava/lang/String;

    .prologue
    .line 1010
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->enabledMirrorSources:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadEntityDataCache()V
    .locals 1

    .prologue
    .line 554
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityCache;->loadEntityDataCache(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    monitor-exit p0

    return-void

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized loadEntityDataCache(Z)V
    .locals 13
    .param p1, "skipWhenTest"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 559
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    sget-object v0, Lcom/google/glass/entity/EntityCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Not loading entity cache for test"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 563
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 565
    invoke-direct {p0}, Lcom/google/glass/entity/EntityCache;->clearCache()V

    .line 567
    sget-object v0, Lcom/google/glass/entity/EntityCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "loadEntityDataCache started, version %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v11, p0, Lcom/google/glass/entity/EntityCache;->entityDataCacheVersion:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 568
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v9

    .line 569
    .local v9, "startTime":J
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->reloadCacheEnqueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 573
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->boutiqueQueryHelper:Lcom/google/glass/boutique/BoutiqueQueryHelper;

    iget-object v1, p0, Lcom/google/glass/entity/EntityCache;->context:Landroid/content/Context;

    .line 574
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/boutique/BoutiqueQueryHelper;->queryEnabledMirrorSources(Landroid/content/ContentResolver;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/entity/EntityCache;->enabledMirrorSources:Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    const/4 v7, 0x0

    .line 578
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_2
    const-string v5, "share_time DESC,_id ASC"

    .line 579
    .local v5, "orderBy":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/glass/entity/EntityProviderConstants;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 581
    if-nez v7, :cond_2

    .line 583
    sget-object v0, Lcom/google/glass/entity/EntityCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "null cursor returned for share target query"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 597
    if-eqz v7, :cond_0

    .line 598
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 559
    .end local v5    # "orderBy":Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "startTime":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 587
    .restart local v5    # "orderBy":Ljava/lang/String;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "startTime":J
    :cond_2
    :goto_1
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 588
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->enabledMirrorSources:Ljava/util/Set;

    invoke-direct {p0, v7, v0}, Lcom/google/glass/entity/EntityCache;->fromCursorToEntityData(Landroid/database/Cursor;Ljava/util/Set;)Lcom/google/glass/entity/EntityCache$EntityData;

    move-result-object v8

    .line 591
    .local v8, "entityData":Lcom/google/glass/entity/EntityCache$EntityData;
    if-eqz v8, :cond_2

    .line 592
    iget-boolean v0, p0, Lcom/google/glass/entity/EntityCache;->hasFocusContacts:Z

    iget-boolean v1, v8, Lcom/google/glass/entity/EntityCache$EntityData;->isFocusEntity:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/glass/entity/EntityCache;->hasFocusContacts:Z

    .line 593
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 597
    .end local v5    # "orderBy":Ljava/lang/String;
    .end local v8    # "entityData":Lcom/google/glass/entity/EntityCache$EntityData;
    :catchall_1
    move-exception v0

    if-eqz v7, :cond_3

    .line 598
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 597
    .restart local v5    # "orderBy":Ljava/lang/String;
    :cond_4
    if-eqz v7, :cond_5

    .line 598
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 602
    :cond_5
    sget-object v0, Lcom/google/glass/entity/EntityCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "loadEntityDataCache finished: %sms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/entity/EntityCache;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v4}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v11, v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 606
    new-instance v6, Landroid/content/Intent;

    const-string v0, "com.google.glass.action.ENTITY_CACHE_CHANGED"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 612
    .local v6, "broadcast":Landroid/content/Intent;
    sget-object v0, Lcom/google/glass/entity/EntityCache;->packageNameForTest:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->context:Landroid/content/Context;

    .line 613
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 612
    :goto_2
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/entity/EntityCache;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v6}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 613
    :cond_6
    sget-object v0, Lcom/google/glass/entity/EntityCache;->packageNameForTest:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public registerSyncChanged()V
    .locals 4

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/glass/entity/EntityProviderConstants;->URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/glass/entity/EntityCache;->entityChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 695
    iget-object v1, p0, Lcom/google/glass/entity/EntityCache;->glasswareChangedReceiver:Lcom/google/glass/entity/EntityCache$GlasswareChangedBroadcastReceiver;

    .line 696
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 697
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/entity/EntityCache;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v2

    .line 695
    invoke-virtual {v1, v0, v2}, Lcom/google/glass/entity/EntityCache$GlasswareChangedBroadcastReceiver;->registerAsync(Ljava/util/concurrent/Executor;Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 698
    return-void
.end method

.method public declared-synchronized setEntityDataCacheForTest(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 618
    .local p1, "testData":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 619
    invoke-direct {p0}, Lcom/google/glass/entity/EntityCache;->clearCache()V

    .line 620
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 621
    sget-object v0, Lcom/google/glass/entity/EntityCache;->IS_FOCUS_ENTITY:Lcom/google/common/base/Predicate;

    invoke-static {p1, v0}, Lcom/google/common/collect/Iterables;->any(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/entity/EntityCache;->hasFocusContacts:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    monitor-exit p0

    return-void

    .line 618
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method sortMessagingTargets(Ljava/util/List;)V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1078
    .local p1, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    sget-object v0, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;->CONTENT_USAGE:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    invoke-direct {p0, p1, v0}, Lcom/google/glass/entity/EntityCache;->sortEntities(Ljava/util/List;Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;)V

    .line 1079
    return-void
.end method

.method sortShareTargets(Ljava/util/List;)V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1071
    .local p1, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    sget-object v0, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;->CREATION_AND_CONTENT_USAGE:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    invoke-direct {p0, p1, v0}, Lcom/google/glass/entity/EntityCache;->sortEntities(Ljava/util/List;Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;)V

    .line 1072
    return-void
.end method
