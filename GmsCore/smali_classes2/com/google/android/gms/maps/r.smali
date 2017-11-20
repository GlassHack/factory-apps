.class final Lcom/google/android/gms/maps/r;
.super Lcom/google/android/gms/e/a;
.source "SourceFile"


# instance fields
.field protected d:Lcom/google/android/gms/e/n;

.field private final e:Landroid/support/v4/app/Fragment;

.field private f:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/google/android/gms/e/a;-><init>()V

    .line 208
    iput-object p1, p0, Lcom/google/android/gms/maps/r;->e:Landroid/support/v4/app/Fragment;

    .line 209
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/maps/r;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/google/android/gms/maps/r;->f:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/r;->b()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/e/n;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/google/android/gms/maps/r;->d:Lcom/google/android/gms/e/n;

    .line 214
    invoke-virtual {p0}, Lcom/google/android/gms/maps/r;->b()V

    .line 215
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/gms/maps/r;->f:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/maps/r;->d:Lcom/google/android/gms/e/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/e/a;->a:Lcom/google/android/gms/e/l;

    if-nez v0, :cond_0

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/r;->f:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/maps/m;->a(Landroid/content/Context;)I

    .line 228
    iget-object v0, p0, Lcom/google/android/gms/maps/r;->f:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/cj;->a(Landroid/content/Context;)Lcom/google/android/gms/maps/internal/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/r;->f:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/gms/e/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/e/i;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/h;->b(Lcom/google/android/gms/e/i;)Lcom/google/android/gms/maps/internal/t;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/google/android/gms/maps/r;->d:Lcom/google/android/gms/e/n;

    new-instance v2, Lcom/google/android/gms/maps/q;

    iget-object v3, p0, Lcom/google/android/gms/maps/r;->e:Landroid/support/v4/app/Fragment;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/maps/q;-><init>(Landroid/support/v4/app/Fragment;Lcom/google/android/gms/maps/internal/t;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/e/n;->a(Lcom/google/android/gms/e/l;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/i; {:try_start_0 .. :try_end_0} :catch_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
