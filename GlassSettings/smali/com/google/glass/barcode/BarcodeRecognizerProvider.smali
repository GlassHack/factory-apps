.class public Lcom/google/glass/barcode/BarcodeRecognizerProvider;
.super Lcom/google/glass/inject/Provider;
.source "BarcodeRecognizerProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/barcode/BarcodeRecognizer;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/barcode/BarcodeRecognizerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/google/glass/barcode/BarcodeRecognizerProvider;

    invoke-direct {v0}, Lcom/google/glass/barcode/BarcodeRecognizerProvider;-><init>()V

    sput-object v0, Lcom/google/glass/barcode/BarcodeRecognizerProvider;->instance:Lcom/google/glass/barcode/BarcodeRecognizerProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    .line 13
    return-void
.end method

.method public static getInstance()Lcom/google/glass/barcode/BarcodeRecognizerProvider;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/glass/barcode/BarcodeRecognizerProvider;->instance:Lcom/google/glass/barcode/BarcodeRecognizerProvider;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/glass/barcode/BarcodeRecognizer;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/google/glass/barcode/BarcodeRecognizerProvider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/barcode/BarcodeRecognizerProvider$1;-><init>(Lcom/google/glass/barcode/BarcodeRecognizerProvider;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/barcode/BarcodeRecognizerProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/barcode/BarcodeRecognizer;

    return-object v0
.end method
