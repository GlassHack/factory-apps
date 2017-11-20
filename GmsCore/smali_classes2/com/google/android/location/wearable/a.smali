.class public final Lcom/google/android/location/wearable/a;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/internal/bf;


# instance fields
.field private final a:Lcom/google/android/gms/wearable/internal/bf;

.field private final b:Lcom/google/android/location/o/ag;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wearable/internal/bf;Landroid/os/Looper;Landroid/os/PowerManager$WakeLock;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 38
    iput-object p1, p0, Lcom/google/android/location/wearable/a;->a:Lcom/google/android/gms/wearable/internal/bf;

    .line 39
    new-instance v0, Lcom/google/android/location/o/ag;

    invoke-direct {v0, p3, p0}, Lcom/google/android/location/o/ag;-><init>(Landroid/os/PowerManager$WakeLock;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/location/wearable/a;->b:Lcom/google/android/location/o/ag;

    .line 40
    return-void
.end method

.method public static a(Lcom/google/android/gms/wearable/internal/bf;Landroid/os/Looper;Landroid/os/PowerManager$WakeLock;)Lcom/google/android/gms/wearable/internal/bf;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/google/android/location/wearable/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/location/wearable/a;-><init>(Lcom/google/android/gms/wearable/internal/bf;Landroid/os/Looper;Landroid/os/PowerManager$WakeLock;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/i;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    iget-object v0, p0, Lcom/google/android/location/wearable/a;->b:Lcom/google/android/location/o/ag;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/google/android/location/o/ag;->a(IIILjava/lang/Object;)V

    .line 60
    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/r;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    iget-object v0, p0, Lcom/google/android/location/wearable/a;->b:Lcom/google/android/location/o/ag;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/google/android/location/o/ag;->a(IIILjava/lang/Object;)V

    .line 55
    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/s;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    iget-object v0, p0, Lcom/google/android/location/wearable/a;->b:Lcom/google/android/location/o/ag;

    invoke-virtual {v0, v1, v1, v1, p1}, Lcom/google/android/location/o/ag;->a(IIILjava/lang/Object;)V

    .line 45
    return-void
.end method

.method public final b(Lcom/google/android/gms/wearable/s;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    iget-object v0, p0, Lcom/google/android/location/wearable/a;->b:Lcom/google/android/location/o/ag;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/google/android/location/o/ag;->a(IIILjava/lang/Object;)V

    .line 50
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 66
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/location/wearable/a;->a:Lcom/google/android/gms/wearable/internal/bf;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/wearable/s;

    invoke-interface {v1, v0}, Lcom/google/android/gms/wearable/internal/bf;->a(Lcom/google/android/gms/wearable/s;)V

    goto :goto_0

    .line 69
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/location/wearable/a;->a:Lcom/google/android/gms/wearable/internal/bf;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/wearable/s;

    invoke-interface {v1, v0}, Lcom/google/android/gms/wearable/internal/bf;->b(Lcom/google/android/gms/wearable/s;)V

    goto :goto_0

    .line 72
    :pswitch_2
    iget-object v1, p0, Lcom/google/android/location/wearable/a;->a:Lcom/google/android/gms/wearable/internal/bf;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/wearable/r;

    invoke-interface {v1, v0}, Lcom/google/android/gms/wearable/internal/bf;->a(Lcom/google/android/gms/wearable/r;)V

    goto :goto_0

    .line 75
    :pswitch_3
    iget-object v1, p0, Lcom/google/android/location/wearable/a;->a:Lcom/google/android/gms/wearable/internal/bf;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/wearable/i;

    invoke-interface {v1, v0}, Lcom/google/android/gms/wearable/internal/bf;->a(Lcom/google/android/gms/wearable/i;)V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
