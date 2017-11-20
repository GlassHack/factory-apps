.class Lcom/google/glass/settings/ui/WifiSelectorActivity$1;
.super Ljava/lang/Object;
.source "WifiSelectorActivity.java"

# interfaces
.implements Lcom/google/glass/wifi/WifiScanner$WifiCumulativeScannerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/WifiSelectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/WifiSelectorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/WifiSelectorActivity;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$1;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCumulativeScanResultsAvailable(Z)V
    .locals 2
    .param p1, "isLastScan"    # Z

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$1;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$1;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    invoke-static {v1}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->access$000(Lcom/google/glass/settings/ui/WifiSelectorActivity;)Lcom/google/glass/wifi/WifiScanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/wifi/WifiScanner;->fetchLastestCumulativeScanResults()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->access$100(Lcom/google/glass/settings/ui/WifiSelectorActivity;Ljava/util/List;)V

    .line 123
    return-void
.end method
