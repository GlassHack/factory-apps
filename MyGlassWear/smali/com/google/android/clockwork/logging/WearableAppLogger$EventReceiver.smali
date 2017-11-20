.class Lcom/google/android/clockwork/logging/WearableAppLogger$EventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WearableAppLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/clockwork/logging/WearableAppLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventReceiver"
.end annotation


# instance fields
.field private mFirstTouchTime:J

.field private mLastScreenOnMs:J

.field final synthetic this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;


# direct methods
.method private constructor <init>(Lcom/google/android/clockwork/logging/WearableAppLogger;)V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 370
    iput-object p1, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$EventReceiver;->this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 372
    iput-wide v0, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$EventReceiver;->mLastScreenOnMs:J

    .line 373
    iput-wide v0, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$EventReceiver;->mFirstTouchTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/clockwork/logging/WearableAppLogger;Lcom/google/android/clockwork/logging/WearableAppLogger$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/clockwork/logging/WearableAppLogger;
    .param p2, "x1"    # Lcom/google/android/clockwork/logging/WearableAppLogger$1;

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/logging/WearableAppLogger$EventReceiver;-><init>(Lcom/google/android/clockwork/logging/WearableAppLogger;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, -0x1

    .line 377
    const-string v1, "WearableAppLogger"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    const-string v1, "WearableAppLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScreenReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_0
    const-string v1, "com.google.android.clockwork.FIRST_TOUCH"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 381
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$EventReceiver;->mFirstTouchTime:J

    .line 396
    :cond_1
    :goto_0
    return-void

    .line 382
    :cond_2
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 383
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$EventReceiver;->mLastScreenOnMs:J

    goto :goto_0

    .line 384
    :cond_3
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 385
    iget-wide v1, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$EventReceiver;->mLastScreenOnMs:J

    cmp-long v1, v1, v8

    if-lez v1, :cond_1

    .line 386
    new-instance v0, Lcom/google/common/logging/Cw$CwEvent;

    invoke-direct {v0}, Lcom/google/common/logging/Cw$CwEvent;-><init>()V

    .line 387
    .local v0, "cwEvent":Lcom/google/common/logging/Cw$CwEvent;
    new-instance v1, Lcom/google/common/logging/Cw$CwUxLog;

    invoke-direct {v1}, Lcom/google/common/logging/Cw$CwUxLog;-><init>()V

    iput-object v1, v0, Lcom/google/common/logging/Cw$CwEvent;->uxLog:Lcom/google/common/logging/Cw$CwUxLog;

    .line 388
    iget-object v1, v0, Lcom/google/common/logging/Cw$CwEvent;->uxLog:Lcom/google/common/logging/Cw$CwUxLog;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$EventReceiver;->mLastScreenOnMs:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/google/common/logging/Cw$CwUxLog;->activeModeSessionLengthMs:J

    .line 390
    iget-object v2, v0, Lcom/google/common/logging/Cw$CwEvent;->uxLog:Lcom/google/common/logging/Cw$CwUxLog;

    iget-wide v3, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$EventReceiver;->mFirstTouchTime:J

    cmp-long v1, v3, v8

    if-lez v1, :cond_4

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v2, Lcom/google/common/logging/Cw$CwUxLog;->touched:Z

    .line 391
    iget-object v1, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$EventReceiver;->this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;

    invoke-virtual {v1, v0}, Lcom/google/android/clockwork/logging/WearableAppLogger;->logEvent(Lcom/google/common/logging/Cw$CwEvent;)V

    .line 392
    iput-wide v6, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$EventReceiver;->mLastScreenOnMs:J

    .line 393
    iput-wide v6, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$EventReceiver;->mFirstTouchTime:J

    goto :goto_0

    .line 390
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method
