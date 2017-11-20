.class Lcom/google/glass/android/media/SurfaceProvider$1;
.super Ljava/lang/Object;
.source "SurfaceProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/android/media/SurfaceProvider;->from(Landroid/graphics/SurfaceTexture;)Landroid/view/Surface;
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
        "Landroid/view/Surface;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/android/media/SurfaceProvider;

.field final synthetic val$surfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method constructor <init>(Lcom/google/glass/android/media/SurfaceProvider;Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/android/media/SurfaceProvider;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/glass/android/media/SurfaceProvider$1;->this$0:Lcom/google/glass/android/media/SurfaceProvider;

    iput-object p2, p0, Lcom/google/glass/android/media/SurfaceProvider$1;->val$surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/view/Surface;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/google/glass/android/media/SurfaceProvider$1;->val$surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/glass/android/media/SurfaceProvider$1;->get()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method
