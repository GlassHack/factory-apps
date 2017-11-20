.class public final Lcom/google/android/gms/d/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/d/b;


# instance fields
.field private a:Lcom/google/android/gms/d/a/p;

.field private b:Lcom/google/android/gms/d/a/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/d/a/p;Lcom/google/android/gms/d/a/b;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/gms/d/a/l;->a:Lcom/google/android/gms/d/a/p;

    .line 28
    iput-object p2, p0, Lcom/google/android/gms/d/a/l;->b:Lcom/google/android/gms/d/a/b;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/d/a/l;->a:Lcom/google/android/gms/d/a/p;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Handle is closed."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/d/a/l;->a:Lcom/google/android/gms/d/a/p;

    invoke-interface {v0, p1}, Lcom/google/android/gms/d/a/p;->a(Ljava/util/Map;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/d/a/b;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 36
    :goto_1
    return-object v0

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/d/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/d/a/l;->a:Lcom/google/android/gms/d/a/p;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Handle is closed."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/d/a/l;->a:Lcom/google/android/gms/d/a/p;

    invoke-interface {v0}, Lcom/google/android/gms/d/a/p;->a()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/d/a/l;->a:Lcom/google/android/gms/d/a/p;

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/d/a/l;->b:Lcom/google/android/gms/d/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/d/a/b;->d()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/d/a/l;->b:Lcom/google/android/gms/d/a/b;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_1
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const-string v1, "DGHandleImpl"

    const-string v2, "Error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
