.class public Lcom/google/glass/navlib/CrossThreadLocationListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/location/b;


# static fields
.field private static final MSG_ON_LOCATION_CHANGED:I = 0x1

.field private static final MSG_ON_ORIENTATION_CHANGED:I = 0x5

.field private static final MSG_ON_PROVIDER_DISABLED:I = 0x2

.field private static final MSG_ON_PROVIDER_ENABLED:I = 0x3

.field private static final MSG_ON_STATUS_CHANGED:I = 0x4


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final listener:Lcom/google/android/maps/driveabout/location/b;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/location/b;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/navlib/CrossThreadLocationListener$1;

    invoke-direct {v1, p0}, Lcom/google/glass/navlib/CrossThreadLocationListener$1;-><init>(Lcom/google/glass/navlib/CrossThreadLocationListener;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/glass/navlib/CrossThreadLocationListener;->handler:Landroid/os/Handler;

    .line 52
    iput-object p1, p0, Lcom/google/glass/navlib/CrossThreadLocationListener;->listener:Lcom/google/android/maps/driveabout/location/b;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/navlib/CrossThreadLocationListener;)Lcom/google/android/maps/driveabout/location/b;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/navlib/CrossThreadLocationListener;->listener:Lcom/google/android/maps/driveabout/location/b;

    return-object v0
.end method

.method private sendSimpleMessage(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/glass/navlib/CrossThreadLocationListener;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/navlib/CrossThreadLocationListener;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/glass/navlib/CrossThreadLocationListener;->sendSimpleMessage(ILjava/lang/Object;)V

    .line 58
    return-void
.end method

.method public onOrientationChanged(Lcom/google/android/maps/driveabout/location/z;)V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/google/glass/navlib/CrossThreadLocationListener;->sendSimpleMessage(ILjava/lang/Object;)V

    .line 81
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/glass/navlib/CrossThreadLocationListener;->sendSimpleMessage(ILjava/lang/Object;)V

    .line 63
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/google/glass/navlib/CrossThreadLocationListener;->sendSimpleMessage(ILjava/lang/Object;)V

    .line 68
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/glass/navlib/CrossThreadLocationListener;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 74
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 75
    iget-object v1, p0, Lcom/google/glass/navlib/CrossThreadLocationListener;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    return-void
.end method
