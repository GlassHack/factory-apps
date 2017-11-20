.class Lcom/google/glass/setup/SetupApplication$1;
.super Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;
.source "SetupApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/SetupApplication;->prepareProfileImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/SetupApplication;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/SetupApplication;Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Ljava/lang/String;III)V
    .locals 7
    .param p1, "this$0"    # Lcom/google/glass/setup/SetupApplication;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Lcom/google/glass/util/CachedBitmapFactory;
    .param p4, "x2"    # Ljava/lang/String;
    .param p5, "x3"    # I
    .param p6, "x4"    # I
    .param p7, "x5"    # I

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/glass/setup/SetupApplication$1;->this$0:Lcom/google/glass/setup/SetupApplication;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method protected bindContent(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/glass/setup/SetupApplication$1;->this$0:Lcom/google/glass/setup/SetupApplication;

    invoke-static {v0, p1}, Lcom/google/glass/setup/SetupApplication;->access$002(Lcom/google/glass/setup/SetupApplication;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 73
    iget-object v0, p0, Lcom/google/glass/setup/SetupApplication$1;->this$0:Lcom/google/glass/setup/SetupApplication;

    invoke-static {v0}, Lcom/google/glass/setup/SetupApplication;->access$100(Lcom/google/glass/setup/SetupApplication;)Lcom/google/glass/setup/SetupApplication$ProfilePhotoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/glass/setup/SetupApplication$1;->this$0:Lcom/google/glass/setup/SetupApplication;

    invoke-static {v0}, Lcom/google/glass/setup/SetupApplication;->access$100(Lcom/google/glass/setup/SetupApplication;)Lcom/google/glass/setup/SetupApplication$ProfilePhotoListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/glass/setup/SetupApplication$ProfilePhotoListener;->onProfilePhotoLoaded(Landroid/graphics/Bitmap;)V

    .line 76
    :cond_0
    return-void
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 64
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/glass/setup/SetupApplication$1;->bindContent(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected prepareContent(F)V
    .locals 0
    .param p1, "absScrollVelocity"    # F

    .prologue
    .line 68
    return-void
.end method
