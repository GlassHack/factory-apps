.class final Lcom/google/android/gms/common/download/c;
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
    .line 152
    iput-object p1, p0, Lcom/google/android/gms/common/download/c;->b:Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;

    iput-object p2, p0, Lcom/google/android/gms/common/download/c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/gms/common/download/c;->b:Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;

    iget-object v1, p0, Lcom/google/android/gms/common/download/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/common/download/DownloadAlarmReceiver;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 157
    const/4 v0, 0x1

    return v0
.end method
