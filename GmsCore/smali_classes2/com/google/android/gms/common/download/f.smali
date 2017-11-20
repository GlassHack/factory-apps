.class final Lcom/google/android/gms/common/download/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/google/android/gms/common/download/f;->b:Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;

    iput-object p2, p0, Lcom/google/android/gms/common/download/f;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-object v0, p0, Lcom/google/android/gms/common/download/f;->a:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;->f()Lcom/google/android/gms/common/download/a;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/download/DownloadService;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/google/android/gms/common/download/f;->a:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;->f()Lcom/google/android/gms/common/download/a;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/download/DownloadService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    new-instance v0, Lcom/google/android/gms/common/download/h;

    invoke-direct {v0}, Lcom/google/android/gms/common/download/h;-><init>()V

    .line 202
    iget-object v1, p0, Lcom/google/android/gms/common/download/f;->b:Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;

    invoke-virtual {v1}, Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;->c()Landroid/support/v4/app/o;

    move-result-object v1

    const-string v2, "image"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/f;->a(Landroid/support/v4/app/o;Ljava/lang/String;)V

    .line 209
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/download/f;->a:Landroid/content/Context;

    const-string v1, "Not downloaded."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/download/f;->a:Landroid/content/Context;

    const-string v1, "Not enabled."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
