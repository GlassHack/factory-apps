.class final Lcom/google/android/gms/common/download/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/gms/common/download/b;->a:Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/google/android/gms/common/download/g;

    iget-object v1, p0, Lcom/google/android/gms/common/download/b;->a:Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/download/g;-><init>(Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/download/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 58
    return-void
.end method
