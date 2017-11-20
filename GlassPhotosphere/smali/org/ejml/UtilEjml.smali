.class public Lorg/ejml/UtilEjml;
.super Ljava/lang/Object;


# static fields
.field public static EPS:D

.field public static TOLERANCE:D

.field public static VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "0.19"

    sput-object v0, Lorg/ejml/UtilEjml;->VERSION:Ljava/lang/String;

    const-wide v0, 0x3e45798ee2308c3aL    # 1.0E-8

    sput-wide v0, Lorg/ejml/UtilEjml;->TOLERANCE:D

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, -0x3fb6000000000000L    # -52.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sput-wide v0, Lorg/ejml/UtilEjml;->EPS:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isUncountable(D)Z
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static max([DII)D
    .locals 7

    aget-wide v2, p0, p1

    add-int v5, p1, p2

    add-int/lit8 v0, p1, 0x1

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-wide v0, p0, v4

    cmpl-double v6, v0, v2

    if-lez v6, :cond_1

    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v0

    goto :goto_0

    :cond_0
    return-wide v2

    :cond_1
    move-wide v0, v2

    goto :goto_1
.end method

.method public static memset([DD)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aput-wide p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static memset([DDI)V
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    aput-wide p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static memset([III)V
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aput p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static parseMatrix(Ljava/lang/String;I)Lorg/ejml/data/DenseMatrix64F;
    .locals 10

    const/4 v1, 0x0

    const-string v0, "(\\s)+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v0, v5, v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    array-length v2, v5

    sub-int/2addr v2, v0

    div-int v6, v2, p1

    new-instance v7, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v7, v6, p1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    move v4, v1

    :goto_1
    if-ge v4, v6, :cond_2

    move v2, v0

    move v0, v1

    :goto_2
    if-ge v0, p1, :cond_1

    add-int/lit8 v3, v2, 0x1

    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v7, v4, v0, v8, v9}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_2

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v2

    goto :goto_1

    :cond_2
    return-object v7
.end method

.method public static setnull([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static sortByIndex([DI)[Ljava/lang/Integer;
    .locals 3

    new-array v1, p1, [Ljava/lang/Integer;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ejml/UtilEjml$1;

    invoke-direct {v0, p0}, Lorg/ejml/UtilEjml$1;-><init>([D)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v1
.end method
