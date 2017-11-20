.class public Lcom/google/android/apps/lightcycle/viewer/Tile;
.super Ljava/lang/Object;
.source "Tile.java"


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final height:I

.field public final width:I

.field public final x:I

.field public final y:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;IIII)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/viewer/Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 35
    iput p2, p0, Lcom/google/android/apps/lightcycle/viewer/Tile;->x:I

    .line 36
    iput p3, p0, Lcom/google/android/apps/lightcycle/viewer/Tile;->y:I

    .line 37
    iput p4, p0, Lcom/google/android/apps/lightcycle/viewer/Tile;->width:I

    .line 38
    iput p5, p0, Lcom/google/android/apps/lightcycle/viewer/Tile;->height:I

    .line 39
    return-void
.end method
