.class Lcom/google/glass/settings/ui/WifiSelectorActivity$2;
.super Ljava/lang/Object;
.source "WifiSelectorActivity.java"

# interfaces
.implements Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;


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
    .line 143
    iput-object p1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$2;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBarcodeScanned(Lcom/google/android/libraries/barhopper/Barcode;)Z
    .locals 1
    .param p1, "barcode"    # Lcom/google/android/libraries/barhopper/Barcode;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$2;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    invoke-virtual {v0, p1}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->handleBarcode(Lcom/google/android/libraries/barhopper/Barcode;)Z

    move-result v0

    return v0
.end method

.method public onError(Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;)V
    .locals 4
    .param p1, "barcodeError"    # Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;

    .prologue
    const/4 v3, 0x0

    .line 146
    sget-object v0, Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;->CAMERA:Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;

    if-ne p1, v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$2;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    invoke-virtual {v0, v3}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->setResult(I)V

    .line 148
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$2;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->finish()V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$2;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    invoke-static {v0}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->access$300(Lcom/google/glass/settings/ui/WifiSelectorActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Unexpected barcode error:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
