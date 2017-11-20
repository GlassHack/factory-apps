.class Lcom/google/glass/android/hardware/CameraProvider$1;
.super Ljava/lang/Object;
.source "CameraProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/android/hardware/CameraProvider;->open()Lcom/google/glass/android/hardware/Camera;
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
        "Lcom/google/glass/android/hardware/Camera;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/glass/android/hardware/CameraProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/android/hardware/CameraProvider;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/android/hardware/Camera;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/google/glass/android/hardware/CameraImpl;

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/android/hardware/CameraImpl;-><init>(Landroid/hardware/Camera;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/google/glass/android/hardware/CameraProvider$1;->get()Lcom/google/glass/android/hardware/Camera;

    move-result-object v0

    return-object v0
.end method
