.class public interface abstract Lcom/google/glass/sound/ISoundManagerService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract isMuted()Z
.end method

.method public abstract playSound(Ljava/lang/String;)I
.end method

.method public abstract playSoundAsync(Ljava/lang/String;)V
.end method

.method public abstract setMuted(Z)V
.end method

.method public abstract stopSound(I)V
.end method
