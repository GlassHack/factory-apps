.class public Lcom/google/android/location/network/NetworkLocationProvider;
.super Lcom/android/location/provider/LocationProviderBase;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/o/aa;


# static fields
.field private static a:Lcom/android/location/provider/ProviderPropertiesUnbundled;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/location/o/y;

.field private d:Z

.field private e:Lcom/google/android/location/network/d;

.field private final f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 46
    const/4 v8, 0x2

    move v1, v0

    move v2, v0

    move v3, v0

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-static/range {v0 .. v8}, Lcom/android/location/provider/ProviderPropertiesUnbundled;->create(ZZZZZZZII)Lcom/android/location/provider/ProviderPropertiesUnbundled;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/network/NetworkLocationProvider;->a:Lcom/android/location/provider/ProviderPropertiesUnbundled;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 63
    const-string v0, "GmsNetworkLocationProvi"

    sget-object v1, Lcom/google/android/location/network/NetworkLocationProvider;->a:Lcom/android/location/provider/ProviderPropertiesUnbundled;

    invoke-direct {p0, v0, v1}, Lcom/android/location/provider/LocationProviderBase;-><init>(Ljava/lang/String;Lcom/android/location/provider/ProviderPropertiesUnbundled;)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/network/NetworkLocationProvider;->d:Z

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/network/NetworkLocationProvider;->e:Lcom/google/android/location/network/d;

    .line 73
    new-instance v0, Lcom/google/android/location/network/c;

    invoke-direct {v0, p0}, Lcom/google/android/location/network/c;-><init>(Lcom/google/android/location/network/NetworkLocationProvider;)V

    iput-object v0, p0, Lcom/google/android/location/network/NetworkLocationProvider;->f:Landroid/os/Handler;

    .line 64
    iput-object p1, p0, Lcom/google/android/location/network/NetworkLocationProvider;->b:Landroid/content/Context;

    .line 65
    new-instance v0, Lcom/google/android/location/o/y;

    iget-object v1, p0, Lcom/google/android/location/network/NetworkLocationProvider;->f:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/google/android/location/o/y;-><init>(Landroid/content/Context;Lcom/google/android/location/o/aa;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/location/network/NetworkLocationProvider;->c:Lcom/google/android/location/o/y;

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/network/NetworkLocationProvider;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/location/network/NetworkLocationProvider;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/location/network/NetworkLocationProvider;Lcom/google/android/location/network/d;)Lcom/google/android/location/network/d;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/android/location/network/NetworkLocationProvider;->e:Lcom/google/android/location/network/d;

    return-object p1
.end method

.method private a(Z)V
    .locals 7

    .prologue
    const-wide/16 v0, 0x4e20

    .line 151
    iget-object v2, p0, Lcom/google/android/location/network/NetworkLocationProvider;->e:Lcom/google/android/location/network/d;

    if-nez v2, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v2, p0, Lcom/google/android/location/network/NetworkLocationProvider;->e:Lcom/google/android/location/network/d;

    iget-object v4, v2, Lcom/google/android/location/network/d;->a:Lcom/android/location/provider/ProviderRequestUnbundled;

    .line 157
    invoke-virtual {v4}, Lcom/android/location/provider/ProviderRequestUnbundled;->getInterval()J

    move-result-wide v2

    .line 158
    cmp-long v5, v2, v0

    if-gez v5, :cond_2

    move-wide v2, v0

    .line 162
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/location/network/NetworkLocationProvider;->d:Z

    if-eqz v0, :cond_3

    .line 164
    sget-object v0, Lcom/google/android/location/x;->F:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 165
    cmp-long v5, v2, v0

    if-gez v5, :cond_3

    move-wide v2, v0

    .line 169
    :cond_3
    const-string v0, "GmsNetworkLocationProvi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "in Handler: ProviderRequestUnbundled, reportLocation is "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/location/provider/ProviderRequestUnbundled;->getReportLocation()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " and interval is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/google/android/location/network/NetworkLocationProvider;->b:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/google/android/location/network/NetworkLocationProvider;->b:Landroid/content/Context;

    const-class v6, Lcom/google/android/location/network/NetworkLocationService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x8000000

    invoke-static {v0, v1, v4, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 175
    new-instance v1, Lcom/google/android/location/internal/h;

    invoke-direct {v1}, Lcom/google/android/location/internal/h;-><init>()V

    .line 176
    invoke-virtual {v1, p1}, Lcom/google/android/location/internal/h;->b(Z)Lcom/google/android/location/internal/h;

    .line 177
    const-string v4, "NetworkLocationProvider"

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/google/android/location/internal/h;->a(JLandroid/app/PendingIntent;Ljava/lang/String;)Lcom/google/android/location/internal/h;

    .line 182
    const/16 v2, 0x13

    invoke-static {v2}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/location/network/NetworkLocationProvider;->e:Lcom/google/android/location/network/d;

    iget-object v2, v2, Lcom/google/android/location/network/d;->b:Landroid/os/WorkSource;

    if-eqz v2, :cond_4

    .line 183
    iget-object v2, p0, Lcom/google/android/location/network/NetworkLocationProvider;->e:Lcom/google/android/location/network/d;

    iget-object v2, v2, Lcom/google/android/location/network/d;->b:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Lcom/google/android/location/internal/h;->a(Landroid/os/WorkSource;)Lcom/google/android/location/internal/h;

    .line 186
    :cond_4
    iget-object v2, p0, Lcom/google/android/location/network/NetworkLocationProvider;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/location/internal/h;->a(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    .line 187
    const-string v1, "GmsNetworkLocationProvi"

    const-string v2, "startService returned NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/google/android/location/network/NetworkLocationProvider;)Lcom/google/android/location/o/y;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/location/network/NetworkLocationProvider;->c:Lcom/google/android/location/o/y;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/location/network/NetworkLocationProvider;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/location/network/NetworkLocationProvider;->a(Z)V

    return-void
.end method


# virtual methods
.method public final b(Z)V
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/google/android/location/network/NetworkLocationProvider;->d:Z

    if-eq v0, p1, :cond_0

    .line 139
    iput-boolean p1, p0, Lcom/google/android/location/network/NetworkLocationProvider;->d:Z

    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/location/network/NetworkLocationProvider;->a(Z)V

    .line 143
    :cond_0
    return-void
.end method

.method public onDisable()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/location/network/NetworkLocationProvider;->f:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 106
    return-void
.end method

.method public onDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public onEnable()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/location/network/NetworkLocationProvider;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 101
    return-void
.end method

.method public onGetStatus(Landroid/os/Bundle;)I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x2

    return v0
.end method

.method public onGetStatusUpdateTime()J
    .locals 2

    .prologue
    .line 133
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public onSetRequest(Lcom/android/location/provider/ProviderRequestUnbundled;Landroid/os/WorkSource;)V
    .locals 4

    .prologue
    .line 110
    const-string v0, "GmsNetworkLocationProvi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSetRequest: ProviderRequestUnbundled, reportLocation is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/location/provider/ProviderRequestUnbundled;->getReportLocation()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and interval is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/location/provider/ProviderRequestUnbundled;->getInterval()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/google/android/location/network/NetworkLocationProvider;->f:Landroid/os/Handler;

    const/4 v1, 0x3

    new-instance v2, Lcom/google/android/location/network/d;

    invoke-direct {v2, p1, p2}, Lcom/google/android/location/network/d;-><init>(Lcom/android/location/provider/ProviderRequestUnbundled;Landroid/os/WorkSource;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 113
    return-void
.end method
