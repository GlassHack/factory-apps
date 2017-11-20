.class final Lcom/google/maps/api/android/lib6/c/dp;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/maps/api/android/lib6/b/g;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/b/g;->g()V

    return-void
.end method
