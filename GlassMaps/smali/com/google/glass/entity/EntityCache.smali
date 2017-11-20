.class public Lcom/google/glass/entity/EntityCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_ENTITY_CACHE_CHANGED:Ljava/lang/String; = "com.google.glass.action.ENTITY_CACHE_CHANGED"

.field private static final DEFAULT_ENTITY_COMPARATOR:Ljava/util/Comparator;

.field private static final ENTITYDATA_TO_ENTITY_FUNCTION:Lcom/google/common/base/w;

.field private static final ENTITY_DATA_FILTER_CACHE_SIZE:I = 0x40

.field private static final GLASSWARES_REQUIRING_ENTITY_CACHE_RELOADING:Ljava/util/Set;

.field public static final HANGOUTS_SHARE_TARGETS_BLACKLIST:Ljava/util/Set;

.field private static final HAS_PHONE_NUMBER:Lcom/google/common/base/aj;

.field protected static final INTERNAL_ONLY_MIRROR_COMMANDS:[I

.field private static final IS_COMMAND_TARGET:Lcom/google/common/base/aj;

.field private static final IS_FOCUS_ENTITY:Lcom/google/common/base/aj;

.field private static final IS_HANGOUT_ENTITY:Lcom/google/common/base/aj;

.field private static final IS_IN_SHARE_TARGET_BLACKLIST:Lcom/google/common/base/aj;

.field private static final IS_NOT_IN_SHARE_TARGET_BLACKLIST:Lcom/google/common/base/aj;

.field private static final IS_PLUS_ENTITY:Lcom/google/common/base/aj;

.field private static final IS_SHARE_MENU_TARGET:Lcom/google/common/base/aj;

.field private static final IS_SHARE_TARGET:Lcom/google/common/base/aj;

.field private static final IS_SPEAKABLE:Lcom/google/common/base/aj;

.field private static final IS_STARRED:Lcom/google/common/base/aj;

.field private static final IS_VALID_ITEM_TARGET:Lcom/google/common/base/aj;

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

.field private final entityChangeObserver:Landroid/database/ContentObserver;

.field private final entityDataCache:Ljava/util/List;

.field private entityDataCacheVersion:J

.field private final entityDataFilterCache:Landroid/util/LruCache;

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
    new-instance v0, Lcom/google/android/a/a;

    invoke-direct {v0}, Lcom/google/android/a/a;-><init>()V

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
    new-instance v0, Lcom/google/android/a/a;

    invoke-direct {v0}, Lcom/google/android/a/a;-><init>()V

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

    sput-object v0, Lcom/google/glass/entity/EntityCache;->ENTITYDATA_TO_ENTITY_FUNCTION:Lcom/google/common/base/w;

    .line 277
    new-instance v0, Lcom/google/glass/entity/EntityCache$2;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$2;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_SPEAKABLE:Lcom/google/common/base/aj;

    .line 285
    new-instance v0, Lcom/google/glass/entity/EntityCache$3;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$3;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_STARRED:Lcom/google/common/base/aj;

    .line 296
    new-instance v0, Lcom/google/glass/entity/EntityCache$4;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$4;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_PLUS_ENTITY:Lcom/google/common/base/aj;

    .line 307
    new-instance v0, Lcom/google/glass/entity/EntityCache$5;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$5;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_IN_SHARE_TARGET_BLACKLIST:Lcom/google/common/base/aj;

    .line 319
    sget-object v0, Lcom/google/glass/entity/EntityCache;->IS_IN_SHARE_TARGET_BLACKLIST:Lcom/google/common/base/aj;

    .line 320
    invoke-static {v0}, Lcom/google/common/base/Predicates;->a(Lcom/google/common/base/aj;)Lcom/google/common/base/aj;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_NOT_IN_SHARE_TARGET_BLACKLIST:Lcom/google/common/base/aj;

    .line 326
    new-instance v0, Lcom/google/glass/entity/EntityCache$6;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$6;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_SHARE_TARGET:Lcom/google/common/base/aj;

    .line 334
    new-instance v0, Lcom/google/glass/entity/EntityCache$7;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$7;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_SHARE_MENU_TARGET:Lcom/google/common/base/aj;

    .line 342
    new-instance v0, Lcom/google/glass/entity/EntityCache$8;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$8;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_FOCUS_ENTITY:Lcom/google/common/base/aj;

    .line 350
    new-instance v0, Lcom/google/glass/entity/EntityCache$9;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$9;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->HAS_PHONE_NUMBER:Lcom/google/common/base/aj;

    .line 358
    new-instance v0, Lcom/google/glass/entity/EntityCache$10;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$10;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_HANGOUT_ENTITY:Lcom/google/common/base/aj;

    .line 366
    new-instance v0, Lcom/google/glass/entity/EntityCache$11;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$11;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_VALID_ITEM_TARGET:Lcom/google/common/base/aj;

    .line 374
    new-instance v0, Lcom/google/glass/entity/EntityCache$12;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$12;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_COMMAND_TARGET:Lcom/google/common/base/aj;

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
    new-instance v0, Lcom/google/android/a/a;

    invoke-direct {v0}, Lcom/google/android/a/a;-><init>()V

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

    .prologue
    .line 69
    invoke-static {p0, p1}, Lcom/google/glass/entity/EntityCache;->matchesItem(Lcom/google/glass/util/MimeTypeMatcher;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    return v0
.end method

.method private addUniqueHangoutEntities(Ljava/util/List;I)V
    .locals 5

    .prologue
    .line 757
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p2, :cond_1

    .line 785
    :cond_0
    return-void

    .line 761
    :cond_1
    new-instance v1, Lcom/google/android/a/a;

    invoke-direct {v1}, Lcom/google/android/a/a;-><init>()V

    .line 762
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/entity/EntityCache$EntityData;

    .line 763
    iget-object v0, v0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->getHangoutsPersonas(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/util/List;

    move-result-object v0

    .line 765
    if-eqz v0, :cond_2

    .line 766
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 767
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getPersonaId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 772
    :cond_3
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 773
    invoke-direct {p0}, Lcom/google/glass/entity/EntityCache;->getHangoutEntities()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/entity/EntityCache$EntityData;

    .line 774
    iget-object v4, v0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getObfuscatedGaiaId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 775
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getObfuscatedGaiaId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 776
    :cond_5
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 780
    :cond_6
    invoke-virtual {p0, v2}, Lcom/google/glass/entity/EntityCache;->sortShareTargets(Ljava/util/List;)V

    .line 782
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private addUniqueStarredEntities(Ljava/util/List;Ljava/util/List;I)V
    .locals 3

    .prologue
    .line 789
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p3, :cond_1

    .line 804
    :cond_0
    return-void

    .line 793
    :cond_1
    new-instance v1, Lcom/google/android/a/a;

    invoke-direct {v1}, Lcom/google/android/a/a;-><init>()V

    .line 794
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/entity/EntityCache$EntityData;

    .line 795
    iget-object v0, v0, Lcom/google/glass/entity/EntityCache$EntityData;->entityGuid:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 798
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p3, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 799
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/entity/EntityCache$EntityData;

    .line 800
    iget-object v2, v0, Lcom/google/glass/entity/EntityCache$EntityData;->entityGuid:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 801
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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
    .locals 7

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/google/glass/entity/EntityProviderConstants;->RECENT_ENTITIES_INTERVAL_MILLIS_CUTOFF:J

    sub-long v1, v0, v2

    .line 1137
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1138
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/entity/EntityCache$EntityData;

    .line 1139
    invoke-direct {p0, v0, p2}, Lcom/google/glass/entity/EntityCache;->getRecentTimestamp(Lcom/google/glass/entity/EntityCache$EntityData;Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;)J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-lez v5, :cond_0

    .line 1140
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1146
    :cond_1
    new-instance v0, Lcom/google/glass/entity/EntityCache$17;

    invoke-direct {v0, p0, p2}, Lcom/google/glass/entity/EntityCache$17;-><init>(Lcom/google/glass/entity/EntityCache;Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1176
    invoke-static {p3}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1177
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1178
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/entity/EntityCache$EntityData;

    .line 1179
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1183
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1177
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1186
    :cond_2
    return-object v2
.end method

.method private fromCursorToEntityData(Landroid/database/Cursor;Ljava/util/Set;)Lcom/google/glass/entity/EntityCache$EntityData;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1234
    :try_start_0
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v3

    .line 1237
    if-nez v3, :cond_0

    .line 1267
    :goto_0
    return-object v0

    .line 1242
    :cond_0
    invoke-static {v3, p2}, Lcom/google/glass/entity/EntityHelper;->removeDisabledPersonas(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Ljava/util/Set;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 1245
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 1246
    const-string v1, "phone_number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1247
    if-eqz v1, :cond_1

    .line 1248
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1250
    :cond_1
    const-string v1, "secondary_phone_numbers"

    .line 1251
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1250
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1252
    if-eqz v1, :cond_2

    .line 1253
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_2

    aget-object v7, v5, v1

    .line 1255
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1253
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1260
    :cond_2
    const-string v1, "email"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1262
    new-instance v1, Lcom/google/glass/entity/EntityCache$EntityData;

    invoke-direct {v1, v3, v4, v5}, Lcom/google/glass/entity/EntityCache$EntityData;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 1263
    :catch_0
    move-exception v1

    .line 1266
    sget-object v3, Lcom/google/glass/entity/EntityCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Error reading cursor."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v3, v1, v4, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getEntities(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2

    .prologue
    .line 1103
    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/google/glass/entity/EntityCache;->ENTITYDATA_TO_ENTITY_FUNCTION:Lcom/google/common/base/w;

    invoke-static {v0, v1}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/w;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getEntities(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1098
    sget-object v0, Lcom/google/glass/entity/EntityCache;->ENTITYDATA_TO_ENTITY_FUNCTION:Lcom/google/common/base/w;

    invoke-static {p0, v0}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/w;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getHangoutEntities()Ljava/util/Collection;
    .locals 3

    .prologue
    .line 830
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/base/aj;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/glass/entity/EntityCache;->IS_HANGOUT_ENTITY:Lcom/google/common/base/aj;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityCache;->getFilteredCachedEntitiesAsList([Lcom/google/common/base/aj;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getMatchingItemPredicate(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/common/base/aj;
    .locals 1

    .prologue
    .line 1191
    if-nez p1, :cond_0

    .line 1192
    sget-object v0, Lcom/google/glass/entity/EntityCache;->IS_VALID_ITEM_TARGET:Lcom/google/common/base/aj;

    .line 1194
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/glass/entity/EntityCache$18;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/entity/EntityCache$18;-><init>(Lcom/google/glass/entity/EntityCache;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_0
.end method

.method private declared-synchronized getMatchingShareEntities(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/List;
    .locals 3

    .prologue
    .line 899
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Lcom/google/common/base/aj;

    const/4 v1, 0x0

    .line 900
    invoke-direct {p0, p1}, Lcom/google/glass/entity/EntityCache;->getMatchingItemPredicate(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/common/base/aj;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityCache;->getFilteredCachedEntitiesAsList([Lcom/google/common/base/aj;)Ljava/util/List;

    move-result-object v0

    .line 901
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityCache;->sortShareTargets(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    monitor-exit p0

    return-object v0

    .line 899
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private varargs getMessagingTargets([Lcom/google/common/base/aj;)Lcom/google/glass/entity/EntityList;
    .locals 4

    .prologue
    .line 737
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityCache;->getFilteredCachedEntitiesAsList([Lcom/google/common/base/aj;)Ljava/util/List;

    move-result-object v0

    .line 742
    const v1, 0x7fffffff

    invoke-direct {p0, v0, v1}, Lcom/google/glass/entity/EntityCache;->addUniqueHangoutEntities(Ljava/util/List;I)V

    .line 745
    sget-object v1, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;->CREATION_AND_CONTENT_USAGE:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    const/16 v2, 0xa

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/entity/EntityCache;->extractRecentEntities(Ljava/util/List;Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;I)Ljava/util/List;

    move-result-object v1

    .line 747
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 750
    invoke-direct {p0, v0}, Lcom/google/glass/entity/EntityCache;->getStarredSubset(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 751
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityCache;->getMaxSpeakableTargets()I

    move-result v3

    invoke-direct {p0, v1, v0, v3}, Lcom/google/glass/entity/EntityCache;->addUniqueStarredEntities(Ljava/util/List;Ljava/util/List;I)V

    .line 752
    invoke-static {v1}, Lcom/google/glass/entity/EntityCache;->getEntities(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 753
    new-instance v1, Lcom/google/glass/entity/EntityList;

    invoke-direct {v1, v0, v2}, Lcom/google/glass/entity/EntityList;-><init>(Ljava/util/List;I)V

    return-object v1
.end method

.method private getPlusShareTargets(I)Ljava/util/List;
    .locals 3

    .prologue
    .line 1029
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/common/base/aj;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/glass/entity/EntityCache;->IS_SHARE_TARGET:Lcom/google/common/base/aj;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/glass/entity/EntityCache;->IS_PLUS_ENTITY:Lcom/google/common/base/aj;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/glass/entity/EntityCache;->IS_NOT_IN_SHARE_TARGET_BLACKLIST:Lcom/google/common/base/aj;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityCache;->getFilteredCachedEntitiesAsList([Lcom/google/common/base/aj;)Ljava/util/List;

    move-result-object v0

    .line 1032
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityCache;->sortShareTargets(Ljava/util/List;)V

    .line 1033
    invoke-static {v0, p1}, Lcom/google/glass/entity/EntityCache;->subList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/entity/EntityCache;->getEntities(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getRecentTimestamp(Lcom/google/glass/entity/EntityCache$EntityData;Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;)J
    .locals 4

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

.method private varargs declared-synchronized getShareTargetsFilteredSorted([Lcom/google/common/base/aj;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1062
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityCache;->getFilteredCachedEntitiesAsList([Lcom/google/common/base/aj;)Ljava/util/List;

    move-result-object v0

    .line 1063
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityCache;->sortShareTargets(Ljava/util/List;)V

    .line 1064
    invoke-static {v0}, Lcom/google/glass/entity/EntityCache;->getEntities(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1062
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getSharedInstance()Lcom/google/glass/entity/EntityCache;
    .locals 1

    .prologue
    .line 512
    sget-object v0, Lcom/google/glass/entity/EntityCache;->sharedInstance:Lcom/google/glass/entity/EntityCache;

    return-object v0
.end method

.method private getStarredSubset(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 856
    sget-object v0, Lcom/google/glass/entity/EntityCache;->IS_STARRED:Lcom/google/common/base/aj;

    invoke-static {p1, v0}, Lcom/google/common/collect/eg;->b(Ljava/lang/Iterable;Lcom/google/common/base/aj;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 857
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityCache;->sortMessagingTargets(Ljava/util/List;)V

    .line 858
    return-object v0
.end method

.method private static matchesItem(Lcom/google/glass/util/MimeTypeMatcher;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1211
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "text/plain"

    invoke-virtual {p0, v0}, Lcom/google/glass/util/MimeTypeMatcher;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 1228
    :cond_0
    :goto_0
    return v1

    .line 1214
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "text/html"

    invoke-virtual {p0, v0}, Lcom/google/glass/util/MimeTypeMatcher;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    .line 1215
    goto :goto_0

    .line 1217
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "application/url"

    invoke-virtual {p0, v0}, Lcom/google/glass/util/MimeTypeMatcher;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    .line 1218
    goto :goto_0

    .line 1221
    :cond_3
    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1222
    :goto_1
    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1223
    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/glass/util/MimeTypeMatcher;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 1224
    goto :goto_0

    .line 1222
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
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

    .prologue
    .line 1087
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/entity/EntityCache;->extractRecentEntities(Ljava/util/List;Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;I)Ljava/util/List;

    move-result-object v0

    .line 1091
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

    .prologue
    .line 1281
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
    .locals 7

    .prologue
    const v3, 0x7fffffff

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 971
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    if-lez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ai;->a(Z)V

    .line 973
    if-lez p2, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/ai;->a(Z)V

    .line 975
    if-ne p1, v3, :cond_2

    if-ne p2, v3, :cond_2

    .line 1005
    :goto_2
    return-object p0

    :cond_0
    move v0, v2

    .line 972
    goto :goto_0

    :cond_1
    move v1, v2

    .line 973
    goto :goto_1

    .line 979
    :cond_2
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    .line 980
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 981
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 982
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, p1, :cond_5

    :cond_4
    move-object p0, v3

    .line 1005
    goto :goto_2

    .line 986
    :cond_5
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/av;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 987
    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 988
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    :cond_6
    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->isPlusIndividualEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 994
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 995
    if-gt v1, p2, :cond_3

    .line 999
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    :cond_7
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method


# virtual methods
.method getAllEntities()Ljava/util/List;
    .locals 2

    .prologue
    .line 1286
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 1287
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    sget-object v1, Lcom/google/glass/entity/EntityCache;->ENTITYDATA_TO_ENTITY_FUNCTION:Lcom/google/common/base/w;

    invoke-static {v0, v1}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/w;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getAllMirrorCommandEntitiesSorted()Ljava/util/List;
    .locals 3

    .prologue
    .line 1051
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Lcom/google/common/base/aj;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/glass/entity/EntityCache;->IS_SHARE_TARGET:Lcom/google/common/base/aj;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/glass/entity/EntityCache;->IS_COMMAND_TARGET:Lcom/google/common/base/aj;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/entity/EntityCache;->getShareTargetsFilteredSorted([Lcom/google/common/base/aj;)Ljava/util/List;
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

    .prologue
    .line 1042
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Lcom/google/common/base/aj;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/glass/entity/EntityCache;->IS_SHARE_TARGET:Lcom/google/common/base/aj;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/entity/EntityCache;->getShareTargetsFilteredSorted([Lcom/google/common/base/aj;)Ljava/util/List;
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

.method protected varargs getFilteredCachedEntitiesAsList([Lcom/google/common/base/aj;)Ljava/util/List;
    .locals 2

    .prologue
    .line 849
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->entityDataFilterCache:Landroid/util/LruCache;

    new-instance v1, Lcom/google/glass/entity/EntityCache$EntityDataFilterKey;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/entity/EntityCache$EntityDataFilterKey;-><init>(Lcom/google/glass/entity/EntityCache;[Lcom/google/common/base/aj;)V

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getLimitedMirrorCommandEntities(II)Lcom/google/common/collect/ft;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 930
    invoke-static {}, Lcom/google/common/collect/ArrayListMultimap;->create()Lcom/google/common/collect/ArrayListMultimap;

    move-result-object v4

    .line 932
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityCache;->getAllMirrorCommandEntitiesSorted()Ljava/util/List;

    move-result-object v5

    .line 933
    if-eqz v5, :cond_2

    move v1, v2

    .line 934
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 935
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move v3, v2

    .line 936
    :goto_1
    iget-object v6, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    array-length v6, v6

    if-ge v3, v6, :cond_1

    .line 937
    iget-object v6, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    aget-object v6, v6, v3

    .line 938
    sget-object v7, Lcom/google/glass/entity/EntityCache;->INTERNAL_ONLY_MIRROR_COMMANDS:[I

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->getType()I

    move-result v8

    invoke-static {v7, v8}, Lcom/google/common/primitives/Ints;->a([II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 939
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 936
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 944
    :cond_0
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6, v0}, Lcom/google/common/collect/ft;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2

    .line 934
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 949
    :cond_2
    invoke-interface {v4}, Lcom/google/common/collect/ft;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 954
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/google/common/collect/ft;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    .line 955
    invoke-static {v2, p1, p2}, Lcom/google/glass/entity/EntityCache;->trimShareTargets(Ljava/util/List;II)Ljava/util/List;

    move-result-object v2

    .line 957
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0, v2}, Lcom/google/common/collect/ft;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    goto :goto_3

    .line 960
    :cond_3
    return-object v4
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

.method public getMirrorCommandEntities()Lcom/google/common/collect/ft;
    .locals 1

    .prologue
    const v0, 0x7fffffff

    .line 911
    invoke-virtual {p0, v0, v0}, Lcom/google/glass/entity/EntityCache;->getLimitedMirrorCommandEntities(II)Lcom/google/common/collect/ft;

    move-result-object v0

    return-object v0
.end method

.method getShareTargetEntityData(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/Iterable;
    .locals 2

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

    sget-object v1, Lcom/google/glass/entity/EntityCache;->IS_SHARE_MENU_TARGET:Lcom/google/common/base/aj;

    invoke-static {v0, v1}, Lcom/google/common/collect/eg;->b(Ljava/lang/Iterable;Lcom/google/common/base/aj;)Ljava/lang/Iterable;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized getShareTargets(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/List;
    .locals 1

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
    new-array v0, v0, [Lcom/google/common/base/aj;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/glass/entity/EntityCache;->IS_SPEAKABLE:Lcom/google/common/base/aj;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/glass/entity/EntityCache;->IS_FOCUS_ENTITY:Lcom/google/common/base/aj;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/entity/EntityCache;->getMessagingTargets([Lcom/google/common/base/aj;)Lcom/google/glass/entity/EntityList;
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

.method public getSpeakableMirrorCommandEntities()Lcom/google/common/collect/ft;
    .locals 2

    .prologue
    .line 906
    .line 907
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityCache;->getMaxSpeakableTargets()I

    move-result v0

    const/4 v1, 0x3

    .line 906
    invoke-virtual {p0, v0, v1}, Lcom/google/glass/entity/EntityCache;->getLimitedMirrorCommandEntities(II)Lcom/google/common/collect/ft;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getSpeakablePhoneCallTargets()Lcom/google/glass/entity/EntityList;
    .locals 4

    .prologue
    .line 813
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Lcom/google/common/base/aj;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/glass/entity/EntityCache;->IS_SPEAKABLE:Lcom/google/common/base/aj;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/glass/entity/EntityCache;->IS_FOCUS_ENTITY:Lcom/google/common/base/aj;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/glass/entity/EntityCache;->HAS_PHONE_NUMBER:Lcom/google/common/base/aj;

    aput-object v2, v0, v1

    .line 814
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityCache;->getFilteredCachedEntitiesAsList([Lcom/google/common/base/aj;)Ljava/util/List;

    move-result-object v0

    .line 817
    sget-object v1, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;->PHONE_USAGE:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    const/16 v2, 0xa

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/entity/EntityCache;->extractRecentEntities(Ljava/util/List;Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;I)Ljava/util/List;

    move-result-object v1

    .line 819
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 822
    invoke-direct {p0, v0}, Lcom/google/glass/entity/EntityCache;->getStarredSubset(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 823
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityCache;->getMaxSpeakableTargets()I

    move-result v3

    invoke-direct {p0, v1, v0, v3}, Lcom/google/glass/entity/EntityCache;->addUniqueStarredEntities(Ljava/util/List;Ljava/util/List;I)V

    .line 824
    invoke-static {v1}, Lcom/google/glass/entity/EntityCache;->getEntities(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 825
    new-instance v1, Lcom/google/glass/entity/EntityList;

    invoke-direct {v1, v0, v2}, Lcom/google/glass/entity/EntityList;-><init>(Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 813
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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
    new-array v0, v0, [Lcom/google/common/base/aj;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/glass/entity/EntityCache;->IS_SPEAKABLE:Lcom/google/common/base/aj;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/glass/entity/EntityCache;->IS_FOCUS_ENTITY:Lcom/google/common/base/aj;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-direct {p0, p1}, Lcom/google/glass/entity/EntityCache;->getMatchingItemPredicate(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/common/base/aj;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/entity/EntityCache;->getMessagingTargets([Lcom/google/common/base/aj;)Lcom/google/glass/entity/EntityList;
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

    .prologue
    .line 866
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/glass/entity/EntityList;

    .line 867
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityCache;->getShareTargetEntityData(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/Iterable;

    move-result-object v1

    sget-object v2, Lcom/google/glass/entity/EntityCache;->IS_SPEAKABLE:Lcom/google/common/base/aj;

    invoke-static {v1, v2}, Lcom/google/common/collect/eg;->b(Ljava/lang/Iterable;Lcom/google/common/base/aj;)Ljava/lang/Iterable;

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
    new-array v0, v0, [Lcom/google/common/base/aj;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/glass/entity/EntityCache;->IS_SPEAKABLE:Lcom/google/common/base/aj;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/glass/entity/EntityCache;->IS_FOCUS_ENTITY:Lcom/google/common/base/aj;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/entity/EntityCache;->getMessagingTargets([Lcom/google/common/base/aj;)Lcom/google/glass/entity/EntityList;
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
    .locals 9

    .prologue
    const/4 v6, 0x0

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

    iget-wide v4, p0, Lcom/google/glass/entity/EntityCache;->entityDataCacheVersion:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 568
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v7

    .line 569
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

    .line 578
    :try_start_2
    const-string v5, "share_time DESC,_id ASC"

    .line 579
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/glass/entity/EntityProviderConstants;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    .line 581
    if-nez v1, :cond_2

    .line 583
    :try_start_3
    sget-object v0, Lcom/google/glass/entity/EntityCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "null cursor returned for share target query"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 597
    if-eqz v1, :cond_0

    .line 598
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 559
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 587
    :cond_2
    :goto_1
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 588
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->enabledMirrorSources:Ljava/util/Set;

    invoke-direct {p0, v1, v0}, Lcom/google/glass/entity/EntityCache;->fromCursorToEntityData(Landroid/database/Cursor;Ljava/util/Set;)Lcom/google/glass/entity/EntityCache$EntityData;

    move-result-object v0

    .line 591
    if-eqz v0, :cond_2

    .line 592
    iget-boolean v2, p0, Lcom/google/glass/entity/EntityCache;->hasFocusContacts:Z

    iget-boolean v3, v0, Lcom/google/glass/entity/EntityCache$EntityData;->isFocusEntity:Z

    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/google/glass/entity/EntityCache;->hasFocusContacts:Z

    .line 593
    iget-object v2, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 597
    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    .line 598
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 597
    :cond_4
    if-eqz v1, :cond_5

    .line 598
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 602
    :cond_5
    sget-object v0, Lcom/google/glass/entity/EntityCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "loadEntityDataCache finished: %sms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/entity/EntityCache;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v4}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 606
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.google.glass.action.ENTITY_CACHE_CHANGED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 612
    sget-object v0, Lcom/google/glass/entity/EntityCache;->packageNameForTest:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->context:Landroid/content/Context;

    .line 613
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 612
    :goto_3
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/entity/EntityCache;->context:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 613
    :cond_6
    sget-object v0, Lcom/google/glass/entity/EntityCache;->packageNameForTest:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 597
    :catchall_2
    move-exception v0

    move-object v1, v6

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

    .prologue
    .line 618
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 619
    invoke-direct {p0}, Lcom/google/glass/entity/EntityCache;->clearCache()V

    .line 620
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 621
    sget-object v0, Lcom/google/glass/entity/EntityCache;->IS_FOCUS_ENTITY:Lcom/google/common/base/aj;

    invoke-static {p1, v0}, Lcom/google/common/collect/eg;->c(Ljava/lang/Iterable;Lcom/google/common/base/aj;)Z

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

    .prologue
    .line 1078
    sget-object v0, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;->CONTENT_USAGE:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    invoke-direct {p0, p1, v0}, Lcom/google/glass/entity/EntityCache;->sortEntities(Ljava/util/List;Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;)V

    .line 1079
    return-void
.end method

.method sortShareTargets(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 1071
    sget-object v0, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;->CREATION_AND_CONTENT_USAGE:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    invoke-direct {p0, p1, v0}, Lcom/google/glass/entity/EntityCache;->sortEntities(Ljava/util/List;Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;)V

    .line 1072
    return-void
.end method
