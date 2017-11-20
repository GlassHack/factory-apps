.class Lcom/google/android/clockwork/logging/WearableAppLogger$Event;
.super Ljava/lang/Object;
.source "WearableAppLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/clockwork/logging/WearableAppLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Event"
.end annotation


# instance fields
.field private final cwEvent:Lcom/google/common/logging/Cw$CwEvent;

.field final synthetic this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;

.field private final time:J


# direct methods
.method public constructor <init>(Lcom/google/android/clockwork/logging/WearableAppLogger;Lcom/google/common/logging/Cw$CwEvent;J)V
    .locals 0
    .param p2, "cwEvent"    # Lcom/google/common/logging/Cw$CwEvent;
    .param p3, "time"    # J

    .prologue
    .line 403
    iput-object p1, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$Event;->this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    iput-object p2, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$Event;->cwEvent:Lcom/google/common/logging/Cw$CwEvent;

    .line 405
    iput-wide p3, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$Event;->time:J

    .line 406
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/clockwork/logging/WearableAppLogger$Event;)Lcom/google/common/logging/Cw$CwEvent;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/clockwork/logging/WearableAppLogger$Event;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$Event;->cwEvent:Lcom/google/common/logging/Cw$CwEvent;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/clockwork/logging/WearableAppLogger$Event;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/android/clockwork/logging/WearableAppLogger$Event;

    .prologue
    .line 399
    iget-wide v0, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$Event;->time:J

    return-wide v0
.end method
