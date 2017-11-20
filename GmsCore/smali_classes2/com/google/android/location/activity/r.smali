.class abstract Lcom/google/android/location/activity/r;
.super Lcom/google/android/location/activity/t;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/activity/t;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected final b()Lcom/google/android/location/activity/d;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/location/activity/r;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->c()Lcom/google/android/location/activity/g;

    move-result-object v0

    return-object v0
.end method
