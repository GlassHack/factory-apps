.class Lcom/android/providers/downloads/DownloadThread$1;
.super Landroid/net/INetworkPolicyListener$Stub;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/DownloadThread;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/DownloadThread;)V
    .locals 0

    .prologue
    .line 911
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadThread$1;->this$0:Lcom/android/providers/downloads/DownloadThread;

    invoke-direct {p0}, Landroid/net/INetworkPolicyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMeteredIfacesChanged([Ljava/lang/String;)V
    .locals 2
    .param p1, "meteredIfaces"    # [Ljava/lang/String;

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread$1;->this$0:Lcom/android/providers/downloads/DownloadThread;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/providers/downloads/DownloadThread;->access$102(Lcom/android/providers/downloads/DownloadThread;Z)Z

    .line 924
    return-void
.end method

.method public onRestrictBackgroundChanged(Z)V
    .locals 2
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread$1;->this$0:Lcom/android/providers/downloads/DownloadThread;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/providers/downloads/DownloadThread;->access$102(Lcom/android/providers/downloads/DownloadThread;Z)Z

    .line 930
    return-void
.end method

.method public onUidRulesChanged(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "uidRules"    # I

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread$1;->this$0:Lcom/android/providers/downloads/DownloadThread;

    invoke-static {v0}, Lcom/android/providers/downloads/DownloadThread;->access$000(Lcom/android/providers/downloads/DownloadThread;)Lcom/android/providers/downloads/DownloadInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mUid:I

    if-ne p1, v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread$1;->this$0:Lcom/android/providers/downloads/DownloadThread;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/providers/downloads/DownloadThread;->access$102(Lcom/android/providers/downloads/DownloadThread;Z)Z

    .line 918
    :cond_0
    return-void
.end method
