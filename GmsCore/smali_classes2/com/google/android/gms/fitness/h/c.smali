.class public abstract Lcom/google/android/gms/fitness/h/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/j/a/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lcom/google/android/gms/common/api/aa;)V
    .locals 4

    .prologue
    .line 45
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/h/c;->a(Lcom/google/android/gms/common/api/aa;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    const-string v1, "Couldn\'t send callback to client for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/aa;
.end method

.method protected abstract a(Lcom/google/android/gms/common/api/aa;)V
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/google/android/gms/common/api/aa;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/h/c;->b(Lcom/google/android/gms/common/api/aa;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 35
    const-string v0, "Unhandled exception on request"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 36
    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/h/c;->b(Ljava/lang/Throwable;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/h/c;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/aa;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/h/c;->b(Lcom/google/android/gms/common/api/aa;)V

    .line 37
    return-void
.end method

.method public b(Ljava/lang/Throwable;)Lcom/google/android/gms/common/api/Status;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
