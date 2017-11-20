.class public Lcom/google/glass/mosaic/MosaicSpec$CellSpec;
.super Ljava/lang/Object;
.source "MosaicSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/mosaic/MosaicSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellSpec"
.end annotation


# instance fields
.field colSpan:I

.field column:I

.field layoutSize:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

.field row:I

.field rowSpan:I


# direct methods
.method public constructor <init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V
    .locals 0
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "rowSpan"    # I
    .param p4, "colSpan"    # I
    .param p5, "layoutSize"    # Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput p1, p0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->row:I

    .line 221
    iput p2, p0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->column:I

    .line 222
    iput p4, p0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->colSpan:I

    .line 223
    iput p3, p0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->rowSpan:I

    .line 224
    iput-object p5, p0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->layoutSize:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    .line 225
    return-void
.end method
