.class final Lcom/google/glass/android/media/AudioManagerImpl;
.super Ljava/lang/Object;
.source "AudioManagerImpl.java"

# interfaces
.implements Lcom/google/glass/android/media/AudioManager;


# instance fields
.field private final audioManager:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;)V
    .locals 1
    .param p1, "audioManager"    # Landroid/media/AudioManager;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "null AudioManager"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    .line 16
    return-void
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 1
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    return v0
.end method

.method public adjustStreamVolume(III)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 26
    return-void
.end method

.method public adjustSuggestedStreamVolume(III)V
    .locals 1
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    .line 31
    return-void
.end method

.method public adjustVolume(II)V
    .locals 1
    .param p1, "direction"    # I
    .param p2, "flags"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioManager;->adjustVolume(II)V

    .line 36
    return-void
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    return v0
.end method

.method public getParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "keys"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRingerMode()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    return v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public getStreamVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public isBluetoothA2dpOn()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    return v0
.end method

.method public isBluetoothScoAvailableOffCall()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v0

    return v0
.end method

.method public isBluetoothScoOn()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    return v0
.end method

.method public isMicrophoneMute()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    return v0
.end method

.method public isMusicActive()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    return v0
.end method

.method public isSpeakerphoneOn()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method public isWiredHeadsetOn()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method public loadSoundEffects()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 106
    return-void
.end method

.method public playSoundEffect(I)V
    .locals 1
    .param p1, "effectType"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 116
    return-void
.end method

.method public playSoundEffect(IF)V
    .locals 1
    .param p1, "effectType"    # I
    .param p2, "volume"    # F

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    .line 111
    return-void
.end method

.method public registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "eventReceiver"    # Landroid/content/ComponentName;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 121
    return-void
.end method

.method public registerRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .locals 1
    .param p1, "rcClient"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 126
    return-void
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    .locals 1
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .param p2, "streamType"    # I
    .param p3, "durationHint"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    return v0
.end method

.method public setBluetoothScoOn(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 137
    return-void
.end method

.method public setMicrophoneMute(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 142
    return-void
.end method

.method public setMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMode(I)V

    .line 147
    return-void
.end method

.method public setParameters(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyValuePairs"    # Ljava/lang/String;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public setRingerMode(I)V
    .locals 1
    .param p1, "ringerMode"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 157
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 162
    return-void
.end method

.method public setStreamMute(IZ)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "state"    # Z

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 167
    return-void
.end method

.method public setStreamSolo(IZ)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "state"    # Z

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    .line 172
    return-void
.end method

.method public setStreamVolume(III)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 177
    return-void
.end method

.method public startBluetoothSco()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 182
    return-void
.end method

.method public stopBluetoothSco()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 187
    return-void
.end method

.method public unloadSoundEffects()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    .line 192
    return-void
.end method

.method public unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "eventReceiver"    # Landroid/content/ComponentName;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 197
    return-void
.end method

.method public unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .locals 1
    .param p1, "rcClient"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/glass/android/media/AudioManagerImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 202
    return-void
.end method
