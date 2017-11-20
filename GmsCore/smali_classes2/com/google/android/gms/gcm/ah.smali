.class final Lcom/google/android/gms/gcm/ah;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/gcm/ag;


# direct methods
.method constructor <init>(Lcom/google/android/gms/gcm/ag;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/google/android/gms/gcm/ah;->a:Lcom/google/android/gms/gcm/ag;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 211
    iget-object v1, p0, Lcom/google/android/gms/gcm/ah;->a:Lcom/google/android/gms/gcm/ag;

    iget-object v1, v1, Lcom/google/android/gms/gcm/ag;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 212
    return-void
.end method
