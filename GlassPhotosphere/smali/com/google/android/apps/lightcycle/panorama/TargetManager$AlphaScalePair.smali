.class Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;
.super Ljava/lang/Object;
.source "TargetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/panorama/TargetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlphaScalePair"
.end annotation


# instance fields
.field alpha:F

.field scale:F

.field final synthetic this$0:Lcom/google/android/apps/lightcycle/panorama/TargetManager;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/lightcycle/panorama/TargetManager;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;->this$0:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/lightcycle/panorama/TargetManager;Lcom/google/android/apps/lightcycle/panorama/TargetManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/apps/lightcycle/panorama/TargetManager;
    .param p2, "x1"    # Lcom/google/android/apps/lightcycle/panorama/TargetManager$1;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;-><init>(Lcom/google/android/apps/lightcycle/panorama/TargetManager;)V

    return-void
.end method
