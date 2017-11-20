.class Lcom/google/glass/barcode/BarcodeRecognizerProvider$1;
.super Ljava/lang/Object;
.source "BarcodeRecognizerProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/barcode/BarcodeRecognizerProvider;->get()Lcom/google/glass/barcode/BarcodeRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Lcom/google/glass/barcode/BarcodeRecognizer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/barcode/BarcodeRecognizerProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/barcode/BarcodeRecognizerProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/barcode/BarcodeRecognizerProvider;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/glass/barcode/BarcodeRecognizerProvider$1;->this$0:Lcom/google/glass/barcode/BarcodeRecognizerProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/barcode/BarcodeRecognizer;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/google/glass/barcode/BarhopperRecognizer;

    invoke-direct {v0}, Lcom/google/glass/barcode/BarhopperRecognizer;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/google/glass/barcode/BarcodeRecognizerProvider$1;->get()Lcom/google/glass/barcode/BarcodeRecognizer;

    move-result-object v0

    return-object v0
.end method
