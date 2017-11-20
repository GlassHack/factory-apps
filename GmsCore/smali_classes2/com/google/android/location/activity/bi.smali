.class final Lcom/google/android/location/activity/bi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/location/f/bh;

.field final b:Lcom/google/android/location/f/af;


# direct methods
.method public constructor <init>(Lcom/google/android/location/f/bh;Lcom/google/android/location/f/af;)V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p1, p0, Lcom/google/android/location/activity/bi;->a:Lcom/google/android/location/f/bh;

    .line 285
    iput-object p2, p0, Lcom/google/android/location/activity/bi;->b:Lcom/google/android/location/f/af;

    .line 286
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/android/location/activity/bi;->b:Lcom/google/android/location/f/af;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 300
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ClassificationSignals [wifiScan="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/activity/bi;->a:Lcom/google/android/location/f/bh;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", networkLocation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/bi;->b:Lcom/google/android/location/f/af;

    invoke-virtual {v0}, Lcom/google/android/location/f/af;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
