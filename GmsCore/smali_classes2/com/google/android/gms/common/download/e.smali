.class final Lcom/google/android/gms/common/download/e;
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
    .line 179
    iput-object p1, p0, Lcom/google/android/gms/common/download/e;->b:Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;

    iput-object p2, p0, Lcom/google/android/gms/common/download/e;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/gms/common/download/e;->a:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;->f()Lcom/google/android/gms/common/download/a;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/download/DownloadService;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/google/android/gms/common/download/e;->a:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;->f()Lcom/google/android/gms/common/download/a;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/download/DownloadService;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/download/e;->a:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;->f()Lcom/google/android/gms/common/download/a;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/download/DownloadService;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 191
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/download/e;->a:Landroid/content/Context;

    const-string v1, "Already disabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
