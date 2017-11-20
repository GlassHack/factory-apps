.class Lcom/google/glass/setup/BarcodeScanActivity$1;
.super Ljava/lang/Object;
.source "BarcodeScanActivity.java"

# interfaces
.implements Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/BarcodeScanActivity;->onCreateInternal(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/BarcodeScanActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/BarcodeScanActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/setup/BarcodeScanActivity;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/glass/setup/BarcodeScanActivity$1;->this$0:Lcom/google/glass/setup/BarcodeScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBarcodeScanned(Lcom/google/android/libraries/barhopper/Barcode;)Z
    .locals 1
    .param p1, "barcode"    # Lcom/google/android/libraries/barhopper/Barcode;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/setup/BarcodeScanActivity$1;->this$0:Lcom/google/glass/setup/BarcodeScanActivity;

    invoke-static {v0, p1}, Lcom/google/glass/setup/BarcodeScanActivity;->access$000(Lcom/google/glass/setup/BarcodeScanActivity;Lcom/google/android/libraries/barhopper/Barcode;)Z

    move-result v0

    return v0
.end method

.method public onError(Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;)V
    .locals 4
    .param p1, "barcodeError"    # Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 63
    .local v0, "errorIntent":Landroid/content/Intent;
    sget-object v1, Lcom/google/glass/setup/BarcodeScanActivity$2;->$SwitchMap$com$google$glass$barcode$BarcodeScanner$BarcodeError:[I

    invoke-virtual {p1}, Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 74
    :goto_0
    iget-object v1, p0, Lcom/google/glass/setup/BarcodeScanActivity$1;->this$0:Lcom/google/glass/setup/BarcodeScanActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/setup/BarcodeScanActivity;->setResult(ILandroid/content/Intent;)V

    .line 75
    iget-object v1, p0, Lcom/google/glass/setup/BarcodeScanActivity$1;->this$0:Lcom/google/glass/setup/BarcodeScanActivity;

    invoke-virtual {v1}, Lcom/google/glass/setup/BarcodeScanActivity;->finish()V

    .line 76
    return-void

    .line 65
    :pswitch_0
    const-string v1, "return_error"

    iget-object v2, p0, Lcom/google/glass/setup/BarcodeScanActivity$1;->this$0:Lcom/google/glass/setup/BarcodeScanActivity;

    sget v3, Lcom/google/glass/setup/R$string;->barcode_timeout:I

    invoke-virtual {v2, v3}, Lcom/google/glass/setup/BarcodeScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 68
    :pswitch_1
    const-string v1, "return_error"

    iget-object v2, p0, Lcom/google/glass/setup/BarcodeScanActivity$1;->this$0:Lcom/google/glass/setup/BarcodeScanActivity;

    sget v3, Lcom/google/glass/setup/R$string;->camera_error:I

    invoke-virtual {v2, v3}, Lcom/google/glass/setup/BarcodeScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
