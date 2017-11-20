.class final Lcom/google/android/gms/location/internal/o;
.super Lcom/google/android/gms/location/i;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/l;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/google/android/gms/location/i;-><init>()V

    .line 233
    if-nez p2, :cond_0

    new-instance v0, Lcom/google/android/gms/location/internal/n;

    invoke-direct {v0, p1}, Lcom/google/android/gms/location/internal/n;-><init>(Lcom/google/android/gms/location/l;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/location/internal/o;->a:Landroid/os/Handler;

    .line 235
    return-void

    .line 233
    :cond_0
    new-instance v0, Lcom/google/android/gms/location/internal/n;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/location/internal/n;-><init>(Lcom/google/android/gms/location/l;Landroid/os/Looper;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/internal/o;->a:Landroid/os/Handler;

    .line 262
    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/gms/location/internal/o;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 244
    const-string v0, "LocationClientHelper"

    const-string v1, "Received a location in client after calling removeLocationUpdates."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 249
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 250
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 251
    iget-object v1, p0, Lcom/google/android/gms/location/internal/o;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
