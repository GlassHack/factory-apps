.class final Lcom/google/android/gms/maps/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/e/l;


# instance fields
.field final a:Lcom/google/android/gms/maps/internal/t;

.field private final b:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/google/android/gms/maps/internal/t;)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/internal/t;

    iput-object v0, p0, Lcom/google/android/gms/maps/q;->a:Lcom/google/android/gms/maps/internal/t;

    .line 83
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iput-object v0, p0, Lcom/google/android/gms/maps/q;->b:Landroid/support/v4/app/Fragment;

    .line 84
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/q;->a:Lcom/google/android/gms/maps/internal/t;

    invoke-static {p1}, Lcom/google/android/gms/e/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/e/i;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/gms/e/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/e/i;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lcom/google/android/gms/maps/internal/t;->a(Lcom/google/android/gms/e/i;Lcom/google/android/gms/e/i;Landroid/os/Bundle;)Lcom/google/android/gms/e/i;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 126
    invoke-static {v0}, Lcom/google/android/gms/e/m;->a(Lcom/google/android/gms/e/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/q;->a:Lcom/google/android/gms/maps/internal/t;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/t;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 89
    const-string v0, "MapOptions"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/maps/q;->a:Lcom/google/android/gms/maps/internal/t;

    invoke-static {p1}, Lcom/google/android/gms/e/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/e/i;

    move-result-object v2

    invoke-interface {v1, v2, v0, p3}, Lcom/google/android/gms/maps/internal/t;->a(Lcom/google/android/gms/e/i;Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 102
    :try_start_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/q;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->i()Landroid/os/Bundle;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_1

    const-string v1, "MapOptions"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    const-string v1, "MapOptions"

    const-string v2, "MapOptions"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/maps/internal/ci;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/maps/q;->a:Lcom/google/android/gms/maps/internal/t;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/t;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/q;->a:Lcom/google/android/gms/maps/internal/t;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/t;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/q;->a:Lcom/google/android/gms/maps/internal/t;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/t;->b(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/q;->a:Lcom/google/android/gms/maps/internal/t;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/t;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/q;->a:Lcom/google/android/gms/maps/internal/t;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/t;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/q;->a:Lcom/google/android/gms/maps/internal/t;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/t;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
