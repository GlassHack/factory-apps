.class Lcom/google/glass/util/WifiHelper$2;
.super Ljava/lang/Object;
.source "WifiHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/WifiHelper;->connect(Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/WifiHelper;

.field final synthetic val$wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/google/glass/util/WifiHelper;Landroid/net/wifi/WifiManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/util/WifiHelper;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/google/glass/util/WifiHelper$2;->this$0:Lcom/google/glass/util/WifiHelper;

    iput-object p2, p0, Lcom/google/glass/util/WifiHelper$2;->val$wifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 302
    invoke-static {}, Lcom/google/glass/util/WifiHelper;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Saving configuration..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper$2;->val$wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 304
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper$2;->val$wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 305
    return-void
.end method
