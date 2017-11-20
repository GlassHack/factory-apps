.class public abstract Lcom/google/android/gms/fitness/h/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/j/a/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(Landroid/os/IInterface;)V
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 16
    check-cast p1, Landroid/os/IInterface;

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/h/h;->a(Landroid/os/IInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Couldn\'t talk to remote service"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/h/h;->a()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 37
    const-string v0, "Failed to connect to remote service"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/h/h;->a()V

    .line 39
    return-void
.end method
