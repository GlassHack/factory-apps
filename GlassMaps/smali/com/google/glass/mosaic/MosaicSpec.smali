.class public Lcom/google/glass/mosaic/MosaicSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final INVALID_LAYOUT:I = -0x1

.field protected static final LANDSCAPE_1:Lcom/google/glass/mosaic/MosaicSpec;

.field protected static final LANDSCAPE_2:Lcom/google/glass/mosaic/MosaicSpec;

.field protected static final LANDSCAPE_3:Lcom/google/glass/mosaic/MosaicSpec;

.field protected static final LANDSCAPE_4:Lcom/google/glass/mosaic/MosaicSpec;

.field protected static final LANDSCAPE_5:Lcom/google/glass/mosaic/MosaicSpec;

.field protected static final LANDSCAPE_6:Lcom/google/glass/mosaic/MosaicSpec;

.field protected static final LANDSCAPE_7:Lcom/google/glass/mosaic/MosaicSpec;

.field protected static final LANDSCAPE_8:Lcom/google/glass/mosaic/MosaicSpec;

.field public static final LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray;

.field protected static final PORTRAIT_1:Lcom/google/glass/mosaic/MosaicSpec;

.field protected static final PORTRAIT_2:Lcom/google/glass/mosaic/MosaicSpec;

.field protected static final PORTRAIT_3:Lcom/google/glass/mosaic/MosaicSpec;

.field protected static final PORTRAIT_4:Lcom/google/glass/mosaic/MosaicSpec;

.field protected static final PORTRAIT_5:Lcom/google/glass/mosaic/MosaicSpec;

.field public static final PORTRAIT_MOSAIC_MAP:Landroid/util/SparseArray;


# instance fields
.field private addCellForRemaining:Z

.field private cellSpecs:[Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

.field private columns:I

.field private rows:I

.field private shouldEmbedCount:Z


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 15
    new-instance v8, Lcom/google/glass/mosaic/MosaicSpec;

    new-array v6, v3, [Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v5, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->BIG:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v0, v6, v1

    move-object v2, v8

    move v4, v3

    move-object v5, v6

    move v6, v1

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/mosaic/MosaicSpec;-><init>(II[Lcom/google/glass/mosaic/MosaicSpec$CellSpec;ZZ)V

    sput-object v8, Lcom/google/glass/mosaic/MosaicSpec;->LANDSCAPE_1:Lcom/google/glass/mosaic/MosaicSpec;

    .line 20
    new-instance v8, Lcom/google/glass/mosaic/MosaicSpec;

    new-array v6, v12, [Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v5, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->BIG:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v0, v6, v1

    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v5, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->BIG:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v2, v3

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v0, v6, v3

    move-object v2, v8

    move v4, v12

    move-object v5, v6

    move v6, v3

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/mosaic/MosaicSpec;-><init>(II[Lcom/google/glass/mosaic/MosaicSpec$CellSpec;ZZ)V

    sput-object v8, Lcom/google/glass/mosaic/MosaicSpec;->LANDSCAPE_2:Lcom/google/glass/mosaic/MosaicSpec;

    .line 26
    new-instance v8, Lcom/google/glass/mosaic/MosaicSpec;

    new-array v6, v13, [Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v5, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->BIG:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v0, v6, v1

    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v5, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->BIG:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v2, v3

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v0, v6, v3

    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v5, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->BIG:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v2, v12

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v0, v6, v12

    move-object v2, v8

    move v4, v13

    move-object v5, v6

    move v6, v3

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/mosaic/MosaicSpec;-><init>(II[Lcom/google/glass/mosaic/MosaicSpec$CellSpec;ZZ)V

    sput-object v8, Lcom/google/glass/mosaic/MosaicSpec;->LANDSCAPE_3:Lcom/google/glass/mosaic/MosaicSpec;

    .line 33
    new-instance v10, Lcom/google/glass/mosaic/MosaicSpec;

    new-array v8, v14, [Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v5, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->MEDIUM:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v0, v8, v1

    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v5, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->MEDIUM:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v2, v3

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v0, v8, v3

    new-instance v2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v7, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->MEDIUM:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v4, v1

    move v5, v3

    move v6, v3

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v2, v8, v12

    new-instance v2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v7, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->MEDIUM:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v2, v8, v13

    move-object v4, v10

    move v5, v12

    move v6, v12

    move-object v7, v8

    move v8, v3

    move v9, v1

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/mosaic/MosaicSpec;-><init>(II[Lcom/google/glass/mosaic/MosaicSpec$CellSpec;ZZ)V

    sput-object v10, Lcom/google/glass/mosaic/MosaicSpec;->LANDSCAPE_4:Lcom/google/glass/mosaic/MosaicSpec;

    .line 50
    new-instance v10, Lcom/google/glass/mosaic/MosaicSpec;

    const/4 v0, 0x5

    new-array v11, v0, [Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    new-instance v4, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v9, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->BIG:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v5, v1

    move v6, v1

    move v7, v12

    move v8, v12

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v4, v11, v1

    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v5, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v2, v12

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v0, v11, v3

    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v5, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v2, v13

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v0, v11, v12

    new-instance v2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v7, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v4, v12

    move v5, v3

    move v6, v3

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v2, v11, v13

    new-instance v2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v7, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v4, v13

    move v5, v3

    move v6, v3

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v2, v11, v14

    move-object v4, v10

    move v5, v12

    move v6, v14

    move-object v7, v11

    move v8, v3

    move v9, v1

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/mosaic/MosaicSpec;-><init>(II[Lcom/google/glass/mosaic/MosaicSpec$CellSpec;ZZ)V

    sput-object v10, Lcom/google/glass/mosaic/MosaicSpec;->LANDSCAPE_5:Lcom/google/glass/mosaic/MosaicSpec;

    .line 68
    new-instance v10, Lcom/google/glass/mosaic/MosaicSpec;

    const/4 v0, 0x6

    new-array v8, v0, [Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v5, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->MEDIUM:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v2, v1

    move v4, v12

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v0, v8, v1

    new-instance v2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v7, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->MEDIUM:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v4, v1

    move v5, v3

    move v6, v12

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v2, v8, v3

    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v5, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v2, v12

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v0, v8, v12

    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v5, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v2, v13

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v0, v8, v13

    new-instance v2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v7, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v4, v12

    move v5, v3

    move v6, v3

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v2, v8, v14

    const/4 v0, 0x5

    new-instance v2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v7, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v4, v13

    move v5, v3

    move v6, v3

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v2, v8, v0

    move-object v4, v10

    move v5, v12

    move v6, v14

    move-object v7, v8

    move v8, v3

    move v9, v1

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/mosaic/MosaicSpec;-><init>(II[Lcom/google/glass/mosaic/MosaicSpec$CellSpec;ZZ)V

    sput-object v10, Lcom/google/glass/mosaic/MosaicSpec;->LANDSCAPE_6:Lcom/google/glass/mosaic/MosaicSpec;

    .line 87
    new-instance v10, Lcom/google/glass/mosaic/MosaicSpec;

    const/4 v0, 0x7

    new-array v8, v0, [Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v5, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->MEDIUM:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v2, v1

    move v4, v12

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v0, v8, v1

    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v5, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v2, v12

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v0, v8, v3

    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v5, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v2, v13

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v0, v8, v12

    new-instance v2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v7, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v4, v1

    move v5, v3

    move v6, v3

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v2, v8, v13

    new-instance v2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v7, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v2, v8, v14

    const/4 v0, 0x5

    new-instance v2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v7, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v4, v12

    move v5, v3

    move v6, v3

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v2, v8, v0

    const/4 v0, 0x6

    new-instance v2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v7, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v4, v13

    move v5, v3

    move v6, v3

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v2, v8, v0

    move-object v4, v10

    move v5, v12

    move v6, v14

    move-object v7, v8

    move v8, v3

    move v9, v1

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/mosaic/MosaicSpec;-><init>(II[Lcom/google/glass/mosaic/MosaicSpec$CellSpec;ZZ)V

    sput-object v10, Lcom/google/glass/mosaic/MosaicSpec;->LANDSCAPE_7:Lcom/google/glass/mosaic/MosaicSpec;

    .line 98
    new-instance v10, Lcom/google/glass/mosaic/MosaicSpec;

    const/16 v0, 0x8

    new-array v8, v0, [Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v5, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v0, v8, v1

    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v5, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v2, v3

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v0, v8, v3

    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v5, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v2, v12

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v0, v8, v12

    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v5, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v2, v13

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v0, v8, v13

    new-instance v2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v7, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v4, v1

    move v5, v3

    move v6, v3

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v2, v8, v14

    const/4 v0, 0x5

    new-instance v2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v7, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v2, v8, v0

    const/4 v0, 0x6

    new-instance v2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v7, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v4, v12

    move v5, v3

    move v6, v3

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v2, v8, v0

    const/4 v0, 0x7

    new-instance v2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v7, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v4, v13

    move v5, v3

    move v6, v3

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v2, v8, v0

    move-object v4, v10

    move v5, v12

    move v6, v14

    move-object v7, v8

    move v8, v3

    move v9, v1

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/mosaic/MosaicSpec;-><init>(II[Lcom/google/glass/mosaic/MosaicSpec$CellSpec;ZZ)V

    sput-object v10, Lcom/google/glass/mosaic/MosaicSpec;->LANDSCAPE_8:Lcom/google/glass/mosaic/MosaicSpec;

    .line 110
    new-instance v8, Lcom/google/glass/mosaic/MosaicSpec;

    new-array v6, v3, [Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v5, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->BIG:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v0, v6, v1

    move-object v2, v8

    move v4, v3

    move-object v5, v6

    move v6, v1

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/mosaic/MosaicSpec;-><init>(II[Lcom/google/glass/mosaic/MosaicSpec$CellSpec;ZZ)V

    sput-object v8, Lcom/google/glass/mosaic/MosaicSpec;->PORTRAIT_1:Lcom/google/glass/mosaic/MosaicSpec;

    .line 115
    new-instance v10, Lcom/google/glass/mosaic/MosaicSpec;

    new-array v8, v12, [Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v5, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->MEDIUM:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v0, v8, v1

    new-instance v2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v7, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->MEDIUM:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v4, v1

    move v5, v3

    move v6, v3

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v2, v8, v3

    move-object v4, v10

    move v5, v12

    move v6, v3

    move-object v7, v8

    move v8, v1

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/mosaic/MosaicSpec;-><init>(II[Lcom/google/glass/mosaic/MosaicSpec$CellSpec;ZZ)V

    sput-object v10, Lcom/google/glass/mosaic/MosaicSpec;->PORTRAIT_2:Lcom/google/glass/mosaic/MosaicSpec;

    .line 132
    new-instance v10, Lcom/google/glass/mosaic/MosaicSpec;

    new-array v8, v13, [Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v5, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->MEDIUM:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v2, v1

    move v4, v12

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v0, v8, v1

    new-instance v2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v7, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v4, v1

    move v5, v3

    move v6, v3

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v2, v8, v3

    new-instance v2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v7, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v2, v8, v12

    move-object v4, v10

    move v5, v12

    move v6, v12

    move-object v7, v8

    move v8, v3

    move v9, v1

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/mosaic/MosaicSpec;-><init>(II[Lcom/google/glass/mosaic/MosaicSpec$CellSpec;ZZ)V

    sput-object v10, Lcom/google/glass/mosaic/MosaicSpec;->PORTRAIT_3:Lcom/google/glass/mosaic/MosaicSpec;

    .line 151
    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec;

    new-array v2, v14, [Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    new-instance v4, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v9, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->MEDIUM:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v5, v1

    move v6, v1

    move v7, v12

    move v8, v12

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v4, v2, v1

    new-instance v4, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v9, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v5, v12

    move v6, v1

    move v7, v3

    move v8, v12

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v4, v2, v3

    new-instance v4, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v9, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v5, v13

    move v6, v1

    move v7, v3

    move v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v4, v2, v12

    new-instance v4, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v9, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v5, v13

    move v6, v3

    move v7, v3

    move v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v4, v2, v13

    move-object v4, v0

    move v5, v14

    move v6, v12

    move-object v7, v2

    move v8, v3

    move v9, v1

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/mosaic/MosaicSpec;-><init>(II[Lcom/google/glass/mosaic/MosaicSpec$CellSpec;ZZ)V

    sput-object v0, Lcom/google/glass/mosaic/MosaicSpec;->PORTRAIT_4:Lcom/google/glass/mosaic/MosaicSpec;

    .line 170
    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec;

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    new-instance v4, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v9, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->MEDIUM:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v5, v1

    move v6, v1

    move v7, v12

    move v8, v12

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v4, v2, v1

    new-instance v4, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v9, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v5, v12

    move v6, v1

    move v7, v3

    move v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v4, v2, v3

    new-instance v4, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v9, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v5, v12

    move v6, v3

    move v7, v3

    move v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v4, v2, v12

    new-instance v4, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v9, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v5, v13

    move v6, v1

    move v7, v3

    move v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v4, v2, v13

    new-instance v4, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v9, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v5, v13

    move v6, v3

    move v7, v3

    move v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v4, v2, v14

    move-object v4, v0

    move v5, v14

    move v6, v12

    move-object v7, v2

    move v8, v3

    move v9, v1

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/mosaic/MosaicSpec;-><init>(II[Lcom/google/glass/mosaic/MosaicSpec$CellSpec;ZZ)V

    sput-object v0, Lcom/google/glass/mosaic/MosaicSpec;->PORTRAIT_5:Lcom/google/glass/mosaic/MosaicSpec;

    .line 183
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/glass/mosaic/MosaicSpec;->LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray;

    .line 184
    sget-object v0, Lcom/google/glass/mosaic/MosaicSpec;->LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/glass/mosaic/MosaicSpec;->LANDSCAPE_1:Lcom/google/glass/mosaic/MosaicSpec;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 185
    sget-object v0, Lcom/google/glass/mosaic/MosaicSpec;->LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/glass/mosaic/MosaicSpec;->LANDSCAPE_2:Lcom/google/glass/mosaic/MosaicSpec;

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 186
    sget-object v0, Lcom/google/glass/mosaic/MosaicSpec;->LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/glass/mosaic/MosaicSpec;->LANDSCAPE_3:Lcom/google/glass/mosaic/MosaicSpec;

    invoke-virtual {v0, v13, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 187
    sget-object v0, Lcom/google/glass/mosaic/MosaicSpec;->LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/glass/mosaic/MosaicSpec;->LANDSCAPE_4:Lcom/google/glass/mosaic/MosaicSpec;

    invoke-virtual {v0, v14, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 188
    sget-object v0, Lcom/google/glass/mosaic/MosaicSpec;->LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray;

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/mosaic/MosaicSpec;->LANDSCAPE_5:Lcom/google/glass/mosaic/MosaicSpec;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 189
    sget-object v0, Lcom/google/glass/mosaic/MosaicSpec;->LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray;

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/mosaic/MosaicSpec;->LANDSCAPE_6:Lcom/google/glass/mosaic/MosaicSpec;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    sget-object v0, Lcom/google/glass/mosaic/MosaicSpec;->LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray;

    const/4 v1, 0x7

    sget-object v2, Lcom/google/glass/mosaic/MosaicSpec;->LANDSCAPE_7:Lcom/google/glass/mosaic/MosaicSpec;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    sget-object v0, Lcom/google/glass/mosaic/MosaicSpec;->LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray;

    const/16 v1, 0x8

    sget-object v2, Lcom/google/glass/mosaic/MosaicSpec;->LANDSCAPE_8:Lcom/google/glass/mosaic/MosaicSpec;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 193
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/glass/mosaic/MosaicSpec;->PORTRAIT_MOSAIC_MAP:Landroid/util/SparseArray;

    .line 194
    sget-object v0, Lcom/google/glass/mosaic/MosaicSpec;->PORTRAIT_MOSAIC_MAP:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/glass/mosaic/MosaicSpec;->PORTRAIT_1:Lcom/google/glass/mosaic/MosaicSpec;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    sget-object v0, Lcom/google/glass/mosaic/MosaicSpec;->PORTRAIT_MOSAIC_MAP:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/glass/mosaic/MosaicSpec;->PORTRAIT_2:Lcom/google/glass/mosaic/MosaicSpec;

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    sget-object v0, Lcom/google/glass/mosaic/MosaicSpec;->PORTRAIT_MOSAIC_MAP:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/glass/mosaic/MosaicSpec;->PORTRAIT_3:Lcom/google/glass/mosaic/MosaicSpec;

    invoke-virtual {v0, v13, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 197
    sget-object v0, Lcom/google/glass/mosaic/MosaicSpec;->PORTRAIT_MOSAIC_MAP:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/glass/mosaic/MosaicSpec;->PORTRAIT_4:Lcom/google/glass/mosaic/MosaicSpec;

    invoke-virtual {v0, v14, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 198
    sget-object v0, Lcom/google/glass/mosaic/MosaicSpec;->PORTRAIT_MOSAIC_MAP:Landroid/util/SparseArray;

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/mosaic/MosaicSpec;->PORTRAIT_5:Lcom/google/glass/mosaic/MosaicSpec;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 199
    return-void
.end method

.method public constructor <init>(II[Lcom/google/glass/mosaic/MosaicSpec$CellSpec;ZZ)V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput p1, p0, Lcom/google/glass/mosaic/MosaicSpec;->rows:I

    .line 244
    iput p2, p0, Lcom/google/glass/mosaic/MosaicSpec;->columns:I

    .line 245
    iput-object p3, p0, Lcom/google/glass/mosaic/MosaicSpec;->cellSpecs:[Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    .line 246
    iput-boolean p4, p0, Lcom/google/glass/mosaic/MosaicSpec;->addCellForRemaining:Z

    .line 247
    iput-boolean p5, p0, Lcom/google/glass/mosaic/MosaicSpec;->shouldEmbedCount:Z

    .line 248
    return-void
.end method


# virtual methods
.method public getAddCellForRemaining()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/google/glass/mosaic/MosaicSpec;->addCellForRemaining:Z

    return v0
.end method

.method public getCellSpec(I)Lcom/google/glass/mosaic/MosaicSpec$CellSpec;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/glass/mosaic/MosaicSpec;->cellSpecs:[Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getColumns()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/google/glass/mosaic/MosaicSpec;->columns:I

    return v0
.end method

.method public getRows()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/google/glass/mosaic/MosaicSpec;->rows:I

    return v0
.end method

.method public getShouldEmbedCount()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/google/glass/mosaic/MosaicSpec;->shouldEmbedCount:Z

    return v0
.end method
