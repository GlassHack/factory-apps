.class public final Lcom/google/android/location/activity/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/location/activity/b/i;

.field final b:D


# direct methods
.method public constructor <init>(Lcom/google/android/location/activity/b/i;)V
    .locals 2

    .prologue
    .line 39
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/location/activity/b/g;-><init>(Lcom/google/android/location/activity/b/i;Ljava/lang/Double;)V

    .line 40
    return-void
.end method

.method private constructor <init>(Lcom/google/android/location/activity/b/i;Ljava/lang/Double;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-nez p1, :cond_0

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activityRecognitionResult cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/google/android/location/activity/b/g;->a:Lcom/google/android/location/activity/b/i;

    .line 29
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/google/android/location/activity/b/g;->b:D

    .line 30
    return-void

    .line 29
    :cond_1
    const-wide/16 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/google/android/location/activity/b/g;->b:D

    const-wide/16 v2, 0x1

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    iget-object v0, p0, Lcom/google/android/location/activity/b/g;->a:Lcom/google/android/location/activity/b/i;

    iget-object v0, v0, Lcom/google/android/location/activity/b/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/activity/b/h;

    .line 78
    iget v3, v0, Lcom/google/android/location/activity/b/h;->a:I

    invoke-static {v3}, Lcom/google/android/location/activity/b/c;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget v0, v0, Lcom/google/android/location/activity/b/h;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/activity/b/g;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    const-string v0, "GpsSpeed = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/location/activity/b/g;->b:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 84
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
