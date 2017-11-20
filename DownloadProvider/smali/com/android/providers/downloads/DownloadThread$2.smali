.class Lcom/android/providers/downloads/DownloadThread$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 933
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadThread$2;->this$0:Lcom/android/providers/downloads/DownloadThread;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 936
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 937
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 939
    :cond_0
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread$2;->this$0:Lcom/android/providers/downloads/DownloadThread;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/providers/downloads/DownloadThread;->access$202(Lcom/android/providers/downloads/DownloadThread;Z)Z

    .line 941
    :cond_1
    return-void
.end method
