.class public Lcom/google/android/gms/gcm/PeriodicTask$Builder;
.super Lcom/google/android/gms/gcm/Task$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/gcm/PeriodicTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private asU:J

.field private asV:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Lcom/google/android/gms/gcm/Task$Builder;-><init>()V

    iput-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->asU:J

    iput-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->asV:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->isPersisted:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/gcm/PeriodicTask$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->asU:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/android/gms/gcm/PeriodicTask$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->asV:J

    return-wide v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/gcm/PeriodicTask;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->checkConditions()V

    new-instance v0, Lcom/google/android/gms/gcm/PeriodicTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/gcm/PeriodicTask;-><init>(Lcom/google/android/gms/gcm/PeriodicTask$Builder;Lcom/google/android/gms/gcm/PeriodicTask$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/android/gms/gcm/Task;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->build()Lcom/google/android/gms/gcm/PeriodicTask;

    move-result-object v0

    return-object v0
.end method

.method protected checkConditions()V
    .locals 4

    const-wide/16 v2, -0x1

    invoke-super {p0}, Lcom/google/android/gms/gcm/Task$Builder;->checkConditions()V

    iget-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->asU:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must call setPeriod(long) to establish an execution interval for this periodic task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->asV:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->asU:J

    long-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->asV:J

    :cond_1
    return-void
.end method

.method public setFlex(J)Lcom/google/android/gms/gcm/PeriodicTask$Builder;
    .locals 1
    .param p1, "flexInSeconds"    # J

    .prologue
    iput-wide p1, p0, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->asV:J

    return-object p0
.end method

.method public setPeriod(J)Lcom/google/android/gms/gcm/PeriodicTask$Builder;
    .locals 1
    .param p1, "intervalInSeconds"    # J

    .prologue
    iput-wide p1, p0, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->asU:J

    return-object p0
.end method

.method public setPersisted(Z)Lcom/google/android/gms/gcm/PeriodicTask$Builder;
    .locals 0
    .param p1, "isPersisted"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->isPersisted:Z

    return-object p0
.end method

.method public bridge synthetic setPersisted(Z)Lcom/google/android/gms/gcm/Task$Builder;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setPersisted(Z)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setService(Ljava/lang/Class;)Lcom/google/android/gms/gcm/PeriodicTask$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/gcm/GcmTaskService;",
            ">;)",
            "Lcom/google/android/gms/gcm/PeriodicTask$Builder;"
        }
    .end annotation

    .prologue
    .local p1, "gcmTaskService":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/gms/gcm/GcmTaskService;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->gcmTaskService:Ljava/lang/String;

    return-object p0
.end method

.method public setService(Ljava/lang/String;)Lcom/google/android/gms/gcm/PeriodicTask$Builder;
    .locals 0
    .param p1, "gcmTaskServiceName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->gcmTaskService:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setService(Ljava/lang/Class;)Lcom/google/android/gms/gcm/Task$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Class;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setService(Ljava/lang/Class;)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setService(Ljava/lang/String;)Lcom/google/android/gms/gcm/Task$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setService(Ljava/lang/String;)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTag(Ljava/lang/String;)Lcom/google/android/gms/gcm/PeriodicTask$Builder;
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setTag(Ljava/lang/String;)Lcom/google/android/gms/gcm/Task$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setTag(Ljava/lang/String;)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setUpdateCurrent(Z)Lcom/google/android/gms/gcm/PeriodicTask$Builder;
    .locals 0
    .param p1, "updateCurrent"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->updateCurrent:Z

    return-object p0
.end method

.method public bridge synthetic setUpdateCurrent(Z)Lcom/google/android/gms/gcm/Task$Builder;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setUpdateCurrent(Z)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setWiFiOnly(Z)Lcom/google/android/gms/gcm/Task$Builder;
    .locals 0
    .param p1, "wiFiOnly"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->wifiOnly:Z

    return-object p0
.end method
