.class public Lcom/google/glass/logging/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/logging/Timer$TimerProvider;
    }
.end annotation


# instance fields
.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStartTime()J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/google/glass/logging/Timer;->startTime:J

    return-wide v0
.end method

.method public varargs log(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 11
    .param p1, "logger"    # Lcom/google/glass/logging/FormattingLogger;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/glass/logging/Timer;->startTime:J

    sub-long v0, v2, v4

    .line 24
    .local v0, "elapsedTimeMs":J
    const-string v2, "[%dms] "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 27
    :goto_0
    array-length v2, p3

    packed-switch v2, :pswitch_data_0

    .line 47
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Sorry, use less arguments or update this file"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 24
    :cond_0
    new-instance p2, Ljava/lang/String;

    .end local p2    # "tag":Ljava/lang/String;
    invoke-direct {p2, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 29
    .restart local p2    # "tag":Ljava/lang/String;
    :pswitch_0
    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-interface {p1, p2, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    :goto_1
    return-void

    .line 32
    :pswitch_1
    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    aget-object v3, p3, v6

    aput-object v3, v2, v7

    invoke-interface {p1, p2, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 35
    :pswitch_2
    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    aget-object v3, p3, v6

    aput-object v3, v2, v7

    aget-object v3, p3, v7

    aput-object v3, v2, v8

    invoke-interface {p1, p2, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 38
    :pswitch_3
    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    aget-object v3, p3, v6

    aput-object v3, v2, v7

    aget-object v3, p3, v7

    aput-object v3, v2, v8

    aget-object v3, p3, v8

    aput-object v3, v2, v9

    invoke-interface {p1, p2, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 41
    :pswitch_4
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    aget-object v3, p3, v6

    aput-object v3, v2, v7

    aget-object v3, p3, v7

    aput-object v3, v2, v8

    aget-object v3, p3, v8

    aput-object v3, v2, v9

    aget-object v3, p3, v9

    aput-object v3, v2, v10

    invoke-interface {p1, p2, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 44
    :pswitch_5
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    aget-object v3, p3, v6

    aput-object v3, v2, v7

    aget-object v3, p3, v7

    aput-object v3, v2, v8

    aget-object v3, p3, v8

    aput-object v3, v2, v9

    aget-object v3, p3, v9

    aput-object v3, v2, v10

    const/4 v3, 0x5

    aget-object v4, p3, v10

    aput-object v4, v2, v3

    invoke-interface {p1, p2, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/logging/Timer;->startTime:J

    .line 16
    return-void
.end method
