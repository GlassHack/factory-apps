.class public abstract Lcom/google/android/location/activity/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/android/location/activity/an;


# direct methods
.method constructor <init>(Lcom/google/android/location/activity/an;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/google/android/location/activity/ar;->b:Lcom/google/android/location/activity/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 280
    return-void
.end method

.method public a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method protected a(Z)V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/location/activity/ar;->b:Lcom/google/android/location/activity/an;

    invoke-static {v0}, Lcom/google/android/location/activity/an;->a(Lcom/google/android/location/activity/an;)V

    .line 288
    return-void
.end method

.method protected b(Z)V
    .locals 4

    .prologue
    .line 309
    if-nez p1, :cond_0

    .line 310
    iget-object v0, p0, Lcom/google/android/location/activity/ar;->b:Lcom/google/android/location/activity/an;

    new-instance v1, Lcom/google/android/location/activity/ap;

    iget-object v2, p0, Lcom/google/android/location/activity/ar;->b:Lcom/google/android/location/activity/an;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/location/activity/ap;-><init>(Lcom/google/android/location/activity/an;B)V

    invoke-static {v0, v1}, Lcom/google/android/location/activity/an;->a(Lcom/google/android/location/activity/an;Lcom/google/android/location/activity/ar;)V

    .line 312
    :cond_0
    return-void
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method protected c(Z)V
    .locals 0

    .prologue
    .line 302
    return-void
.end method

.method protected abstract d()Ljava/lang/String;
.end method
