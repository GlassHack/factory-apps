.class Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline$PhotoFrame;
.super Ljava/lang/Object;
.source "PhotoCollectionOutline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoFrame"
.end annotation


# instance fields
.field public animationAlpha:F

.field public count:I

.field final synthetic this$0:Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;

.field public transform:[F


# direct methods
.method private constructor <init>(Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;)V
    .locals 1

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline$PhotoFrame;->this$0:Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline$PhotoFrame;->transform:[F

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline$PhotoFrame;->animationAlpha:F

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline$PhotoFrame;->count:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;
    .param p2, "x1"    # Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline$1;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline$PhotoFrame;-><init>(Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;)V

    return-void
.end method
