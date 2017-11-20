.class Lcom/google/glass/mosaic/MosaicHelper$1;
.super Landroid/util/LruCache;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/mosaic/MosaicHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/mosaic/MosaicHelper;I)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/glass/mosaic/MosaicHelper$1;->this$0:Lcom/google/glass/mosaic/MosaicHelper;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 114
    check-cast p1, Ljava/lang/String;

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/mosaic/MosaicHelper$1;->sizeOf(Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;[B)I
    .locals 1

    .prologue
    .line 116
    array-length v0, p2

    return v0
.end method
