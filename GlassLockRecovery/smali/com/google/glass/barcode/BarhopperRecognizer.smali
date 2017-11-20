.class public Lcom/google/glass/barcode/BarhopperRecognizer;
.super Ljava/lang/Object;
.source "BarhopperRecognizer.java"

# interfaces
.implements Lcom/google/glass/barcode/BarcodeRecognizer;


# static fields
.field private static final barcodeYData:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/glass/barcode/BarhopperRecognizer;->barcodeYData:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recognize([BII)Lcom/google/android/libraries/barhopper/Barcode;
    .locals 15
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 23
    mul-int v8, p2, p3

    .line 26
    .local v8, "size":I
    invoke-static {}, Lcom/google/glass/camera/CameraUtils;->isNormalHQEnabled()Z

    move-result v13

    if-nez v13, :cond_2

    move-object/from16 v0, p1

    array-length v13, v0

    shl-int/lit8 v14, v8, 0x2

    if-ne v13, v14, :cond_2

    .line 29
    const/4 v11, 0x0

    .line 30
    .local v11, "yIndex":I
    const/4 v7, 0x0

    .line 32
    .local v7, "rgbaIndex":I
    sget-object v13, Lcom/google/glass/barcode/BarhopperRecognizer;->barcodeYData:Ljava/lang/ThreadLocal;

    invoke-virtual {v13}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 34
    .local v10, "yData":[B
    if-eqz v10, :cond_0

    array-length v13, v10

    if-eq v13, v8, :cond_1

    .line 35
    :cond_0
    new-array v10, v8, [B

    .line 36
    sget-object v13, Lcom/google/glass/barcode/BarhopperRecognizer;->barcodeYData:Ljava/lang/ThreadLocal;

    invoke-virtual {v13, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 39
    :cond_1
    const/4 v9, 0x0

    .local v9, "x":I
    move v12, v11

    .end local v11    # "yIndex":I
    .local v12, "yIndex":I
    :goto_0
    if-ge v9, v8, :cond_3

    .line 40
    aget-byte v13, p1, v7

    and-int/lit16 v5, v13, 0xff

    .line 41
    .local v5, "r":I
    add-int/lit8 v13, v7, 0x1

    aget-byte v13, p1, v13

    and-int/lit16 v4, v13, 0xff

    .line 42
    .local v4, "g":I
    add-int/lit8 v13, v7, 0x2

    aget-byte v13, p1, v13

    and-int/lit16 v2, v13, 0xff

    .line 43
    .local v2, "b":I
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "yIndex":I
    .restart local v11    # "yIndex":I
    mul-int/lit8 v13, v5, 0x36

    mul-int/lit16 v14, v4, 0xb7

    add-int/2addr v13, v14

    mul-int/lit8 v14, v2, 0x13

    add-int/2addr v13, v14

    shr-int/lit8 v13, v13, 0x8

    int-to-byte v13, v13

    aput-byte v13, v10, v12

    .line 44
    add-int/lit8 v7, v7, 0x4

    .line 39
    add-int/lit8 v9, v9, 0x1

    move v12, v11

    .end local v11    # "yIndex":I
    .restart local v12    # "yIndex":I
    goto :goto_0

    .line 48
    .end local v2    # "b":I
    .end local v4    # "g":I
    .end local v5    # "r":I
    .end local v7    # "rgbaIndex":I
    .end local v9    # "x":I
    .end local v10    # "yData":[B
    .end local v12    # "yIndex":I
    :cond_2
    move-object/from16 v10, p1

    .line 51
    .restart local v10    # "yData":[B
    :cond_3
    new-instance v3, Lcom/google/android/libraries/barhopper/Barcode;

    invoke-direct {v3}, Lcom/google/android/libraries/barhopper/Barcode;-><init>()V

    .line 52
    .local v3, "barcode":Lcom/google/android/libraries/barhopper/Barcode;
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v10, v3}, Lcom/google/android/libraries/barhopper/Barhopper;->recognize2D(II[BLcom/google/android/libraries/barhopper/Barcode;)Z

    move-result v6

    .line 54
    .local v6, "recognized":Z
    if-nez v6, :cond_4

    .line 55
    const/4 v3, 0x0

    .line 58
    .end local v3    # "barcode":Lcom/google/android/libraries/barhopper/Barcode;
    :cond_4
    return-object v3
.end method
