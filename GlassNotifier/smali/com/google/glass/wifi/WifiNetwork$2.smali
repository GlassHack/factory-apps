.class Lcom/google/glass/wifi/WifiNetwork$2;
.super Ljava/lang/Object;
.source "WifiNetwork.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/wifi/WifiNetwork;->startTimeout(Lcom/google/glass/wifi/WifiNetwork$WifiConnectionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/wifi/WifiNetwork;

.field final synthetic val$callback:Lcom/google/glass/wifi/WifiNetwork$WifiConnectionCallback;


# direct methods
.method constructor <init>(Lcom/google/glass/wifi/WifiNetwork;Lcom/google/glass/wifi/WifiNetwork$WifiConnectionCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/wifi/WifiNetwork;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/google/glass/wifi/WifiNetwork$2;->this$0:Lcom/google/glass/wifi/WifiNetwork;

    iput-object p2, p0, Lcom/google/glass/wifi/WifiNetwork$2;->val$callback:Lcom/google/glass/wifi/WifiNetwork$WifiConnectionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 567
    invoke-static {}, Lcom/google/glass/wifi/WifiNetwork;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Connection timed out."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 568
    iget-object v0, p0, Lcom/google/glass/wifi/WifiNetwork$2;->this$0:Lcom/google/glass/wifi/WifiNetwork;

    invoke-static {v0}, Lcom/google/glass/wifi/WifiNetwork;->access$200(Lcom/google/glass/wifi/WifiNetwork;)V

    .line 569
    iget-object v0, p0, Lcom/google/glass/wifi/WifiNetwork$2;->val$callback:Lcom/google/glass/wifi/WifiNetwork$WifiConnectionCallback;

    invoke-interface {v0}, Lcom/google/glass/wifi/WifiNetwork$WifiConnectionCallback;->onConnectionFailed()V

    .line 570
    return-void
.end method
