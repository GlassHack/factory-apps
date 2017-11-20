.class Lcom/google/glass/voice/VoiceApplication$1;
.super Ljava/lang/Object;
.source "VoiceApplication.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Lcom/google/glass/voice/ConcurrentAudioInterface;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceApplication;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceApplication;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/glass/voice/VoiceApplication$1;->this$0:Lcom/google/glass/voice/VoiceApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/voice/ConcurrentAudioInterface;
    .locals 3

    .prologue
    .line 52
    new-instance v0, Lcom/google/glass/voice/ConcurrentAudioInterface;

    new-instance v1, Lcom/google/glass/voice/NativeAudioInterfaceWrapper;

    invoke-direct {v1}, Lcom/google/glass/voice/NativeAudioInterfaceWrapper;-><init>()V

    iget-object v2, p0, Lcom/google/glass/voice/VoiceApplication$1;->this$0:Lcom/google/glass/voice/VoiceApplication;

    invoke-static {v2}, Lcom/google/glass/voice/VoiceApplication;->access$000(Lcom/google/glass/voice/VoiceApplication;)Lcom/google/glass/android/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/ConcurrentAudioInterface;-><init>(Lcom/google/glass/voice/NativeAudioInterfaceWrapper;Lcom/google/glass/android/os/PowerManager$WakeLock;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceApplication$1;->get()Lcom/google/glass/voice/ConcurrentAudioInterface;

    move-result-object v0

    return-object v0
.end method
