.class public final Lcom/google/android/location/fused/service/e;
.super Lcom/android/location/provider/FusedProvider;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/google/android/location/fused/service/e;


# instance fields
.field private volatile c:Lcom/android/location/provider/FusedLocationHardware;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/location/fused/service/e;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/location/provider/FusedProvider;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/location/fused/service/e;
    .locals 2

    .prologue
    .line 24
    sget-object v1, Lcom/google/android/location/fused/service/e;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/google/android/location/fused/service/e;->b:Lcom/google/android/location/fused/service/e;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/google/android/location/fused/service/e;

    invoke-direct {v0}, Lcom/google/android/location/fused/service/e;-><init>()V

    sput-object v0, Lcom/google/android/location/fused/service/e;->b:Lcom/google/android/location/fused/service/e;

    .line 29
    :cond_0
    sget-object v0, Lcom/google/android/location/fused/service/e;->b:Lcom/google/android/location/fused/service/e;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final b()Lcom/android/location/provider/FusedLocationHardware;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/location/fused/service/e;->c:Lcom/android/location/provider/FusedLocationHardware;

    return-object v0
.end method

.method public final setFusedLocationHardware(Lcom/android/location/provider/FusedLocationHardware;)V
    .locals 4

    .prologue
    .line 40
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 41
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 42
    const-string v1, "GCoreFlp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring calls from non-system server. Uid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/util/t;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 48
    invoke-virtual {p1}, Lcom/android/location/provider/FusedLocationHardware;->getSupportedBatchSize()I

    .line 50
    :cond_1
    iput-object p1, p0, Lcom/google/android/location/fused/service/e;->c:Lcom/android/location/provider/FusedLocationHardware;

    goto :goto_0
.end method
