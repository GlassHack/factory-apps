.class public Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
.super Ljava/lang/Object;
.source "OngoingActivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/ongoing/OngoingActivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityRecord"
.end annotation


# instance fields
.field private params:Landroid/os/Bundle;

.field private final pid:I

.field private final type:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;


# direct methods
.method public constructor <init>(ILcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "type"    # Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;
    .param p3, "params"    # Landroid/os/Bundle;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->pid:I

    .line 54
    iput-object p2, p0, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->type:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    .line 55
    iput-object p3, p0, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->params:Landroid/os/Bundle;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->type:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->params:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;

    .prologue
    .line 46
    iget v0, p0, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->pid:I

    return v0
.end method


# virtual methods
.method public getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->type:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->params:Landroid/os/Bundle;

    return-object v0
.end method
