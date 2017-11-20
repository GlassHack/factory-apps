.class final Lcom/google/android/location/fused/e;
.super Lcom/android/location/provider/LocationProviderBase;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/location/l;


# static fields
.field private static a:Lcom/android/location/provider/ProviderPropertiesUnbundled;


# instance fields
.field private final b:Lcom/google/android/location/o/n;

.field private final c:Lcom/google/android/location/o/u;

.field private final d:Lcom/google/android/location/o/ag;

.field private e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    move v1, v0

    move v2, v0

    move v3, v0

    move v5, v4

    move v6, v4

    move v7, v4

    move v8, v4

    .line 47
    invoke-static/range {v0 .. v8}, Lcom/android/location/provider/ProviderPropertiesUnbundled;->create(ZZZZZZZII)Lcom/android/location/provider/ProviderPropertiesUnbundled;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/fused/e;->a:Lcom/android/location/provider/ProviderPropertiesUnbundled;

    return-void
.end method

.method constructor <init>(Lcom/google/android/location/o/n;Landroid/os/PowerManager$WakeLock;)V
    .locals 3

    .prologue
    .line 58
    const-string v0, "FusedLocationProvider"

    sget-object v1, Lcom/google/android/location/fused/e;->a:Lcom/android/location/provider/ProviderPropertiesUnbundled;

    invoke-direct {p0, v0, v1}, Lcom/android/location/provider/LocationProviderBase;-><init>(Ljava/lang/String;Lcom/android/location/provider/ProviderPropertiesUnbundled;)V

    .line 55
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/fused/e;->e:Ljava/util/List;

    .line 60
    iput-object p1, p0, Lcom/google/android/location/fused/e;->b:Lcom/google/android/location/o/n;

    .line 61
    invoke-static {}, Lcom/google/android/location/fused/ah;->a()Landroid/os/Looper;

    move-result-object v0

    .line 62
    new-instance v1, Lcom/google/android/location/o/ag;

    new-instance v2, Lcom/google/android/location/fused/f;

    invoke-direct {v2, p0, v0}, Lcom/google/android/location/fused/f;-><init>(Lcom/google/android/location/fused/e;Landroid/os/Looper;)V

    invoke-direct {v1, p2, v2}, Lcom/google/android/location/o/ag;-><init>(Landroid/os/PowerManager$WakeLock;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/google/android/location/fused/e;->d:Lcom/google/android/location/o/ag;

    .line 63
    new-instance v1, Lcom/google/android/location/o/u;

    invoke-direct {v1, p1, p0, v0}, Lcom/google/android/location/o/u;-><init>(Lcom/google/android/location/o/n;Lcom/google/android/gms/location/l;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/location/fused/e;->c:Lcom/google/android/location/o/u;

    .line 65
    return-void
.end method

.method private static a(I)I
    .locals 1

    .prologue
    .line 138
    sparse-switch p0, :sswitch_data_0

    .line 149
    const/16 v0, 0x66

    :goto_0
    return v0

    .line 141
    :sswitch_0
    const/16 v0, 0x64

    goto :goto_0

    .line 144
    :sswitch_1
    const/16 v0, 0x68

    goto :goto_0

    .line 146
    :sswitch_2
    const/16 v0, 0x69

    goto :goto_0

    .line 138
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x68 -> :sswitch_1
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_1
        0xcb -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic a(Lcom/google/android/location/fused/e;)Ljava/util/List;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/location/fused/e;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/location/fused/e;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/location/fused/e;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/location/fused/e;)Lcom/google/android/location/o/u;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/location/fused/e;->c:Lcom/google/android/location/o/u;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/google/android/location/fused/e;->reportLocation(Landroid/location/Location;)V

    .line 171
    return-void
.end method

.method public final onDisable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    iget-object v0, p0, Lcom/google/android/location/fused/e;->d:Lcom/google/android/location/o/ag;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/google/android/location/o/ag;->a(IIILjava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/google/android/location/fused/e;->b:Lcom/google/android/location/o/n;

    invoke-virtual {v0}, Lcom/google/android/location/o/n;->b()V

    .line 77
    return-void
.end method

.method public final onDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public final onEnable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 69
    iget-object v0, p0, Lcom/google/android/location/fused/e;->b:Lcom/google/android/location/o/n;

    invoke-virtual {v0}, Lcom/google/android/location/o/n;->a()V

    .line 70
    iget-object v0, p0, Lcom/google/android/location/fused/e;->d:Lcom/google/android/location/o/ag;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/fused/e;->e:Ljava/util/List;

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/google/android/location/o/ag;->a(IIILjava/lang/Object;)V

    .line 71
    return-void
.end method

.method public final onGetStatus(Landroid/os/Bundle;)I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x2

    return v0
.end method

.method public final onGetStatusUpdateTime()J
    .locals 2

    .prologue
    .line 164
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final onSetRequest(Lcom/android/location/provider/ProviderRequestUnbundled;Landroid/os/WorkSource;)V
    .locals 12

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/android/location/provider/ProviderRequestUnbundled;->getLocationRequests()Ljava/util/List;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v6, 0x69

    const-wide v2, 0x7fffffffffffffffL

    const/4 v1, 0x0

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/location/provider/LocationRequestUnbundled;

    invoke-virtual {v0}, Lcom/android/location/provider/LocationRequestUnbundled;->getQuality()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/location/fused/e;->a(I)I

    move-result v7

    invoke-virtual {v0}, Lcom/android/location/provider/LocationRequestUnbundled;->getInterval()J

    move-result-wide v4

    cmp-long v11, v4, v2

    if-ltz v11, :cond_0

    if-ge v7, v6, :cond_5

    :cond_0
    move-wide v2, v4

    move v1, v7

    :goto_1
    move v6, v1

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/location/provider/LocationRequestUnbundled;

    invoke-virtual {v0}, Lcom/android/location/provider/LocationRequestUnbundled;->getQuality()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/location/fused/e;->a(I)I

    move-result v4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    const/16 v5, 0x12

    invoke-static {v5}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v2, p2

    :cond_2
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/location/provider/LocationRequestUnbundled;->getInterval()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/location/LocationRequest;->a(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/location/LocationRequest;->a(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const-string v4, "overlay"

    invoke-static {v4, v0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v0

    invoke-static {v2}, Lcom/google/android/location/o/j;->a(Landroid/os/WorkSource;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a(Ljava/util/List;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 85
    :cond_3
    const-string v0, "GCoreFlp"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    const-string v0, "Received location requests through overlay: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/fused/e;->d:Lcom/google/android/location/o/ag;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/google/android/location/o/ag;->a(IIILjava/lang/Object;)V

    .line 89
    return-void

    :cond_5
    move-object v0, v1

    move v1, v6

    goto :goto_1
.end method
