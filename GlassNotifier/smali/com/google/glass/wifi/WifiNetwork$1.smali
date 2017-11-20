.class Lcom/google/glass/wifi/WifiNetwork$1;
.super Ljava/lang/Object;
.source "WifiNetwork.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/wifi/WifiNetwork;->addOrUpdateConfig(Landroid/net/wifi/WifiConfiguration;Z)Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/wifi/WifiNetwork;


# direct methods
.method constructor <init>(Lcom/google/glass/wifi/WifiNetwork;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/wifi/WifiNetwork;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/google/glass/wifi/WifiNetwork$1;->this$0:Lcom/google/glass/wifi/WifiNetwork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 504
    invoke-static {}, Lcom/google/glass/wifi/WifiNetwork;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Saving configuration..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    iget-object v0, p0, Lcom/google/glass/wifi/WifiNetwork$1;->this$0:Lcom/google/glass/wifi/WifiNetwork;

    invoke-static {v0}, Lcom/google/glass/wifi/WifiNetwork;->access$100(Lcom/google/glass/wifi/WifiNetwork;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 506
    return-void
.end method
