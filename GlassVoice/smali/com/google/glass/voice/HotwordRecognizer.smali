.class public interface abstract Lcom/google/glass/voice/HotwordRecognizer;
.super Ljava/lang/Object;
.source "HotwordRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/HotwordRecognizer$HotwordCallback;
    }
.end annotation


# virtual methods
.method public abstract activate(Lcom/google/glass/voice/HotwordRecognizer$HotwordCallback;)V
.end method

.method public abstract deactivate()V
.end method

.method public abstract destroy()V
.end method

.method public abstract stringToCommand(Landroid/content/Context;Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
.end method

.method public abstract writeAudio(Ljava/nio/ByteBuffer;J)V
.end method
