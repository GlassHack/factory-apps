.class final Lcom/google/android/gms/fitness/f/r;
.super Lcom/google/android/gms/fitness/f/n;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/j;

.field final synthetic b:Lcom/google/android/gms/fitness/f/q;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/f/q;Lcom/google/android/gms/common/api/j;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/android/gms/fitness/f/r;->b:Lcom/google/android/gms/fitness/f/q;

    iput-object p2, p0, Lcom/google/android/gms/fitness/f/r;->a:Lcom/google/android/gms/common/api/j;

    invoke-direct {p0}, Lcom/google/android/gms/fitness/f/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/google/android/gms/fitness/f/n;->a(Landroid/os/Bundle;)V

    .line 153
    iget-object v0, p0, Lcom/google/android/gms/fitness/f/r;->b:Lcom/google/android/gms/fitness/f/q;

    iget-object v1, p0, Lcom/google/android/gms/fitness/f/r;->a:Lcom/google/android/gms/common/api/j;

    sget-object v2, Lcom/google/android/gms/wearable/y;->a:Lcom/google/android/gms/wearable/d;

    const-string v3, "/fitness/WearableAccountManager/all_accounts"

    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "wear"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/google/android/gms/wearable/d;->a(Lcom/google/android/gms/common/api/j;Landroid/net/Uri;)Lcom/google/android/gms/common/api/y;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/fitness/f/s;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/fitness/f/s;-><init>(Lcom/google/android/gms/fitness/f/q;Lcom/google/android/gms/common/api/j;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/common/api/y;->a(Lcom/google/android/gms/common/api/ab;)V

    .line 154
    return-void
.end method
