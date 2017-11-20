.class public Lcom/google/android/gms/gcm/OneoffTask$Builder;
.super Lcom/google/android/gms/gcm/Task$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/gcm/OneoffTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private Fo:J

.field private Fp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Lcom/google/android/gms/gcm/Task$Builder;-><init>()V

    iput-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask$Builder;->Fo:J

    iput-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask$Builder;->Fp:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/gcm/OneoffTask$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask$Builder;->Fo:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/android/gms/gcm/OneoffTask$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask$Builder;->Fp:J

    return-wide v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/gcm/OneoffTask;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->checkConditions()V

    new-instance v0, Lcom/google/android/gms/gcm/OneoffTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/gcm/OneoffTask;-><init>(Lcom/google/android/gms/gcm/OneoffTask$Builder;Lcom/google/android/gms/gcm/OneoffTask$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/android/gms/gcm/Task;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->build()Lcom/google/android/gms/gcm/OneoffTask;

    move-result-object v0

    return-object v0
.end method

.method protected checkConditions()V
    .locals 4

    const-wide/16 v2, -0x1

    invoke-super {p0}, Lcom/google/android/gms/gcm/Task$Builder;->checkConditions()V

    iget-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask$Builder;->Fo:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask$Builder;->Fp:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify an execution window using setExecutionWindow."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask$Builder;->Fo:J

    iget-wide v2, p0, Lcom/google/android/gms/gcm/OneoffTask$Builder;->Fp:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Window start must be shorter than window end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method public setExecutionWindow(JJ)Lcom/google/android/gms/gcm/OneoffTask$Builder;
    .locals 0
    .param p1, "windowStartDelaySeconds"    # J
    .param p3, "windowEndDelaySeconds"    # J

    .prologue
    iput-wide p1, p0, Lcom/google/android/gms/gcm/OneoffTask$Builder;->Fo:J

    iput-wide p3, p0, Lcom/google/android/gms/gcm/OneoffTask$Builder;->Fp:J

    return-object p0
.end method

.method public setPersisted(Z)Lcom/google/android/gms/gcm/OneoffTask$Builder;
    .locals 2
    .param p1, "isPersisted"    # Z

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Persistence for one-offs is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setPersisted(Z)Lcom/google/android/gms/gcm/Task$Builder;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setPersisted(Z)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setService(Ljava/lang/Class;)Lcom/google/android/gms/gcm/OneoffTask$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/gcm/GcmTaskService;",
            ">;)",
            "Lcom/google/android/gms/gcm/OneoffTask$Builder;"
        }
    .end annotation

    .prologue
    .local p1, "gcmTaskService":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/gms/gcm/GcmTaskService;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/OneoffTask$Builder;->gcmTaskService:Ljava/lang/String;

    return-object p0
.end method

.method public setService(Ljava/lang/String;)Lcom/google/android/gms/gcm/OneoffTask$Builder;
    .locals 0
    .param p1, "gcmTaskServiceName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/gcm/OneoffTask$Builder;->gcmTaskService:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setService(Ljava/lang/Class;)Lcom/google/android/gms/gcm/Task$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Class;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setService(Ljava/lang/Class;)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setService(Ljava/lang/String;)Lcom/google/android/gms/gcm/Task$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setService(Ljava/lang/String;)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTag(Ljava/lang/String;)Lcom/google/android/gms/gcm/OneoffTask$Builder;
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/gcm/OneoffTask$Builder;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setTag(Ljava/lang/String;)Lcom/google/android/gms/gcm/Task$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setTag(Ljava/lang/String;)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setUpdateCurrent(Z)Lcom/google/android/gms/gcm/OneoffTask$Builder;
    .locals 0
    .param p1, "updateCurrent"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/gcm/OneoffTask$Builder;->updateCurrent:Z

    return-object p0
.end method

.method public bridge synthetic setUpdateCurrent(Z)Lcom/google/android/gms/gcm/Task$Builder;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setUpdateCurrent(Z)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setWiFiOnly(Z)Lcom/google/android/gms/gcm/Task$Builder;
    .locals 0
    .param p1, "wiFiOnly"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/gcm/OneoffTask$Builder;->wifiOnly:Z

    return-object p0
.end method
