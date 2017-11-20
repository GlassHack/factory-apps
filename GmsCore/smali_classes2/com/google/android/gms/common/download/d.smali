.class final Lcom/google/android/gms/common/download/d;
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
    .line 162
    iput-object p1, p0, Lcom/google/android/gms/common/download/d;->b:Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;

    iput-object p2, p0, Lcom/google/android/gms/common/download/d;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, Lcom/google/android/gms/common/download/d;->a:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;->f()Lcom/google/android/gms/common/download/a;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/download/DownloadService;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/google/android/gms/common/download/d;->a:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;->f()Lcom/google/android/gms/common/download/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/download/DownloadService;->a(Landroid/content/Context;Lcom/google/android/gms/common/download/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    const-string v0, "DownloadServiceSettingsActivity"

    const-string v1, "Failed to enable kitty!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 169
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/download/g;

    iget-object v1, p0, Lcom/google/android/gms/common/download/d;->b:Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/download/g;-><init>(Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/download/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/download/d;->a:Landroid/content/Context;

    const-string v1, "Already enabled"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
