.class public final Lcom/google/glass/logging/EventLogUtils;
.super Ljava/lang/Object;
.source "EventLogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/logging/EventLogUtils$1;,
        Lcom/google/glass/logging/EventLogUtils$NotificationNotShownProcessor;,
        Lcom/google/glass/logging/EventLogUtils$NotificationViewedFromScreenOffProcessor;,
        Lcom/google/glass/logging/EventLogUtils$ShutdownRebootProcessor;,
        Lcom/google/glass/logging/EventLogUtils$DeviceWakingUpProcessor;,
        Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;,
        Lcom/google/glass/logging/EventLogUtils$LogProcessor;
    }
.end annotation


# static fields
.field public static final DEFAULT_AGGREGATION_INTERVAL_SECONDS:I = 0x258

.field static final PROCESSORS:Lcom/google/common/collect/ImmutableMap;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/glass/logging/EventLogUtils$LogProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAGS:[I

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 36
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    sput-object v4, Lcom/google/glass/logging/EventLogUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 47
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 48
    .local v0, "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/Integer;Lcom/google/glass/logging/EventLogUtils$LogProcessor;>;"
    new-instance v4, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;

    const v5, 0xf43d4

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->ACCEL_TAP_PARAMS:[Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;-><init>(I[Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/google/glass/logging/EventLogUtils;->add(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/glass/logging/EventLogUtils$LogProcessor;)V

    .line 51
    new-instance v4, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;

    const/16 v5, 0x7538

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->AM_ANR_PARAMS:[Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;-><init>(I[Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/google/glass/logging/EventLogUtils;->add(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/glass/logging/EventLogUtils$LogProcessor;)V

    .line 54
    new-instance v4, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;

    const/16 v5, 0x7557

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->AM_CRASH_PARAMS:[Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;-><init>(I[Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/google/glass/logging/EventLogUtils;->add(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/glass/logging/EventLogUtils$LogProcessor;)V

    .line 57
    new-instance v4, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;

    const v5, 0xf42a8

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->CAMERA_BUTTON_PARAMS:[Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;-><init>(I[Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/google/glass/logging/EventLogUtils;->add(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/glass/logging/EventLogUtils$LogProcessor;)V

    .line 60
    new-instance v4, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;

    const v5, 0xf43d2

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->DEVICE_DOFFED_PARAMS:[Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;-><init>(I[Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/google/glass/logging/EventLogUtils;->add(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/glass/logging/EventLogUtils$LogProcessor;)V

    .line 63
    new-instance v4, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;

    const v5, 0xf43d1

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->DEVICE_DONNED_PARAMS:[Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;-><init>(I[Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/google/glass/logging/EventLogUtils;->add(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/glass/logging/EventLogUtils$LogProcessor;)V

    .line 66
    new-instance v4, Lcom/google/glass/logging/EventLogUtils$DeviceWakingUpProcessor;

    invoke-direct {v4}, Lcom/google/glass/logging/EventLogUtils$DeviceWakingUpProcessor;-><init>()V

    invoke-static {v0, v4}, Lcom/google/glass/logging/EventLogUtils;->add(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/glass/logging/EventLogUtils$LogProcessor;)V

    .line 67
    new-instance v4, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;

    const v5, 0xf43d3

    invoke-direct {v4, v5}, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;-><init>(I)V

    invoke-static {v0, v4}, Lcom/google/glass/logging/EventLogUtils;->add(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/glass/logging/EventLogUtils$LogProcessor;)V

    .line 69
    new-instance v4, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;

    const v5, 0xf4436

    invoke-direct {v4, v5}, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;-><init>(I)V

    invoke-static {v0, v4}, Lcom/google/glass/logging/EventLogUtils;->add(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/glass/logging/EventLogUtils$LogProcessor;)V

    .line 71
    new-instance v4, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;

    const v5, 0xf436d

    invoke-direct {v4, v5}, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;-><init>(I)V

    invoke-static {v0, v4}, Lcom/google/glass/logging/EventLogUtils;->add(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/glass/logging/EventLogUtils$LogProcessor;)V

    .line 73
    new-instance v4, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;

    const v5, 0xf436e

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->LOCKSCREEN_UNLOCKED_PARAMS:[Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;-><init>(I[Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/google/glass/logging/EventLogUtils;->add(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/glass/logging/EventLogUtils$LogProcessor;)V

    .line 76
    new-instance v4, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;

    const v5, 0xf436f

    invoke-direct {v4, v5}, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;-><init>(I)V

    invoke-static {v0, v4}, Lcom/google/glass/logging/EventLogUtils;->add(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/glass/logging/EventLogUtils$LogProcessor;)V

    .line 78
    new-instance v4, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;

    const v5, 0xf4370

    invoke-direct {v4, v5}, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;-><init>(I)V

    invoke-static {v0, v4}, Lcom/google/glass/logging/EventLogUtils;->add(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/glass/logging/EventLogUtils$LogProcessor;)V

    .line 80
    new-instance v4, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;

    const v5, 0xf4371

    invoke-direct {v4, v5}, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;-><init>(I)V

    invoke-static {v0, v4}, Lcom/google/glass/logging/EventLogUtils;->add(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/glass/logging/EventLogUtils$LogProcessor;)V

    .line 82
    new-instance v4, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;

    const v5, 0xf4309

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->PACKAGE_INSTALLED_PARAMS:[Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;-><init>(I[Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/google/glass/logging/EventLogUtils;->add(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/glass/logging/EventLogUtils$LogProcessor;)V

    .line 85
    new-instance v4, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;

    const v5, 0xf4629

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->RECORD_VIDEO_TRACK_INFO_PARAMS:[Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;-><init>(I[Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/google/glass/logging/EventLogUtils;->add(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/glass/logging/EventLogUtils$LogProcessor;)V

    .line 88
    new-instance v4, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;

    const v5, 0xf42a5

    invoke-direct {v4, v5}, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;-><init>(I)V

    invoke-static {v0, v4}, Lcom/google/glass/logging/EventLogUtils;->add(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/glass/logging/EventLogUtils$LogProcessor;)V

    .line 90
    new-instance v4, Lcom/google/glass/logging/EventLogUtils$ShutdownRebootProcessor;

    invoke-direct {v4}, Lcom/google/glass/logging/EventLogUtils$ShutdownRebootProcessor;-><init>()V

    invoke-static {v0, v4}, Lcom/google/glass/logging/EventLogUtils;->add(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/glass/logging/EventLogUtils$LogProcessor;)V

    .line 91
    new-instance v4, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;

    const/16 v5, 0x753b

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->AM_PROC_DIED_PARAMS:[Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;-><init>(I[Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/google/glass/logging/EventLogUtils;->add(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/glass/logging/EventLogUtils$LogProcessor;)V

    .line 94
    new-instance v4, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;

    const/16 v5, 0xaab

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->FORCED_SHUTDOWN_PARAMS:[Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;-><init>(I[Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/google/glass/logging/EventLogUtils;->add(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/glass/logging/EventLogUtils$LogProcessor;)V

    .line 97
    new-instance v4, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;

    const/16 v5, 0xaac

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->FORCED_REBOOT_PARAMS:[Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;-><init>(I[Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/google/glass/logging/EventLogUtils;->add(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/glass/logging/EventLogUtils$LogProcessor;)V

    .line 100
    new-instance v4, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;

    const v5, 0xfb8a4

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->SYSTEM_SERVER_EXIT_PARAMS:[Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;-><init>(I[Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/google/glass/logging/EventLogUtils;->add(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/glass/logging/EventLogUtils$LogProcessor;)V

    .line 103
    new-instance v4, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;

    const v5, 0xfb8a5

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->NATIVE_CRASH_PARAMS:[Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;-><init>(I[Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/google/glass/logging/EventLogUtils;->add(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/glass/logging/EventLogUtils$LogProcessor;)V

    .line 106
    new-instance v4, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;

    const v5, 0xfb8a6

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->NATIVE_CRASH_REGISTERS_ARM_PARAMS:[Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;-><init>(I[Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/google/glass/logging/EventLogUtils;->add(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/glass/logging/EventLogUtils$LogProcessor;)V

    .line 109
    new-instance v4, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;

    const v5, 0xf4499

    invoke-direct {v4, v5}, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;-><init>(I)V

    invoke-static {v0, v4}, Lcom/google/glass/logging/EventLogUtils;->add(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/glass/logging/EventLogUtils$LogProcessor;)V

    .line 111
    new-instance v4, Lcom/google/glass/logging/EventLogUtils$NotificationViewedFromScreenOffProcessor;

    invoke-direct {v4}, Lcom/google/glass/logging/EventLogUtils$NotificationViewedFromScreenOffProcessor;-><init>()V

    invoke-static {v0, v4}, Lcom/google/glass/logging/EventLogUtils;->add(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/glass/logging/EventLogUtils$LogProcessor;)V

    .line 112
    new-instance v4, Lcom/google/glass/logging/EventLogUtils$NotificationNotShownProcessor;

    invoke-direct {v4}, Lcom/google/glass/logging/EventLogUtils$NotificationNotShownProcessor;-><init>()V

    invoke-static {v0, v4}, Lcom/google/glass/logging/EventLogUtils;->add(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/glass/logging/EventLogUtils$LogProcessor;)V

    .line 114
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v4

    sput-object v4, Lcom/google/glass/logging/EventLogUtils;->PROCESSORS:Lcom/google/common/collect/ImmutableMap;

    .line 116
    sget-object v4, Lcom/google/glass/logging/EventLogUtils;->PROCESSORS:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v4

    new-array v4, v4, [I

    sput-object v4, Lcom/google/glass/logging/EventLogUtils;->TAGS:[I

    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, "index":I
    sget-object v4, Lcom/google/glass/logging/EventLogUtils;->PROCESSORS:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 119
    .local v3, "tag":Ljava/lang/Integer;
    sget-object v5, Lcom/google/glass/logging/EventLogUtils;->TAGS:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v1

    move v1, v2

    .line 120
    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 121
    .end local v3    # "tag":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/util/EventLog$Event;)J
    .locals 2
    .param p0, "x0"    # Landroid/util/EventLog$Event;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/google/glass/logging/EventLogUtils;->getMillis(Landroid/util/EventLog$Event;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/google/glass/logging/EventLogUtils;->asList(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static add(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/glass/logging/EventLogUtils$LogProcessor;)V
    .locals 1
    .param p1, "processor"    # Lcom/google/glass/logging/EventLogUtils$LogProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap$Builder",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/glass/logging/EventLogUtils$LogProcessor;",
            ">;",
            "Lcom/google/glass/logging/EventLogUtils$LogProcessor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/Integer;Lcom/google/glass/logging/EventLogUtils$LogProcessor;>;"
    invoke-interface {p1}, Lcom/google/glass/logging/EventLogUtils$LogProcessor;->getTag()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 125
    return-void
.end method

.method private static asList(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)Ljava/util/List;
    .locals 2
    .param p0, "proto"    # Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 492
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;>;"
    if-eqz p0, :cond_0

    .line 493
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    :cond_0
    return-object v0
.end method

.method static getFrameworkEvents(J)Ljava/util/List;
    .locals 2
    .param p0, "fromThisTimeOnMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Landroid/util/EventLog$Event;>;"
    sget-object v1, Lcom/google/glass/logging/EventLogUtils;->TAGS:[I

    invoke-static {v1, v0}, Landroid/util/EventLog;->readEvents([ILjava/util/Collection;)V

    .line 137
    invoke-static {p0, p1, v0}, Lcom/google/glass/logging/EventLogUtils;->getFrameworkEvents(JLjava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static getFrameworkEvents(JLjava/util/List;)Ljava/util/List;
    .locals 15
    .param p0, "fromThisTimeOnMs"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Landroid/util/EventLog$Event;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    .local p2, "events":Ljava/util/List;, "Ljava/util/List<Landroid/util/EventLog$Event;>;"
    const/4 v0, 0x0

    .line 143
    .local v0, "alreadyLoggedCount":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v5, "protos":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;>;"
    const/4 v1, 0x0

    .line 146
    .local v1, "count":I
    sget-object v7, Lcom/google/glass/logging/EventLogUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Scanning for framework events after %d ms."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/EventLog$Event;

    .line 149
    .local v2, "event":Landroid/util/EventLog$Event;
    invoke-static {v2}, Lcom/google/glass/logging/EventLogUtils;->getMillis(Landroid/util/EventLog$Event;)J

    move-result-wide v8

    cmp-long v8, p0, v8

    if-gez v8, :cond_1

    .line 150
    sget-object v8, Lcom/google/glass/logging/EventLogUtils;->PROCESSORS:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2}, Landroid/util/EventLog$Event;->getTag()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/logging/EventLogUtils$LogProcessor;

    .line 151
    .local v3, "processor":Lcom/google/glass/logging/EventLogUtils$LogProcessor;
    invoke-interface {v3, v2}, Lcom/google/glass/logging/EventLogUtils$LogProcessor;->process(Landroid/util/EventLog$Event;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 152
    .local v4, "proto":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v9, Lcom/google/glass/logging/EventLogUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "%s framework event that occured at %d ms is inserted to protos as %s."

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 154
    invoke-virtual {v2}, Landroid/util/EventLog$Event;->getTag()I

    move-result v13

    invoke-static {v13}, Landroid/util/EventLog;->getTagName(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v2}, Lcom/google/glass/logging/EventLogUtils;->getMillis(Landroid/util/EventLog$Event;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    .line 155
    invoke-virtual {v4}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->getEventData()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 153
    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    add-int/lit8 v1, v1, 0x1

    .line 157
    goto :goto_1

    .line 162
    .end local v3    # "processor":Lcom/google/glass/logging/EventLogUtils$LogProcessor;
    .end local v4    # "proto":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    .end local v2    # "event":Landroid/util/EventLog$Event;
    :cond_2
    if-gtz v0, :cond_4

    const-wide/16 v7, 0x0

    cmp-long v7, p0, v7

    if-lez v7, :cond_4

    .line 167
    new-instance v6, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-direct {v6}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;-><init>()V

    .line 168
    .local v6, "userEvent":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    sget-object v7, Lcom/google/glass/userevent/UserEventAction;->FRAMEWORK_USER_EVENT_OVERWRITTEN:Lcom/google/glass/userevent/UserEventAction;

    iget-object v7, v7, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventType(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 169
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v7, Lcom/google/glass/logging/EventLogUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "/dev/log/events circular buffer may have been overwritten since the last scan."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    .end local v6    # "userEvent":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    :cond_3
    :goto_2
    sget-object v7, Lcom/google/glass/logging/EventLogUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Done scanning, found %d framework events"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    return-object v5

    .line 171
    :cond_4
    if-lez v0, :cond_3

    .line 172
    sget-object v7, Lcom/google/glass/logging/EventLogUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "%d framework events that occurred before %d is still not removed."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 173
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    .line 172
    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private static getMillis(Landroid/util/EventLog$Event;)J
    .locals 3
    .param p0, "event"    # Landroid/util/EventLog$Event;

    .prologue
    .line 185
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Landroid/util/EventLog$Event;->getTimeNanos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method
