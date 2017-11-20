.class Lcom/google/glass/settings/ui/WifiSettingsItemView$2;
.super Ljava/lang/Object;
.source "WifiSettingsItemView.java"

# interfaces
.implements Lcom/google/glass/wifi/WifiScanner$WifiCumulativeScannerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/WifiSettingsItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/WifiSettingsItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/WifiSettingsItemView;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$2;->this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCumulativeScanResultsAvailable(Z)V
    .locals 1
    .param p1, "isLastScan"    # Z

    .prologue
    .line 88
    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$2;->this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->access$000(Lcom/google/glass/settings/ui/WifiSettingsItemView;)V

    .line 91
    :cond_0
    return-void
.end method
