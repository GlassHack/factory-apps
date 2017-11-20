.class Lcom/google/glass/graphics/ThumbnailHelper$Provider$1;
.super Ljava/lang/Object;
.source "ThumbnailHelper.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/graphics/ThumbnailHelper$Provider;->get()Lcom/google/glass/graphics/ThumbnailHelper;
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
        "Lcom/google/glass/graphics/ThumbnailHelper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/glass/graphics/ThumbnailHelper$Provider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/graphics/ThumbnailHelper$Provider;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/graphics/ThumbnailHelper;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/google/glass/graphics/ThumbnailHelper;

    invoke-direct {v0}, Lcom/google/glass/graphics/ThumbnailHelper;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/glass/graphics/ThumbnailHelper$Provider$1;->get()Lcom/google/glass/graphics/ThumbnailHelper;

    move-result-object v0

    return-object v0
.end method
