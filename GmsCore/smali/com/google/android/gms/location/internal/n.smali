.class final Lcom/google/android/gms/location/internal/n;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/location/l;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/l;)V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 274
    iput-object p1, p0, Lcom/google/android/gms/location/internal/n;->a:Lcom/google/android/gms/location/l;

    .line 275
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/l;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 279
    iput-object p1, p0, Lcom/google/android/gms/location/internal/n;->a:Lcom/google/android/gms/location/l;

    .line 280
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 285
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 291
    const-string v0, "LocationClientHelper"

    const-string v1, "unknown message in LocationHandler.handleMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :goto_0
    return-void

    .line 287
    :pswitch_0
    new-instance v1, Landroid/location/Location;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-direct {v1, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 288
    iget-object v0, p0, Lcom/google/android/gms/location/internal/n;->a:Lcom/google/android/gms/location/l;

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/l;->a(Landroid/location/Location;)V

    goto :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
