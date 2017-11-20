.class public final Lcom/google/android/gms/internal/ae;
.super Lcom/google/android/gms/common/internal/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ae$1;,
        Lcom/google/android/gms/internal/ae$c;,
        Lcom/google/android/gms/internal/ae$b;,
        Lcom/google/android/gms/internal/ae$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/c",
        "<",
        "Lcom/google/android/gms/internal/ai;",
        ">;"
    }
.end annotation


# static fields
.field private static final ub:Lcom/google/android/gms/internal/ak;

.field private static final uv:Ljava/lang/Object;

.field private static final uw:Ljava/lang/Object;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final sv:Lcom/google/android/gms/cast/Cast$Listener;

.field private ti:D

.field private tj:Z

.field private uc:Lcom/google/android/gms/cast/ApplicationMetadata;

.field private final ud:Lcom/google/android/gms/cast/CastDevice;

.field private final ue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final uf:J

.field private ug:Lcom/google/android/gms/internal/ae$c;

.field private uh:Ljava/lang/String;

.field private ui:Z

.field private uj:Z

.field private uk:Z

.field private ul:I

.field private um:I

.field private final un:Ljava/util/concurrent/atomic/AtomicLong;

.field private uo:Ljava/lang/String;

.field private up:Ljava/lang/String;

.field private uq:Landroid/os/Bundle;

.field private ur:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;>;"
        }
    .end annotation
.end field

.field private us:Lcom/google/android/gms/internal/ae$b;

.field private ut:Lcom/google/android/gms/common/api/BaseImplementation$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private uu:Lcom/google/android/gms/common/api/BaseImplementation$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ak;

    const-string v1, "CastClientImpl"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ak;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ae;->ub:Lcom/google/android/gms/internal/ak;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ae;->uv:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ae;->uw:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/cast/CastDevice;JLcom/google/android/gms/cast/Cast$Listener;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/4 v6, 0x0

    move-object v5, v6

    check-cast v5, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p7

    move-object v4, p8

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/c;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ae;->ud:Lcom/google/android/gms/cast/CastDevice;

    iput-object p6, p0, Lcom/google/android/gms/internal/ae;->sv:Lcom/google/android/gms/cast/Cast$Listener;

    iput-wide p4, p0, Lcom/google/android/gms/internal/ae;->uf:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ae;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ae;->ue:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ae;->un:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ae;->ur:Ljava/util/Map;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ae;->bC()V

    new-instance v0, Lcom/google/android/gms/internal/ae$b;

    invoke-direct {v0, p0, v6}, Lcom/google/android/gms/internal/ae$b;-><init>(Lcom/google/android/gms/internal/ae;Lcom/google/android/gms/internal/ae$1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ae;->us:Lcom/google/android/gms/internal/ae$b;

    iget-object v0, p0, Lcom/google/android/gms/internal/ae;->us:Lcom/google/android/gms/internal/ae$b;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ae;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ae;Lcom/google/android/gms/cast/ApplicationMetadata;)Lcom/google/android/gms/cast/ApplicationMetadata;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ae;->uc:Lcom/google/android/gms/cast/ApplicationMetadata;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ae;Lcom/google/android/gms/common/api/BaseImplementation$b;)Lcom/google/android/gms/common/api/BaseImplementation$b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ae;->ut:Lcom/google/android/gms/common/api/BaseImplementation$b;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ae;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ae;->uo:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;)V"
        }
    .end annotation

    sget-object v1, Lcom/google/android/gms/internal/ae;->uv:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ae;->ut:Lcom/google/android/gms/common/api/BaseImplementation$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ae;->ut:Lcom/google/android/gms/common/api/BaseImplementation$b;

    new-instance v2, Lcom/google/android/gms/internal/ae$a;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    const/16 v4, 0x7d2

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ae$a;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/BaseImplementation$b;->a(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ae;->ut:Lcom/google/android/gms/common/api/BaseImplementation$b;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Lcom/google/android/gms/internal/ab;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ab;->bz()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ae;->uh:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iput-object v0, p0, Lcom/google/android/gms/internal/ae;->uh:Ljava/lang/String;

    move v0, v1

    :goto_0
    sget-object v3, Lcom/google/android/gms/internal/ae;->ub:Lcom/google/android/gms/internal/ak;

    const-string v4, "hasChanged=%b, mFirstApplicationStatusUpdate=%b"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ae;->ui:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ak;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ae;->sv:Lcom/google/android/gms/cast/Cast$Listener;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ae;->ui:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ae;->sv:Lcom/google/android/gms/cast/Cast$Listener;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationStatusChanged()V

    :cond_1
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ae;->ui:Z

    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ae;Lcom/google/android/gms/internal/ab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ae;->a(Lcom/google/android/gms/internal/ab;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ae;Lcom/google/android/gms/internal/ag;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ae;->a(Lcom/google/android/gms/internal/ag;)V

    return-void
.end method

.method private a(Lcom/google/android/gms/internal/ag;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ag;->getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ae;->uc:Lcom/google/android/gms/cast/ApplicationMetadata;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ag;->bF()D

    move-result-wide v3

    const-wide/high16 v5, 0x7ff8000000000000L    # NaN

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_9

    iget-wide v5, p0, Lcom/google/android/gms/internal/ae;->ti:D

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_9

    iput-wide v3, p0, Lcom/google/android/gms/internal/ae;->ti:D

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ag;->bP()Z

    move-result v3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ae;->tj:Z

    if-eq v3, v4, :cond_0

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ae;->tj:Z

    move v0, v1

    :cond_0
    sget-object v3, Lcom/google/android/gms/internal/ae;->ub:Lcom/google/android/gms/internal/ak;

    const-string v4, "hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ae;->uj:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ak;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ae;->sv:Lcom/google/android/gms/cast/Cast$Listener;

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ae;->uj:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ae;->sv:Lcom/google/android/gms/cast/Cast$Listener;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/Cast$Listener;->onVolumeChanged()V

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ag;->bG()I

    move-result v0

    iget v3, p0, Lcom/google/android/gms/internal/ae;->ul:I

    if-eq v0, v3, :cond_8

    iput v0, p0, Lcom/google/android/gms/internal/ae;->ul:I

    move v0, v1

    :goto_1
    sget-object v3, Lcom/google/android/gms/internal/ae;->ub:Lcom/google/android/gms/internal/ak;

    const-string v4, "hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ae;->uj:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ak;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ae;->sv:Lcom/google/android/gms/cast/Cast$Listener;

    if-eqz v3, :cond_4

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ae;->uj:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ae;->sv:Lcom/google/android/gms/cast/Cast$Listener;

    iget v3, p0, Lcom/google/android/gms/internal/ae;->ul:I

    invoke-virtual {v0, v3}, Lcom/google/android/gms/cast/Cast$Listener;->onActiveInputStateChanged(I)V

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ag;->bH()I

    move-result v0

    iget v3, p0, Lcom/google/android/gms/internal/ae;->um:I

    if-eq v0, v3, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/ae;->um:I

    move v0, v1

    :goto_2
    sget-object v3, Lcom/google/android/gms/internal/ae;->ub:Lcom/google/android/gms/internal/ak;

    const-string v4, "hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ae;->uj:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ak;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ae;->sv:Lcom/google/android/gms/cast/Cast$Listener;

    if-eqz v1, :cond_6

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ae;->uj:Z

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ae;->sv:Lcom/google/android/gms/cast/Cast$Listener;

    iget v1, p0, Lcom/google/android/gms/internal/ae;->um:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/Cast$Listener;->onStandbyStateChanged(I)V

    :cond_6
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ae;->uj:Z

    return-void

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_1

    :cond_9
    move v0, v2

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ae;Lcom/google/android/gms/common/api/BaseImplementation$b;)Lcom/google/android/gms/common/api/BaseImplementation$b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ae;->uu:Lcom/google/android/gms/common/api/BaseImplementation$b;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ae;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ae;->up:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ae;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ae;->bI()V

    return-void
.end method

.method private bC()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, -0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ae;->uk:Z

    iput v0, p0, Lcom/google/android/gms/internal/ae;->ul:I

    iput v0, p0, Lcom/google/android/gms/internal/ae;->um:I

    iput-object v1, p0, Lcom/google/android/gms/internal/ae;->uc:Lcom/google/android/gms/cast/ApplicationMetadata;

    iput-object v1, p0, Lcom/google/android/gms/internal/ae;->uh:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ae;->ti:D

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ae;->tj:Z

    return-void
.end method

.method private bI()V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ae;->ub:Lcom/google/android/gms/internal/ak;

    const-string v1, "removing all MessageReceivedCallbacks"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ak;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ae;->ue:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ae;->ue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private bJ()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ae;->uk:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ae;->ug:Lcom/google/android/gms/internal/ae$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ae;->ug:Lcom/google/android/gms/internal/ae$c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ae$c;->bO()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected to a device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method static synthetic bK()Lcom/google/android/gms/internal/ak;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ae;->ub:Lcom/google/android/gms/internal/ak;

    return-object v0
.end method

.method static synthetic bL()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ae;->uv:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic bM()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ae;->uw:Ljava/lang/Object;

    return-object v0
.end method

.method private c(Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    sget-object v1, Lcom/google/android/gms/internal/ae;->uw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ae;->uu:Lcom/google/android/gms/common/api/BaseImplementation$b;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x7d1

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/BaseImplementation$b;->a(Ljava/lang/Object;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ae;->uu:Lcom/google/android/gms/common/api/BaseImplementation$b;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ae;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ae;->bC()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ae;)Lcom/google/android/gms/common/api/BaseImplementation$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ae;->ut:Lcom/google/android/gms/common/api/BaseImplementation$b;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ae;)Lcom/google/android/gms/cast/Cast$Listener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ae;->sv:Lcom/google/android/gms/cast/Cast$Listener;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ae;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ae;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/ae;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ae;->ue:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/ae;)Lcom/google/android/gms/cast/CastDevice;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ae;->ud:Lcom/google/android/gms/cast/CastDevice;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/gms/internal/ae;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ae;->ur:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/gms/internal/ae;)Lcom/google/android/gms/common/api/BaseImplementation$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ae;->uu:Lcom/google/android/gms/common/api/BaseImplementation$b;

    return-object v0
.end method


# virtual methods
.method public G(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Channel namespace cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ae;->ue:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ae;->ue:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ae;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ai;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ai;->L(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/ae;->ub:Lcom/google/android/gms/internal/ak;

    const-string v2, "Error unregistering namespace (%s): %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ak;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(D)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume cannot be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ae;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ai;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ae;->ti:D

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ae;->tj:Z

    move-wide v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ai;->a(DDZ)V

    return-void
.end method

.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 7

    const/16 v6, 0x3e9

    const/4 v0, 0x0

    const/4 v5, 0x1

    sget-object v1, Lcom/google/android/gms/internal/ae;->ub:Lcom/google/android/gms/internal/ak;

    const-string v2, "in onPostInitHandler; statusCode=%d"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ak;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    if-ne p1, v6, :cond_2

    :cond_0
    iput-boolean v5, p0, Lcom/google/android/gms/internal/ae;->uk:Z

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ae;->ui:Z

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ae;->uj:Z

    :goto_0
    if-ne p1, v6, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ae;->uq:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/gms/internal/ae;->uq:Landroid/os/Bundle;

    const-string v2, "com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move p1, v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/c;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void

    :cond_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ae;->uk:Z

    goto :goto_0
.end method

.method protected a(Lcom/google/android/gms/common/internal/i;Lcom/google/android/gms/common/internal/c$d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ae;->ub:Lcom/google/android/gms/internal/ak;

    const-string v1, "getServiceFromBroker(): mLastApplicationId=%s, mLastSessionId=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/ae;->uo:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/ae;->up:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ak;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ae;->ud:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/cast/CastDevice;->putInBundle(Landroid/os/Bundle;)V

    const-string v0, "com.google.android.gms.cast.EXTRA_CAST_FLAGS"

    iget-wide v1, p0, Lcom/google/android/gms/internal/ae;->uf:J

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ae;->uo:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "last_application_id"

    iget-object v1, p0, Lcom/google/android/gms/internal/ae;->uo:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ae;->up:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "last_session_id"

    iget-object v1, p0, Lcom/google/android/gms/internal/ae;->up:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ae$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ae$c;-><init>(Lcom/google/android/gms/internal/ae;Lcom/google/android/gms/internal/ae$1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ae;->ug:Lcom/google/android/gms/internal/ae$c;

    const v2, 0x5d4044

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ae;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ae;->ug:Lcom/google/android/gms/internal/ae$c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ae$c;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/common/internal/i;->a(Lcom/google/android/gms/common/internal/h;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/af;->H(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ae;->G(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ae;->ue:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ae;->ue:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ae;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ai;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ai;->K(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/cast/LaunchOptions;",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ae;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ae;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ai;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ai;->a(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ae;->c(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ae;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ai;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ai;->J(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The message payload cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/high16 v1, 0x10000

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message exceeds maximum size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/af;->H(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ae;->bJ()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ae;->un:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ae;->ur:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ae;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ai;

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ai;->a(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ae;->ur:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method

.method public a(Ljava/lang/String;ZLcom/google/android/gms/common/api/BaseImplementation$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ae;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ae;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ai;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ai;->e(Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ae;->c(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ae;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ai;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ai;->bQ()V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ae;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ae;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ai;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ai;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bD()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ae;->uq:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ae;->uq:Landroid/os/Bundle;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ae;->uq:Landroid/os/Bundle;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/c;->bD()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public bE()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ae;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ai;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ai;->bE()V

    return-void
.end method

.method public bF()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ae;->bJ()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ae;->ti:D

    return-wide v0
.end method

.method public bG()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ae;->bJ()V

    iget v0, p0, Lcom/google/android/gms/internal/ae;->ul:I

    return v0
.end method

.method public bH()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ae;->bJ()V

    iget v0, p0, Lcom/google/android/gms/internal/ae;->um:I

    return v0
.end method

.method public disconnect()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/google/android/gms/internal/ae;->ub:Lcom/google/android/gms/internal/ak;

    const-string v1, "disconnect(); ServiceListener=%s, isConnected=%b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ae;->ug:Lcom/google/android/gms/internal/ae$c;

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ae;->isConnected()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ak;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ae;->ug:Lcom/google/android/gms/internal/ae$c;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ae;->ug:Lcom/google/android/gms/internal/ae$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ae$c;->bN()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ae;->ub:Lcom/google/android/gms/internal/ak;

    const-string v1, "already disposed, so short-circuiting"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ak;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ae;->bI()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ae;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ae;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ae;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ai;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ai;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-super {p0}, Lcom/google/android/gms/common/internal/c;->disconnect()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/google/android/gms/internal/ae;->ub:Lcom/google/android/gms/internal/ak;

    const-string v2, "Error while disconnecting the controller interface: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ak;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-super {p0}, Lcom/google/android/gms/common/internal/c;->disconnect()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/google/android/gms/common/internal/c;->disconnect()V

    throw v0
.end method

.method public f(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ae;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ai;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ae;->ti:D

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ae;->tj:Z

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/google/android/gms/internal/ai;->a(ZDZ)V

    return-void
.end method

.method public getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ae;->bJ()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ae;->uc:Lcom/google/android/gms/cast/ApplicationMetadata;

    return-object v0
.end method

.method public getApplicationStatus()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ae;->bJ()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ae;->uh:Ljava/lang/String;

    return-object v0
.end method

.method protected getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    return-object v0
.end method

.method protected getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.cast.service.BIND_CAST_DEVICE_CONTROLLER_SERVICE"

    return-object v0
.end method

.method protected synthetic i(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ae;->n(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ai;

    move-result-object v0

    return-object v0
.end method

.method public isMute()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ae;->bJ()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ae;->tj:Z

    return v0
.end method

.method protected n(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ai;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/ai$a;->o(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ai;

    move-result-object v0

    return-object v0
.end method
