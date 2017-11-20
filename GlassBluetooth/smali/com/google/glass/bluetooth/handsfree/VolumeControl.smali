.class Lcom/google/glass/bluetooth/handsfree/VolumeControl;
.super Ljava/lang/Object;
.source "VolumeControl.java"


# static fields
.field private static final MAX_BLUETOOTH_VOLUME:D = 15.0


# instance fields
.field private final audioManager:Landroid/media/AudioManager;

.field private final maxStreamVolume:I


# direct methods
.method public constructor <init>(Landroid/media/AudioManager;)V
    .locals 1
    .param p1, "audioManager"    # Landroid/media/AudioManager;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/VolumeControl;->audioManager:Landroid/media/AudioManager;

    .line 21
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/google/glass/bluetooth/handsfree/VolumeControl;->maxStreamVolume:I

    .line 22
    return-void
.end method


# virtual methods
.method public getMicrophoneVolume()I
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0xf

    return v0
.end method

.method public getVolume()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 25
    iget v2, p0, Lcom/google/glass/bluetooth/handsfree/VolumeControl;->maxStreamVolume:I

    if-nez v2, :cond_0

    .line 29
    :goto_0
    return v1

    .line 28
    :cond_0
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/VolumeControl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 29
    .local v0, "currentVolume":I
    int-to-double v1, v0

    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    mul-double/2addr v1, v3

    iget v3, p0, Lcom/google/glass/bluetooth/handsfree/VolumeControl;->maxStreamVolume:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    goto :goto_0
.end method

.method public setVolume(I)V
    .locals 4
    .param p1, "volume"    # I

    .prologue
    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    .line 33
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isGlass1()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/util/Labs$Feature;->EPVC:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 37
    :cond_0
    if-gez p1, :cond_2

    .line 38
    const/4 p1, 0x0

    .line 43
    :cond_1
    :goto_1
    iget v0, p0, Lcom/google/glass/bluetooth/handsfree/VolumeControl;->maxStreamVolume:I

    mul-int/2addr v0, p1

    int-to-double v0, v0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p1, v0

    .line 44
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/VolumeControl;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 39
    :cond_2
    int-to-double v0, p1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 40
    const/16 p1, 0xf

    goto :goto_1
.end method
