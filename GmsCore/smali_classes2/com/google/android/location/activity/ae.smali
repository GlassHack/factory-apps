.class final Lcom/google/android/location/activity/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field a:I

.field final synthetic b:Lcom/google/android/location/activity/ad;


# direct methods
.method private constructor <init>(Lcom/google/android/location/activity/ad;)V
    .locals 1

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/location/activity/ae;->b:Lcom/google/android/location/activity/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/activity/ae;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/activity/ad;B)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/google/android/location/activity/ae;-><init>(Lcom/google/android/location/activity/ad;)V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 93
    iget v1, p0, Lcom/google/android/location/activity/ae;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/location/activity/ae;->a:I

    .line 98
    iget v1, p0, Lcom/google/android/location/activity/ae;->a:I

    if-ne v1, v0, :cond_1

    .line 99
    :goto_0
    iget-object v1, p0, Lcom/google/android/location/activity/ae;->b:Lcom/google/android/location/activity/ad;

    iget-object v1, v1, Lcom/google/android/location/activity/ad;->a:Lcom/google/android/location/os/at;

    if-nez v1, :cond_2

    .line 100
    iget-object v1, p0, Lcom/google/android/location/activity/ae;->b:Lcom/google/android/location/activity/ad;

    iget-object v1, v1, Lcom/google/android/location/activity/ad;->b:Lcom/google/android/location/activity/bu;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/google/android/location/activity/ae;->b:Lcom/google/android/location/activity/ad;

    iget-object v1, v1, Lcom/google/android/location/activity/ad;->b:Lcom/google/android/location/activity/bu;

    invoke-interface {v1, v0}, Lcom/google/android/location/activity/bu;->d(Z)V

    .line 117
    :cond_0
    :goto_1
    return-void

    .line 98
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 105
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/activity/ae;->b:Lcom/google/android/location/activity/ad;

    iget-object v1, v1, Lcom/google/android/location/activity/ad;->a:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v1

    new-instance v2, Lcom/google/android/location/activity/af;

    invoke-direct {v2, p0, v0}, Lcom/google/android/location/activity/af;-><init>(Lcom/google/android/location/activity/ae;Z)V

    invoke-interface {v1, v2}, Lcom/google/android/location/k/j;->a(Ljava/lang/Runnable;)Z

    move-result v0

    .line 113
    if-nez v0, :cond_0

    .line 114
    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "HwTilt"

    const-string v1, "onTilt not called because os is quitting or quit."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
