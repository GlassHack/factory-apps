.class final Lcom/google/android/gms/gcm/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/android/gms/gcm/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/gcm/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/gcm/b;->a:Lcom/google/android/gms/gcm/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/gcm/b;->a:Lcom/google/android/gms/gcm/a;

    iget-object v1, v1, Lcom/google/android/gms/gcm/a;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
