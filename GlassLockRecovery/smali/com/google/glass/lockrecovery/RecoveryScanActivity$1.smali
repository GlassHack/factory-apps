.class Lcom/google/glass/lockrecovery/RecoveryScanActivity$1;
.super Ljava/lang/Object;
.source "RecoveryScanActivity.java"

# interfaces
.implements Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/lockrecovery/RecoveryScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/lockrecovery/RecoveryScanActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/lockrecovery/RecoveryScanActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/lockrecovery/RecoveryScanActivity;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/glass/lockrecovery/RecoveryScanActivity$1;->this$0:Lcom/google/glass/lockrecovery/RecoveryScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBarcodeScanned(Lcom/google/android/libraries/barhopper/Barcode;)Z
    .locals 1
    .param p1, "barcode"    # Lcom/google/android/libraries/barhopper/Barcode;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/glass/lockrecovery/RecoveryScanActivity$1;->this$0:Lcom/google/glass/lockrecovery/RecoveryScanActivity;

    invoke-virtual {v0, p1}, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->handleBarcode(Lcom/google/android/libraries/barhopper/Barcode;)Z

    move-result v0

    return v0
.end method

.method public onError(Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;)V
    .locals 6
    .param p1, "barcodeError"    # Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 72
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 73
    .local v0, "errorIntent":Landroid/content/Intent;
    sget-object v1, Lcom/google/glass/lockrecovery/RecoveryScanActivity$2;->$SwitchMap$com$google$glass$barcode$BarcodeScanner$BarcodeError:[I

    invoke-virtual {p1}, Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 89
    iget-object v1, p0, Lcom/google/glass/lockrecovery/RecoveryScanActivity$1;->this$0:Lcom/google/glass/lockrecovery/RecoveryScanActivity;

    invoke-static {v1}, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->access$000(Lcom/google/glass/lockrecovery/RecoveryScanActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Unhandled error occurred during scan: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :goto_0
    iget-object v1, p0, Lcom/google/glass/lockrecovery/RecoveryScanActivity$1;->this$0:Lcom/google/glass/lockrecovery/RecoveryScanActivity;

    invoke-static {v1}, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->access$000(Lcom/google/glass/lockrecovery/RecoveryScanActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Finishing scan activity with intent: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object v1, p0, Lcom/google/glass/lockrecovery/RecoveryScanActivity$1;->this$0:Lcom/google/glass/lockrecovery/RecoveryScanActivity;

    invoke-virtual {v1, v4, v0}, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->setResult(ILandroid/content/Intent;)V

    .line 96
    iget-object v1, p0, Lcom/google/glass/lockrecovery/RecoveryScanActivity$1;->this$0:Lcom/google/glass/lockrecovery/RecoveryScanActivity;

    invoke-virtual {v1}, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->finish()V

    .line 97
    return-void

    .line 75
    :pswitch_0
    const-string v1, "return_error"

    iget-object v2, p0, Lcom/google/glass/lockrecovery/RecoveryScanActivity$1;->this$0:Lcom/google/glass/lockrecovery/RecoveryScanActivity;

    sget v3, Lcom/google/glass/lockrecovery/R$string;->barcode_timeout:I

    invoke-virtual {v2, v3}, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lcom/google/glass/lockrecovery/RecoveryScanActivity$1;->this$0:Lcom/google/glass/lockrecovery/RecoveryScanActivity;

    invoke-static {v1}, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->access$000(Lcom/google/glass/lockrecovery/RecoveryScanActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Barcode scan timeout occurred."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    :pswitch_1
    const-string v1, "return_error"

    iget-object v2, p0, Lcom/google/glass/lockrecovery/RecoveryScanActivity$1;->this$0:Lcom/google/glass/lockrecovery/RecoveryScanActivity;

    sget v3, Lcom/google/glass/lockrecovery/R$string;->camera_error:I

    invoke-virtual {v2, v3}, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, Lcom/google/glass/lockrecovery/RecoveryScanActivity$1;->this$0:Lcom/google/glass/lockrecovery/RecoveryScanActivity;

    invoke-static {v1}, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->access$000(Lcom/google/glass/lockrecovery/RecoveryScanActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Camera error occurred while attempting to scan recovery barcode."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
