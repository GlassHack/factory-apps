.class public Lcom/google/glass/android/hardware/CameraProvider;
.super Lcom/google/glass/inject/Provider;
.source "CameraProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/android/hardware/Camera;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/android/hardware/CameraProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/google/glass/android/hardware/CameraProvider;

    invoke-direct {v0}, Lcom/google/glass/android/hardware/CameraProvider;-><init>()V

    sput-object v0, Lcom/google/glass/android/hardware/CameraProvider;->INSTANCE:Lcom/google/glass/android/hardware/CameraProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/android/hardware/CameraProvider;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/google/glass/android/hardware/CameraProvider;->INSTANCE:Lcom/google/glass/android/hardware/CameraProvider;

    return-object v0
.end method


# virtual methods
.method public open()Lcom/google/glass/android/hardware/Camera;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/google/glass/android/hardware/CameraProvider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/android/hardware/CameraProvider$1;-><init>(Lcom/google/glass/android/hardware/CameraProvider;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/android/hardware/CameraProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/android/hardware/Camera;

    return-object v0
.end method

.method public wrap(Landroid/hardware/Camera;)Lcom/google/glass/android/hardware/Camera;
    .locals 1
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 26
    new-instance v0, Lcom/google/glass/android/hardware/CameraProvider$2;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/android/hardware/CameraProvider$2;-><init>(Lcom/google/glass/android/hardware/CameraProvider;Landroid/hardware/Camera;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/android/hardware/CameraProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/android/hardware/Camera;

    return-object v0
.end method
