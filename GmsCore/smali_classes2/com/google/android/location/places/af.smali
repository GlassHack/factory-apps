.class final Lcom/google/android/location/places/af;
.super Lcom/google/android/gms/location/i;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/places/ae;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/ae;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/google/android/location/places/af;->a:Lcom/google/android/location/places/ae;

    invoke-direct {p0}, Lcom/google/android/gms/location/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 330
    const-string v0, "Places"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    const-string v0, "Places"

    const-string v1, "Received new location update"

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/af;->a:Lcom/google/android/location/places/ae;

    iget-object v0, v0, Lcom/google/android/location/places/ae;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 336
    return-void
.end method
