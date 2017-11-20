.class public Lcom/google/glass/voice/network/PinholePageUpdater;
.super Ljava/lang/Object;
.source "PinholePageUpdater.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updatePinholePage(Lcom/google/glass/voice/network/PinholePage;Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V
    .locals 5
    .param p0, "page"    # Lcom/google/glass/voice/network/PinholePage;
    .param p1, "output"    # Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    .prologue
    .line 13
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 29
    :cond_0
    :goto_0
    return-void

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->getGwsHeaderComplete()Z

    move-result v2

    .line 18
    .local v2, "headerComplete":Z
    const/4 v1, 0x0

    .line 19
    .local v1, "gwsHeaderFragment":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 20
    invoke-virtual {p1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->getGwsHeaderFragment()Ljava/lang/String;

    move-result-object v1

    .line 23
    :cond_2
    invoke-virtual {p1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->getGwsResponseComplete()Z

    move-result v3

    .line 24
    .local v3, "responseComplete":Z
    const/4 v0, 0x0

    .line 25
    .local v0, "gwsBodyFragment":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->hasGwsBodyFragment()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 26
    new-instance v0, Ljava/lang/String;

    .end local v0    # "gwsBodyFragment":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->getGwsBodyFragment()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 28
    .restart local v0    # "gwsBodyFragment":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/google/glass/voice/network/PinholePage;->update(ZLjava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method
