.class Lcom/google/android/gsf/checkin/EventLogAggregator$1$1;
.super Ljava/lang/Object;
.source "EventLogAggregator.java"

# interfaces
.implements Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/checkin/EventLogAggregator$1;->newState(I)Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private count:I

.field final synthetic this$0:Lcom/google/android/gsf/checkin/EventLogAggregator$1;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/checkin/EventLogAggregator$1;)V
    .locals 1

    .prologue
    .line 434
    iput-object p1, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$1$1;->this$0:Lcom/google/android/gsf/checkin/EventLogAggregator$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$1$1;->count:I

    return-void
.end method


# virtual methods
.method public addValue(Landroid/util/EventLog$Event;Ljava/lang/Object;)V
    .locals 1
    .param p1, "event"    # Landroid/util/EventLog$Event;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 437
    iget v0, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$1$1;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$1$1;->count:I

    return-void
.end method

.method public finish(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 1
    .param p1, "f"    # Ljava/lang/StringBuilder;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 436
    iget v0, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$1$1;->count:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method
