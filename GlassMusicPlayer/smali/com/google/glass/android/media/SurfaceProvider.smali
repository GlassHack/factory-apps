.class public final Lcom/google/glass/android/media/SurfaceProvider;
.super Lcom/google/glass/inject/Provider;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/google/glass/android/media/SurfaceProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/google/glass/android/media/SurfaceProvider;

    invoke-direct {v0}, Lcom/google/glass/android/media/SurfaceProvider;-><init>()V

    sput-object v0, Lcom/google/glass/android/media/SurfaceProvider;->INSTANCE:Lcom/google/glass/android/media/SurfaceProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/android/media/SurfaceProvider;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/glass/android/media/SurfaceProvider;->INSTANCE:Lcom/google/glass/android/media/SurfaceProvider;

    return-object v0
.end method


# virtual methods
.method public final from(Landroid/graphics/SurfaceTexture;)Landroid/view/Surface;
    .locals 1

    .prologue
    .line 30
    const-string v0, "null surfaceTexture"

    invoke-static {p1, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v0, Lcom/google/glass/android/media/SurfaceProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/android/media/SurfaceProvider$1;-><init>(Lcom/google/glass/android/media/SurfaceProvider;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/android/media/SurfaceProvider;->get(Lcom/google/common/base/aw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    return-object v0
.end method
