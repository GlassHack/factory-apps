.class public final Lcom/google/android/location/activity/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/google/android/gms/location/ActivityRecognitionResult;

.field b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/activity/ah;->a:Lcom/google/android/gms/location/ActivityRecognitionResult;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/activity/ah;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/activity/ah;->a:Lcom/google/android/gms/location/ActivityRecognitionResult;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/activity/ah;->b:I

    .line 71
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "LowPowerMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "shouldSwitchToLowPower: clear. consecutiveStills = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/android/location/activity/ah;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method
