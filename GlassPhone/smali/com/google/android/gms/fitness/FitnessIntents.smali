.class public Lcom/google/android/gms/fitness/FitnessIntents;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_TRACK:Ljava/lang/String; = "vnd.google.fitness.TRACK"

.field public static final ACTION_VIEW:Ljava/lang/String; = "vnd.google.fitness.VIEW"

.field public static final ACTION_VIEW_GOAL:Ljava/lang/String; = "vnd.google.fitness.VIEW_GOAL"

.field public static final EXTRA_DATA_SOURCE:Ljava/lang/String; = "vnd.google.fitness.data_source"

.field public static final EXTRA_END_TIME:Ljava/lang/String; = "vnd.google.fitness.end_time"

.field public static final EXTRA_SESSION:Ljava/lang/String; = "vnd.google.fitness.session"

.field public static final EXTRA_START_TIME:Ljava/lang/String; = "vnd.google.fitness.start_time"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "actionStatus"

.field public static final MIME_TYPE_ACTIVITY_PREFIX:Ljava/lang/String; = "vnd.google.fitness.activity/"

.field public static final MIME_TYPE_DATA_TYPE_PREFIX:Ljava/lang/String; = "vnd.google.fitness.data_type/"

.field public static final MIME_TYPE_SESSION_PREFIX:Ljava/lang/String; = "vnd.google.fitness.session/"

.field public static final STATUS_ACTIVE:Ljava/lang/String; = "ActiveActionStatus"

.field public static final STATUS_COMPLETED:Ljava/lang/String; = "CompletedActionStatus"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivityMimeType(I)Ljava/lang/String;
    .locals 2
    .param p0, "activity"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vnd.google.fitness.activity/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/fitness/FitnessActivities;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataSource(Landroid/content/Intent;)Lcom/google/android/gms/fitness/data/DataSource;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "vnd.google.fitness.data_source"

    sget-object v1, Lcom/google/android/gms/fitness/data/DataSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method public static getDataTypeMimeType(Lcom/google/android/gms/fitness/data/DataType;)Ljava/lang/String;
    .locals 2
    .param p0, "dataType"    # Lcom/google/android/gms/fitness/data/DataType;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vnd.google.fitness.data_type/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEndTime(Landroid/content/Intent;)J
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "vnd.google.fitness.end_time"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSessionMimeType(I)Ljava/lang/String;
    .locals 2
    .param p0, "activity"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vnd.google.fitness.session/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/fitness/FitnessActivities;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStartTime(Landroid/content/Intent;)J
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "vnd.google.fitness.start_time"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
