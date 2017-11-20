.class final Lcom/google/android/gms/gcm/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/gcm/r;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/android/gms/gcm/n;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/gcm/n;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/gcm/n;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/gcm/n;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    return-void
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/gms/gcm/n;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/gcm/n;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 38
    return-void
.end method
