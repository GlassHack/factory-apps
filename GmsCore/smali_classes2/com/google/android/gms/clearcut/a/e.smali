.class public final Lcom/google/android/gms/clearcut/a/e;
.super Lcom/google/android/gms/common/internal/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/m;)V
    .locals 6

    .prologue
    .line 27
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/e;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/m;[Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 18
    invoke-static {p1}, Lcom/google/android/gms/clearcut/a/j;->a(Landroid/os/IBinder;)Lcom/google/android/gms/clearcut/a/i;

    move-result-object v0

    return-object v0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "com.google.android.gms.clearcut.service.START"

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/clearcut/a/f;Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/android/gms/clearcut/a/e;->j()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/clearcut/a/i;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/clearcut/a/i;->a(Lcom/google/android/gms/clearcut/a/f;Lcom/google/android/gms/clearcut/LogEventParcelable;)V

    .line 60
    return-void
.end method

.method protected final a(Lcom/google/android/gms/common/internal/aa;Lcom/google/android/gms/common/internal/i;)V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    const v1, 0x5d4044

    iget-object v2, p0, Lcom/google/android/gms/common/internal/e;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/common/internal/aa;->a(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 54
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "com.google.android.gms.clearcut.internal.IClearcutLoggerService"

    return-object v0
.end method
