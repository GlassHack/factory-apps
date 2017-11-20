.class public final Lcom/google/android/gms/usagereporting/a/o;
.super Lcom/google/android/gms/common/internal/e;
.source "SourceFile"


# instance fields
.field private e:Lcom/google/android/gms/usagereporting/a/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/m;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 104
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/e;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/m;[Ljava/lang/String;)V

    .line 99
    iput-object v5, p0, Lcom/google/android/gms/usagereporting/a/o;->e:Lcom/google/android/gms/usagereporting/a/u;

    .line 105
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/usagereporting/a/o;)Lcom/google/android/gms/usagereporting/a/u;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/a/o;->e:Lcom/google/android/gms/usagereporting/a/u;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/usagereporting/a/o;Lcom/google/android/gms/usagereporting/a/u;)Lcom/google/android/gms/usagereporting/a/u;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/gms/usagereporting/a/o;->e:Lcom/google/android/gms/usagereporting/a/u;

    return-object p1
.end method


# virtual methods
.method protected final bridge synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 33
    invoke-static {p1}, Lcom/google/android/gms/usagereporting/a/h;->a(Landroid/os/IBinder;)Lcom/google/android/gms/usagereporting/a/g;

    move-result-object v0

    return-object v0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    const-string v0, "com.google.android.gms.usagereporting.service.START"

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/common/internal/aa;Lcom/google/android/gms/common/internal/i;)V
    .locals 3

    .prologue
    .line 221
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 222
    const v1, 0x5d4044

    iget-object v2, p0, Lcom/google/android/gms/common/internal/e;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/common/internal/aa;->t(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 226
    return-void
.end method

.method public final a(Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;Lcom/google/android/gms/usagereporting/c;)V
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/google/android/gms/usagereporting/a/o;->j()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/usagereporting/a/g;

    new-instance v1, Lcom/google/android/gms/usagereporting/a/q;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/usagereporting/a/q;-><init>(Lcom/google/android/gms/usagereporting/a/o;Lcom/google/android/gms/usagereporting/c;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/usagereporting/a/g;->a(Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;Lcom/google/android/gms/usagereporting/a/a;)V

    .line 130
    return-void
.end method

.method public final a(Lcom/google/android/gms/usagereporting/c;)V
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/google/android/gms/usagereporting/a/o;->j()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/usagereporting/a/g;

    new-instance v1, Lcom/google/android/gms/usagereporting/a/p;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/usagereporting/a/p;-><init>(Lcom/google/android/gms/usagereporting/a/o;Lcom/google/android/gms/usagereporting/c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/usagereporting/a/g;->a(Lcom/google/android/gms/usagereporting/a/a;)V

    .line 120
    return-void
.end method

.method public final a(Lcom/google/android/gms/usagereporting/f;Lcom/google/android/gms/usagereporting/c;Lcom/google/android/gms/common/api/j;)V
    .locals 3

    .prologue
    .line 136
    new-instance v1, Lcom/google/android/gms/usagereporting/a/r;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/google/android/gms/usagereporting/a/r;-><init>(Lcom/google/android/gms/usagereporting/a/o;Lcom/google/android/gms/usagereporting/c;Lcom/google/android/gms/usagereporting/f;Lcom/google/android/gms/common/api/j;)V

    .line 167
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/a/o;->e:Lcom/google/android/gms/usagereporting/a/u;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/google/android/gms/usagereporting/a/o;->j()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/usagereporting/a/g;

    iget-object v2, p0, Lcom/google/android/gms/usagereporting/a/o;->e:Lcom/google/android/gms/usagereporting/a/u;

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/usagereporting/a/g;->b(Lcom/google/android/gms/usagereporting/a/d;Lcom/google/android/gms/usagereporting/a/a;)V

    .line 180
    :goto_0
    return-void

    .line 172
    :cond_0
    if-nez p1, :cond_1

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/usagereporting/a/o;->e:Lcom/google/android/gms/usagereporting/a/u;

    .line 174
    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/usagereporting/c;->a(Lcom/google/android/gms/common/api/aa;)V

    goto :goto_0

    .line 177
    :cond_1
    new-instance v0, Lcom/google/android/gms/usagereporting/a/u;

    invoke-interface {p3, p1}, Lcom/google/android/gms/common/api/j;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/api/v;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/usagereporting/a/u;-><init>(Lcom/google/android/gms/common/api/v;)V

    iput-object v0, p0, Lcom/google/android/gms/usagereporting/a/o;->e:Lcom/google/android/gms/usagereporting/a/u;

    .line 179
    invoke-virtual {p0}, Lcom/google/android/gms/usagereporting/a/o;->j()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/usagereporting/a/g;

    iget-object v2, p0, Lcom/google/android/gms/usagereporting/a/o;->e:Lcom/google/android/gms/usagereporting/a/u;

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/usagereporting/a/g;->a(Lcom/google/android/gms/usagereporting/a/d;Lcom/google/android/gms/usagereporting/a/a;)V

    goto :goto_0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    const-string v0, "com.google.android.gms.usagereporting.internal.IUsageReportingService"

    return-object v0
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 184
    new-instance v1, Lcom/google/android/gms/usagereporting/a/s;

    invoke-direct {v1, p0}, Lcom/google/android/gms/usagereporting/a/s;-><init>(Lcom/google/android/gms/usagereporting/a/o;)V

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/a/o;->e:Lcom/google/android/gms/usagereporting/a/u;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/google/android/gms/usagereporting/a/o;->j()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/usagereporting/a/g;

    iget-object v2, p0, Lcom/google/android/gms/usagereporting/a/o;->e:Lcom/google/android/gms/usagereporting/a/u;

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/usagereporting/a/g;->b(Lcom/google/android/gms/usagereporting/a/d;Lcom/google/android/gms/usagereporting/a/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/e;->d()V

    .line 201
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    const-string v1, "UsageReportingClientImpl"

    const-string v2, "disconnect(): Could not unregister listener from remote:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
