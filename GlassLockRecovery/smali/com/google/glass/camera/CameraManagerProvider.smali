.class public final Lcom/google/glass/camera/CameraManagerProvider;
.super Lcom/google/glass/inject/Provider;
.source "CameraManagerProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/android/glass/media/CameraManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/camera/CameraManagerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/google/glass/camera/CameraManagerProvider;

    invoke-direct {v0}, Lcom/google/glass/camera/CameraManagerProvider;-><init>()V

    sput-object v0, Lcom/google/glass/camera/CameraManagerProvider;->instance:Lcom/google/glass/camera/CameraManagerProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/camera/CameraManagerProvider;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/glass/camera/CameraManagerProvider;->instance:Lcom/google/glass/camera/CameraManagerProvider;

    return-object v0
.end method


# virtual methods
.method public from(Landroid/content/Context;)Lcom/google/android/glass/media/CameraManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const-string v0, "null context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v0, Lcom/google/glass/camera/CameraManagerProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/camera/CameraManagerProvider$1;-><init>(Lcom/google/glass/camera/CameraManagerProvider;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/CameraManagerProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/media/CameraManager;

    return-object v0
.end method
