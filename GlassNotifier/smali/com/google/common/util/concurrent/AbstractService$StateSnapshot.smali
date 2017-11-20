.class final Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;
.super Ljava/lang/Object;
.source "AbstractService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StateSnapshot"
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field final failure:Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final shutdownWhenStartupFinishes:Z

.field final state:Lcom/google/common/util/concurrent/Service$State;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 2
    .param p1, "internalState"    # Lcom/google/common/util/concurrent/Service$State;

    .prologue
    .line 564
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;ZLjava/lang/Throwable;)V

    .line 565
    return-void
.end method

.method constructor <init>(Lcom/google/common/util/concurrent/Service$State;ZLjava/lang/Throwable;)V
    .locals 4
    .param p1, "internalState"    # Lcom/google/common/util/concurrent/Service$State;
    .param p2, "shutdownWhenStartupFinishes"    # Z
    .param p3, "failure"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    if-eqz p2, :cond_0

    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-ne p1, v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "shudownWhenStartupFinishes can only be set if state is STARTING. Got %s instead."

    invoke-static {v0, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 573
    if-eqz p3, :cond_2

    move v0, v2

    :goto_1
    sget-object v3, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    if-ne p1, v3, :cond_3

    move v3, v2

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_4

    :goto_3
    const-string v0, "A failure cause should be set if and only if the state is failed.  Got %s and %s instead."

    invoke-static {v2, v0, p1, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 579
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lcom/google/common/util/concurrent/Service$State;

    .line 580
    iput-boolean p2, p0, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->shutdownWhenStartupFinishes:Z

    .line 581
    iput-object p3, p0, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->failure:Ljava/lang/Throwable;

    .line 582
    return-void

    :cond_1
    move v0, v1

    .line 569
    goto :goto_0

    :cond_2
    move v0, v1

    .line 573
    goto :goto_1

    :cond_3
    move v3, v1

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_3
.end method


# virtual methods
.method externalState()Lcom/google/common/util/concurrent/Service$State;
    .locals 2

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->shutdownWhenStartupFinishes:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lcom/google/common/util/concurrent/Service$State;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_0

    .line 587
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    .line 589
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lcom/google/common/util/concurrent/Service$State;

    goto :goto_0
.end method

.method failureCause()Ljava/lang/Throwable;
    .locals 3

    .prologue
    .line 595
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lcom/google/common/util/concurrent/Service$State;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "failureCause() is only valid if the service has failed, service is %s"

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lcom/google/common/util/concurrent/Service$State;

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 599
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->failure:Ljava/lang/Throwable;

    return-object v0

    .line 595
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
