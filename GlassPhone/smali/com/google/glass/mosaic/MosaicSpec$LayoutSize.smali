.class public final enum Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;
.super Ljava/lang/Enum;
.source "MosaicSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/mosaic/MosaicSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

.field public static final enum BIG:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

.field public static final enum MEDIUM:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

.field public static final enum SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 206
    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    const-string v1, "BIG"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->BIG:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    .line 207
    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    const-string v1, "MEDIUM"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->MEDIUM:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    .line 208
    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    const-string v1, "SMALL"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    .line 205
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    sget-object v1, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->BIG:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->MEDIUM:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->$VALUES:[Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 205
    const-class v0, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->$VALUES:[Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    invoke-virtual {v0}, [Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    return-object v0
.end method
