.class public Lcom/android/location/fused/FusedLocationProvider;
.super Lcom/android/location/provider/LocationProviderBase;
.source "FusedLocationProvider.java"

# interfaces
.implements Lcom/android/location/fused/FusionEngine$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/location/fused/FusedLocationProvider$RequestWrapper;
    }
.end annotation


# static fields
.field private static PROPERTIES:Lcom/android/location/provider/ProviderPropertiesUnbundled;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEngine:Lcom/android/location/fused/FusionEngine;

.field private mHandler:Landroid/os/Handler;


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

    .line 43
    invoke-static/range {v0 .. v8}, Lcom/android/location/provider/ProviderPropertiesUnbundled;->create(ZZZZZZZII)Lcom/android/location/provider/ProviderPropertiesUnbundled;

    move-result-object v0

    sput-object v0, Lcom/android/location/fused/FusedLocationProvider;->PROPERTIES:Lcom/android/location/provider/ProviderPropertiesUnbundled;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const-string v0, "FusedLocationProvider"

    sget-object v1, Lcom/android/location/fused/FusedLocationProvider;->PROPERTIES:Lcom/android/location/provider/ProviderPropertiesUnbundled;

    invoke-direct {p0, v0, v1}, Lcom/android/location/provider/LocationProviderBase;-><init>(Ljava/lang/String;Lcom/android/location/provider/ProviderPropertiesUnbundled;)V

    .line 85
    new-instance v0, Lcom/android/location/fused/FusedLocationProvider$2;

    invoke-direct {v0, p0}, Lcom/android/location/fused/FusedLocationProvider$2;-><init>(Lcom/android/location/fused/FusedLocationProvider;)V

    iput-object v0, p0, Lcom/android/location/fused/FusedLocationProvider;->mHandler:Landroid/os/Handler;

    .line 65
    iput-object p1, p0, Lcom/android/location/fused/FusedLocationProvider;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Lcom/android/location/fused/FusionEngine;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/location/fused/FusionEngine;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/location/fused/FusedLocationProvider;->mEngine:Lcom/android/location/fused/FusionEngine;

    .line 69
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 70
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/android/location/fused/FusedLocationProvider;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/location/fused/FusedLocationProvider$1;

    invoke-direct {v1, p0}, Lcom/android/location/fused/FusedLocationProvider$1;-><init>(Lcom/android/location/fused/FusedLocationProvider;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/location/fused/FusedLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/location/fused/FusedLocationProvider;)Lcom/android/location/fused/FusionEngine;
    .locals 1
    .param p0, "x0"    # Lcom/android/location/fused/FusedLocationProvider;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/location/fused/FusedLocationProvider;->mEngine:Lcom/android/location/fused/FusionEngine;

    return-object v0
.end method


# virtual methods
.method public onDisable()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/location/fused/FusedLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 113
    return-void
.end method

.method public onDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/location/fused/FusedLocationProvider;->mEngine:Lcom/android/location/fused/FusionEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/location/fused/FusionEngine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public onEnable()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/location/fused/FusedLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 108
    return-void
.end method

.method public onGetStatus(Landroid/os/Bundle;)I
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

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
    .locals 3
    .param p1, "request"    # Lcom/android/location/provider/ProviderRequestUnbundled;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/location/fused/FusedLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    new-instance v2, Lcom/android/location/fused/FusedLocationProvider$RequestWrapper;

    invoke-direct {v2, p1, p2}, Lcom/android/location/fused/FusedLocationProvider$RequestWrapper;-><init>(Lcom/android/location/provider/ProviderRequestUnbundled;Landroid/os/WorkSource;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 118
    return-void
.end method
