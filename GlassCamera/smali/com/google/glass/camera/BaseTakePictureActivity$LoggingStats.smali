.class public Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;
.super Ljava/lang/Object;
.source "BaseTakePictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/BaseTakePictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LoggingStats"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

.field private totalPictures:I

.field protected totalVignettes:I

.field private viewfinderLastPreviewStartTimeMillis:J

.field private viewfinderStartTimestampMillis:J

.field private viewfinderTotalPreviewTimeMillis:J


# direct methods
.method protected constructor <init>(Lcom/google/glass/camera/BaseTakePictureActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/BaseTakePictureActivity;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;->viewfinderStartTimestampMillis:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;J)J
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;
    .param p1, "x1"    # J

    .prologue
    .line 145
    iput-wide p1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;->viewfinderStartTimestampMillis:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;->viewfinderTotalPreviewTimeMillis:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;J)J
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;
    .param p1, "x1"    # J

    .prologue
    .line 145
    iput-wide p1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;->viewfinderTotalPreviewTimeMillis:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;

    .prologue
    .line 145
    iget v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;->totalPictures:I

    return v0
.end method

.method static synthetic access$608(Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;)I
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;

    .prologue
    .line 145
    iget v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;->totalPictures:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;->totalPictures:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;->viewfinderLastPreviewStartTimeMillis:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;J)J
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;
    .param p1, "x1"    # J

    .prologue
    .line 145
    iput-wide p1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;->viewfinderLastPreviewStartTimeMillis:J

    return-wide p1
.end method
