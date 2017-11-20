.class Lcom/google/glass/voice/VoiceCommandService$VoiceCommandServiceListener;
.super Lcom/google/glass/voice/IVoiceServiceListener$Stub;
.source "VoiceCommandService.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceCommandService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VoiceCommandServiceListener"
.end annotation


# instance fields
.field private final deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final voiceCommandListener:Lcom/google/android/glass/voice/IVoiceCommandListener;

.field private final voiceCommandMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/glass/voice/VoiceCommand;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private voiceConfig:Lcom/google/glass/voice/VoiceConfig;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/glass/voice/IVoiceCommandListener;Landroid/os/IBinder$DeathRecipient;)V
    .locals 1
    .param p1, "voiceCommandListener"    # Lcom/google/android/glass/voice/IVoiceCommandListener;
    .param p2, "deathRecipient"    # Landroid/os/IBinder$DeathRecipient;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/google/glass/voice/IVoiceServiceListener$Stub;-><init>()V

    .line 159
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceCommandService$VoiceCommandServiceListener;->voiceCommandMap:Ljava/util/Map;

    .line 166
    iput-object p1, p0, Lcom/google/glass/voice/VoiceCommandService$VoiceCommandServiceListener;->voiceCommandListener:Lcom/google/android/glass/voice/IVoiceCommandListener;

    .line 167
    iput-object p2, p0, Lcom/google/glass/voice/VoiceCommandService$VoiceCommandServiceListener;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 168
    return-void
.end method


# virtual methods
.method public getDeathRecipient()Landroid/os/IBinder$DeathRecipient;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommandService$VoiceCommandServiceListener;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReadyToListen(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 2
    .param p1, "newConfig"    # Lcom/google/glass/voice/VoiceConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "isNewConfigExpected":Z
    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceCommandService$VoiceCommandServiceListener;->voiceConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 187
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    if-eqz v0, :cond_0

    .line 189
    iget-object v1, p0, Lcom/google/glass/voice/VoiceCommandService$VoiceCommandServiceListener;->voiceCommandListener:Lcom/google/android/glass/voice/IVoiceCommandListener;

    invoke-interface {v1}, Lcom/google/android/glass/voice/IVoiceCommandListener;->onReadyToListen()V

    .line 191
    :cond_0
    return-void

    .line 187
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onResampledAudioData([BII)V
    .locals 0
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 212
    return-void
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 4
    .param p1, "voiceCommand"    # Lcom/google/glass/voice/VoiceCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 196
    const/4 v1, 0x0

    .line 197
    .local v1, "command":Lcom/google/android/glass/voice/VoiceCommand;
    monitor-enter p0

    .line 198
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/voice/VoiceCommandService$VoiceCommandServiceListener;->voiceCommandMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/glass/voice/VoiceCommand;

    move-object v1, v0

    .line 199
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    if-eqz v1, :cond_0

    .line 201
    iget-object v2, p0, Lcom/google/glass/voice/VoiceCommandService$VoiceCommandServiceListener;->voiceCommandListener:Lcom/google/android/glass/voice/IVoiceCommandListener;

    invoke-interface {v2, v1}, Lcom/google/android/glass/voice/IVoiceCommandListener;->onCommand(Lcom/google/android/glass/voice/VoiceCommand;)V

    .line 203
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 199
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 0
    .param p1, "newConfig"    # Lcom/google/glass/voice/VoiceConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 215
    return-void
.end method

.method public declared-synchronized setConfig(Lcom/google/glass/voice/VoiceConfig;[Lcom/google/android/glass/voice/VoiceCommand;)V
    .locals 4
    .param p1, "voiceConfig"    # Lcom/google/glass/voice/VoiceConfig;
    .param p2, "voiceCommands"    # [Lcom/google/android/glass/voice/VoiceCommand;

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/glass/voice/VoiceCommandService$VoiceCommandServiceListener;->voiceConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 176
    iget-object v1, p0, Lcom/google/glass/voice/VoiceCommandService$VoiceCommandServiceListener;->voiceCommandMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 177
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/google/glass/voice/VoiceCommandService$VoiceCommandServiceListener;->voiceCommandMap:Ljava/util/Map;

    aget-object v2, p2, v0

    invoke-virtual {v2}, Lcom/google/android/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    monitor-exit p0

    return-void

    .line 175
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
