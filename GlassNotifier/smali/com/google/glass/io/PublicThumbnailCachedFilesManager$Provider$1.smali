.class Lcom/google/glass/io/PublicThumbnailCachedFilesManager$Provider$1;
.super Ljava/lang/Object;
.source "PublicThumbnailCachedFilesManager.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/io/PublicThumbnailCachedFilesManager$Provider;->get()Lcom/google/glass/io/PublicThumbnailCachedFilesManager;
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
        "Lcom/google/glass/io/PublicThumbnailCachedFilesManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/glass/io/PublicThumbnailCachedFilesManager$Provider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/io/PublicThumbnailCachedFilesManager$Provider;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/io/PublicThumbnailCachedFilesManager;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/google/glass/io/PublicThumbnailCachedFilesManager;

    invoke-direct {v0}, Lcom/google/glass/io/PublicThumbnailCachedFilesManager;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/glass/io/PublicThumbnailCachedFilesManager$Provider$1;->get()Lcom/google/glass/io/PublicThumbnailCachedFilesManager;

    move-result-object v0

    return-object v0
.end method
