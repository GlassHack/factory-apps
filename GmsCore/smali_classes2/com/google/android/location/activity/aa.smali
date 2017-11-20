.class final Lcom/google/android/location/activity/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/location/provider/ActivityRecognitionProvider$Sink;


# instance fields
.field a:J

.field final synthetic b:Lcom/google/android/location/activity/z;


# direct methods
.method constructor <init>(Lcom/google/android/location/activity/z;)V
    .locals 2

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/location/activity/aa;->b:Lcom/google/android/location/activity/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iget-object v0, p0, Lcom/google/android/location/activity/aa;->b:Lcom/google/android/location/activity/z;

    invoke-static {v0}, Lcom/google/android/location/activity/z;->a(Lcom/google/android/location/activity/z;)Lcom/google/android/location/os/at;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/activity/aa;->a:J

    return-void
.end method


# virtual methods
.method public final onActivityChanged(Lcom/android/location/provider/ActivityChangedEvent;)V
    .locals 8

    .prologue
    .line 85
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "HWAR"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/aa;->b:Lcom/google/android/location/activity/z;

    invoke-static {v0}, Lcom/google/android/location/activity/z;->b(Lcom/google/android/location/activity/z;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {p1}, Lcom/android/location/provider/ActivityChangedEvent;->getActivityRecognitionEvents()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/location/provider/ActivityRecognitionEvent;

    .line 89
    iget-object v0, p0, Lcom/google/android/location/activity/aa;->b:Lcom/google/android/location/activity/z;

    invoke-static {v0}, Lcom/google/android/location/activity/z;->a(Lcom/google/android/location/activity/z;)Lcom/google/android/location/os/at;

    move-result-object v0

    const-string v1, "ar"

    const-string v2, "hw_num_of_activity_events"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/location/provider/ActivityRecognitionEvent;->getActivity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/location/provider/ActivityRecognitionEvent;->getEventType()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x1

    const/4 v6, 0x1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/activity/aa;->b:Lcom/google/android/location/activity/z;

    invoke-static {v0}, Lcom/google/android/location/activity/z;->a(Lcom/google/android/location/activity/z;)Lcom/google/android/location/os/at;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    .line 93
    iget-wide v2, p0, Lcom/google/android/location/activity/aa;->a:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xdbba00

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 94
    iget-object v2, p0, Lcom/google/android/location/activity/aa;->b:Lcom/google/android/location/activity/z;

    invoke-static {v2}, Lcom/google/android/location/activity/z;->a(Lcom/google/android/location/activity/z;)Lcom/google/android/location/os/at;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/android/location/os/at;->a(J)V

    .line 95
    iput-wide v0, p0, Lcom/google/android/location/activity/aa;->a:J

    .line 98
    :cond_2
    return-void
.end method
