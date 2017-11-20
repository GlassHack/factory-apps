.class public Lcom/google/glass/trap/SuccessivePokeTrap;
.super Ljava/lang/Object;
.source "SuccessivePokeTrap.java"

# interfaces
.implements Lcom/google/glass/trap/Trap;


# instance fields
.field private listener:Lcom/google/glass/trap/Trap$Listener;

.field private final maxDurationBetweenPokesMillis:J

.field private pokeCount:I

.field private final stopwatch:Lcom/google/glass/time/Stopwatch;

.field private final triggerPokeCount:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 6
    .param p1, "triggerPokeCount"    # I
    .param p2, "maxDurationBetweenPokesMillis"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-le p1, v1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "triggerPokeCount must be > 1 (is %s)"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iput p1, p0, Lcom/google/glass/trap/SuccessivePokeTrap;->triggerPokeCount:I

    .line 33
    const-wide/16 v3, 0x0

    cmp-long v0, p2, v3

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "maxDurationBetweenPokesMillis must be > 0 (is %s)"

    new-array v1, v1, [Ljava/lang/Object;

    .line 34
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    .line 33
    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iput-wide p2, p0, Lcom/google/glass/trap/SuccessivePokeTrap;->maxDurationBetweenPokesMillis:J

    .line 37
    new-instance v0, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v0}, Lcom/google/glass/time/Stopwatch;-><init>()V

    iput-object v0, p0, Lcom/google/glass/trap/SuccessivePokeTrap;->stopwatch:Lcom/google/glass/time/Stopwatch;

    .line 38
    return-void

    :cond_0
    move v0, v2

    .line 30
    goto :goto_0

    :cond_1
    move v0, v2

    .line 33
    goto :goto_1
.end method


# virtual methods
.method public poke()V
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/trap/SuccessivePokeTrap;->stopwatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/trap/SuccessivePokeTrap;->stopwatch:Lcom/google/glass/time/Stopwatch;

    .line 46
    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/glass/trap/SuccessivePokeTrap;->maxDurationBetweenPokesMillis:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 47
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/trap/SuccessivePokeTrap;->pokeCount:I

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/google/glass/trap/SuccessivePokeTrap;->stopwatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->reset()Lcom/google/glass/time/Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 53
    iget v0, p0, Lcom/google/glass/trap/SuccessivePokeTrap;->pokeCount:I

    iget v1, p0, Lcom/google/glass/trap/SuccessivePokeTrap;->triggerPokeCount:I

    if-ge v0, v1, :cond_3

    .line 54
    iget-object v0, p0, Lcom/google/glass/trap/SuccessivePokeTrap;->listener:Lcom/google/glass/trap/Trap$Listener;

    iget v1, p0, Lcom/google/glass/trap/SuccessivePokeTrap;->pokeCount:I

    invoke-interface {v0, v1}, Lcom/google/glass/trap/Trap$Listener;->onCountdown(I)V

    .line 62
    :cond_1
    :goto_1
    return-void

    .line 49
    :cond_2
    iget v0, p0, Lcom/google/glass/trap/SuccessivePokeTrap;->pokeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/trap/SuccessivePokeTrap;->pokeCount:I

    goto :goto_0

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/google/glass/trap/SuccessivePokeTrap;->stopwatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->reset()Lcom/google/glass/time/Stopwatch;

    .line 59
    iget-object v0, p0, Lcom/google/glass/trap/SuccessivePokeTrap;->listener:Lcom/google/glass/trap/Trap$Listener;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/google/glass/trap/SuccessivePokeTrap;->listener:Lcom/google/glass/trap/Trap$Listener;

    invoke-interface {v0}, Lcom/google/glass/trap/Trap$Listener;->onTrapTriggered()V

    goto :goto_1
.end method

.method public setListener(Lcom/google/glass/trap/Trap$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/glass/trap/Trap$Listener;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/glass/trap/SuccessivePokeTrap;->listener:Lcom/google/glass/trap/Trap$Listener;

    .line 42
    return-void
.end method
