.class Lcom/google/android/apps/lightcycle/panorama/LightCycleNative$NativeUpdatePhotoRenderingCallback;
.super Ljava/lang/Object;
.source "LightCycleNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeUpdatePhotoRenderingCallback"
.end annotation


# static fields
.field public static updatePhotoRenderingCallback:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$UpdatePhotoRendering;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative$NativeUpdatePhotoRenderingCallback;->updatePhotoRenderingCallback:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$UpdatePhotoRendering;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleNative$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleNative$1;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative$NativeUpdatePhotoRenderingCallback;-><init>()V

    return-void
.end method

.method public static thumbnailLoaded(I)V
    .locals 1
    .param p0, "imageIndex"    # I

    .prologue
    .line 52
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative$NativeUpdatePhotoRenderingCallback;->updatePhotoRenderingCallback:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$UpdatePhotoRendering;

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative$NativeUpdatePhotoRenderingCallback;->updatePhotoRenderingCallback:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$UpdatePhotoRendering;

    invoke-interface {v0, p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$UpdatePhotoRendering;->thumbnailLoaded(I)V

    .line 55
    :cond_0
    return-void
.end method

.method public static updateTransforms([F)V
    .locals 1
    .param p0, "transforms"    # [F

    .prologue
    .line 46
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative$NativeUpdatePhotoRenderingCallback;->updatePhotoRenderingCallback:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$UpdatePhotoRendering;

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative$NativeUpdatePhotoRenderingCallback;->updatePhotoRenderingCallback:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$UpdatePhotoRendering;

    invoke-interface {v0, p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$UpdatePhotoRendering;->updateTransforms([F)V

    .line 49
    :cond_0
    return-void
.end method
