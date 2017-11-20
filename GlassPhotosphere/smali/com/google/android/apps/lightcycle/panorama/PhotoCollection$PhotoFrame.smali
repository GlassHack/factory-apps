.class Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;
.super Ljava/lang/Object;
.source "PhotoCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoFrame"
.end annotation


# instance fields
.field public cameraToGL:[F

.field public cameraToWorld:[F

.field public count:I

.field public endQuaternion:Lcom/google/android/apps/lightcycle/math/Quaternion;

.field public previewFadeInAlpha:F

.field public previewTexture:Lcom/google/android/apps/lightcycle/opengl/GLTexture;

.field public startQuaternion:Lcom/google/android/apps/lightcycle/math/Quaternion;

.field final synthetic this$0:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

.field public thumbnailLoaded:Z

.field public thumbnailTexture:Lcom/google/android/apps/lightcycle/opengl/GLTexture;

.field public visible:Z


# direct methods
.method private constructor <init>(Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->this$0:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->cameraToGL:[F

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->cameraToWorld:[F

    .line 53
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Quaternion;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->startQuaternion:Lcom/google/android/apps/lightcycle/math/Quaternion;

    .line 54
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Quaternion;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->endQuaternion:Lcom/google/android/apps/lightcycle/math/Quaternion;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->previewFadeInAlpha:F

    .line 58
    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->thumbnailLoaded:Z

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->visible:Z

    .line 61
    iput v1, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->count:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;
    .param p2, "x1"    # Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$1;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;-><init>(Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;)V

    return-void
.end method
