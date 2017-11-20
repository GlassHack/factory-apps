.class public abstract Lcom/google/android/gms/common/api/g;
.super Lcom/google/android/gms/common/api/f;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/u;


# instance fields
.field private final d:Lcom/google/android/gms/common/api/d;

.field private e:Lcom/google/android/gms/common/api/s;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/d;)V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/google/android/gms/common/api/f;-><init>()V

    .line 100
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/d;

    iput-object v0, p0, Lcom/google/android/gms/common/api/g;->d:Lcom/google/android/gms/common/api/d;

    .line 101
    return-void
.end method

.method private a(Landroid/os/RemoteException;)V
    .locals 4

    .prologue
    .line 177
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-virtual {p1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 179
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/g;->b(Lcom/google/android/gms/common/api/Status;)V

    .line 180
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/common/api/b;)V
.end method

.method public final a(Lcom/google/android/gms/common/api/s;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/android/gms/common/api/g;->e:Lcom/google/android/gms/common/api/s;

    .line 151
    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Failed result must not be success"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    .line 142
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/aa;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/aa;)V

    .line 143
    return-void

    .line 141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/common/api/b;)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/gms/common/api/g;->b:Lcom/google/android/gms/common/api/h;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/google/android/gms/common/api/h;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/b;->f()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/h;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/h;)V

    .line 126
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/b;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 134
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/g;->a(Landroid/os/RemoteException;)V

    .line 130
    throw v0

    .line 131
    :catch_1
    move-exception v0

    .line 132
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/g;->a(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method protected final c()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Lcom/google/android/gms/common/api/f;->c()V

    .line 170
    iget-object v0, p0, Lcom/google/android/gms/common/api/g;->e:Lcom/google/android/gms/common/api/s;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/google/android/gms/common/api/g;->e:Lcom/google/android/gms/common/api/s;

    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/s;->a(Lcom/google/android/gms/common/api/u;)V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/g;->e:Lcom/google/android/gms/common/api/s;

    .line 174
    :cond_0
    return-void
.end method

.method public final d()Lcom/google/android/gms/common/api/d;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/gms/common/api/g;->d:Lcom/google/android/gms/common/api/d;

    return-object v0
.end method
