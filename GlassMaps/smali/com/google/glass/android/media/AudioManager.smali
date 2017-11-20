.class public interface abstract Lcom/google/glass/android/media/AudioManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final STREAM_MUSIC:I = 0x3

.field public static final STREAM_SYSTEM:I = 0x1

.field public static final STREAM_VOICE_CALL:I


# virtual methods
.method public abstract abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
.end method

.method public abstract adjustStreamVolume(III)V
.end method

.method public abstract adjustSuggestedStreamVolume(III)V
.end method

.method public abstract adjustVolume(II)V
.end method

.method public abstract getMode()I
.end method

.method public abstract getParameters(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getRingerMode()I
.end method

.method public abstract getStreamMaxVolume(I)I
.end method

.method public abstract getStreamVolume(I)I
.end method

.method public abstract isBluetoothA2dpOn()Z
.end method

.method public abstract isBluetoothScoAvailableOffCall()Z
.end method

.method public abstract isBluetoothScoOn()Z
.end method

.method public abstract isMicrophoneMute()Z
.end method

.method public abstract isMusicActive()Z
.end method

.method public abstract isSpeakerphoneOn()Z
.end method

.method public abstract isWiredHeadsetOn()Z
.end method

.method public abstract loadSoundEffects()V
.end method

.method public abstract playSoundEffect(I)V
.end method

.method public abstract playSoundEffect(IF)V
.end method

.method public abstract registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V
.end method

.method public abstract registerRemoteControlClient(Landroid/media/RemoteControlClient;)V
.end method

.method public abstract requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
.end method

.method public abstract setBluetoothScoOn(Z)V
.end method

.method public abstract setMicrophoneMute(Z)V
.end method

.method public abstract setMode(I)V
.end method

.method public abstract setParameters(Ljava/lang/String;)V
.end method

.method public abstract setRingerMode(I)V
.end method

.method public abstract setSpeakerphoneOn(Z)V
.end method

.method public abstract setStreamMute(IZ)V
.end method

.method public abstract setStreamSolo(IZ)V
.end method

.method public abstract setStreamVolume(III)V
.end method

.method public abstract startBluetoothSco()V
.end method

.method public abstract stopBluetoothSco()V
.end method

.method public abstract unloadSoundEffects()V
.end method

.method public abstract unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V
.end method

.method public abstract unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V
.end method
