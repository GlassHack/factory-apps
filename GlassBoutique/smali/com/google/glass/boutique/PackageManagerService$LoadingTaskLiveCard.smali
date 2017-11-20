.class Lcom/google/glass/boutique/PackageManagerService$LoadingTaskLiveCard;
.super Lcom/google/android/glass/timeline/LiveCard;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/boutique/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadingTaskLiveCard"
.end annotation


# instance fields
.field private final loadingTask:Lcom/google/glass/deferredcontent/LoadingTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/deferredcontent/LoadingTask",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/deferredcontent/LoadingTask;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/glass/deferredcontent/LoadingTask",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 413
    .local p3, "loadingTask":Lcom/google/glass/deferredcontent/LoadingTask;, "Lcom/google/glass/deferredcontent/LoadingTask<Landroid/graphics/Bitmap;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/android/glass/timeline/LiveCard;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 414
    iput-object p3, p0, Lcom/google/glass/boutique/PackageManagerService$LoadingTaskLiveCard;->loadingTask:Lcom/google/glass/deferredcontent/LoadingTask;

    .line 415
    return-void
.end method


# virtual methods
.method public unpublish()V
    .locals 2

    .prologue
    .line 419
    invoke-super {p0}, Lcom/google/android/glass/timeline/LiveCard;->unpublish()V

    .line 420
    iget-object v0, p0, Lcom/google/glass/boutique/PackageManagerService$LoadingTaskLiveCard;->loadingTask:Lcom/google/glass/deferredcontent/LoadingTask;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/google/glass/boutique/PackageManagerService$LoadingTaskLiveCard;->loadingTask:Lcom/google/glass/deferredcontent/LoadingTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/deferredcontent/LoadingTask;->cancel(Z)V

    .line 423
    :cond_0
    return-void
.end method
