.class Lcom/google/glass/setup/BaseSetupActivity$1;
.super Ljava/lang/Object;
.source "BaseSetupActivity.java"

# interfaces
.implements Lcom/google/glass/wifi/WifiScanner$WifiCumulativeScannerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/BaseSetupActivity;->onCreateInternal(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/BaseSetupActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/BaseSetupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/setup/BaseSetupActivity;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/google/glass/setup/BaseSetupActivity$1;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCumulativeScanResultsAvailable(Z)V
    .locals 1
    .param p1, "isLastScan"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$1;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iput-boolean p1, v0, Lcom/google/glass/setup/BaseSetupActivity;->isLastScan:Z

    .line 159
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$1;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-virtual {v0}, Lcom/google/glass/setup/BaseSetupActivity;->connectToWifiAfterEncryptionKnown()V

    .line 160
    return-void
.end method
