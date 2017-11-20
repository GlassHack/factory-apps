.class final Lcom/google/android/location/activity/bs;
.super Lcom/google/android/location/activity/bp;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/activity/bk;


# direct methods
.method private constructor <init>(Lcom/google/android/location/activity/bk;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/location/activity/bs;->a:Lcom/google/android/location/activity/bk;

    invoke-direct {p0, p1}, Lcom/google/android/location/activity/bp;-><init>(Lcom/google/android/location/activity/bk;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/activity/bk;B)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/location/activity/bs;-><init>(Lcom/google/android/location/activity/bk;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V
    .locals 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/location/activity/bs;->a:Lcom/google/android/location/activity/bk;

    invoke-static {p1}, Lcom/google/android/location/activity/bk;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/android/location/activity/bs;->a:Lcom/google/android/location/activity/bk;

    new-instance v1, Lcom/google/android/location/activity/bl;

    iget-object v2, p0, Lcom/google/android/location/activity/bs;->a:Lcom/google/android/location/activity/bk;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/location/activity/bl;-><init>(Lcom/google/android/location/activity/bk;B)V

    invoke-static {v0, v1}, Lcom/google/android/location/activity/bk;->a(Lcom/google/android/location/activity/bk;Lcom/google/android/location/activity/bp;)V

    .line 79
    :cond_0
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "WaitingForInVehicle"

    return-object v0
.end method
