.class Lcom/google/glass/camera/ThumbnailHelperProvider$1;
.super Ljava/lang/Object;
.source "ThumbnailHelperProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/ThumbnailHelperProvider;->getThumbnailHelper()Lcom/google/glass/util/VideoThumbnailHelper;
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
        "Lcom/google/glass/util/VideoThumbnailHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/ThumbnailHelperProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/ThumbnailHelperProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/ThumbnailHelperProvider;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/google/glass/camera/ThumbnailHelperProvider$1;->this$0:Lcom/google/glass/camera/ThumbnailHelperProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/util/VideoThumbnailHelper;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/google/glass/util/VideoThumbnailHelper;

    invoke-direct {v0}, Lcom/google/glass/util/VideoThumbnailHelper;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/glass/camera/ThumbnailHelperProvider$1;->get()Lcom/google/glass/util/VideoThumbnailHelper;

    move-result-object v0

    return-object v0
.end method
