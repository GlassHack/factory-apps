.class Lcom/google/android/apps/lightcycle/panorama/LightCycleNative$NativeProgressCallback;
.super Ljava/lang/Object;
.source "LightCycleNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeProgressCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleNative$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleNative$1;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative$NativeProgressCallback;-><init>()V

    return-void
.end method

.method public static onProgress(II)V
    .locals 2
    .param p0, "sessionId"    # I
    .param p1, "progress"    # I

    .prologue
    .line 28
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleView$ProgressCallback;

    invoke-interface {v0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleView$ProgressCallback;->progress(I)V

    .line 31
    :cond_0
    return-void
.end method
