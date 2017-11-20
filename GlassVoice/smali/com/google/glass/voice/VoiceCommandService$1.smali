.class Lcom/google/glass/voice/VoiceCommandService$1;
.super Lcom/google/android/glass/voice/IVoiceCommandService$Stub;
.source "VoiceCommandService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceCommandService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceCommandService;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceCommandService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceCommandService;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/glass/voice/VoiceCommandService$1;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    invoke-direct {p0}, Lcom/google/android/glass/voice/IVoiceCommandService$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/VoiceCommandService$1;[Lcom/google/android/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceCommandService$1;
    .param p1, "x1"    # [Lcom/google/android/glass/voice/VoiceCommand;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceCommandService$1;->createVoiceConfig([Lcom/google/android/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/voice/VoiceCommandService$1;Lcom/google/android/glass/voice/IVoiceCommandListener;)Landroid/os/IBinder$DeathRecipient;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceCommandService$1;
    .param p1, "x1"    # Lcom/google/android/glass/voice/IVoiceCommandListener;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceCommandService$1;->addDeathRecipient(Lcom/google/android/glass/voice/IVoiceCommandListener;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    return-object v0
.end method

.method private addDeathRecipient(Lcom/google/android/glass/voice/IVoiceCommandListener;)Landroid/os/IBinder$DeathRecipient;
    .locals 6
    .param p1, "voiceCommandListener"    # Lcom/google/android/glass/voice/IVoiceCommandListener;

    .prologue
    const/4 v5, 0x0

    .line 107
    :try_start_0
    new-instance v0, Lcom/google/glass/voice/VoiceCommandService$1$3;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/VoiceCommandService$1$3;-><init>(Lcom/google/glass/voice/VoiceCommandService$1;Lcom/google/android/glass/voice/IVoiceCommandListener;)V

    .line 113
    .local v0, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    invoke-interface {p1}, Lcom/google/android/glass/voice/IVoiceCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v0    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    :goto_0
    return-object v0

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/google/glass/voice/VoiceCommandService;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Failed to add DeathRecipient to VoiceCommandListener. [listener=%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createVoiceConfig([Lcom/google/android/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 3
    .param p1, "voiceCommands"    # [Lcom/google/android/glass/voice/VoiceCommand;

    .prologue
    .line 123
    array-length v2, p1

    new-array v0, v2, [Ljava/lang/String;

    .line 124
    .local v0, "commands":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 125
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/google/android/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_0
    new-instance v2, Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {v2, v0}, Lcom/google/glass/voice/VoiceConfig;-><init>([Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public startListening(Lcom/google/android/glass/voice/IVoiceCommandListener;[Lcom/google/android/glass/voice/VoiceCommand;)V
    .locals 2
    .param p1, "voiceCommandListener"    # Lcom/google/android/glass/voice/IVoiceCommandListener;
    .param p2, "voiceCommands"    # [Lcom/google/android/glass/voice/VoiceCommand;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommandService$1;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    new-instance v1, Lcom/google/glass/voice/VoiceCommandService$1$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/glass/voice/VoiceCommandService$1$1;-><init>(Lcom/google/glass/voice/VoiceCommandService$1;[Lcom/google/android/glass/voice/VoiceCommand;Lcom/google/android/glass/voice/IVoiceCommandListener;)V

    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceCommandService;->access$300(Lcom/google/glass/voice/VoiceCommandService;Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method

.method public stopListening(Lcom/google/android/glass/voice/IVoiceCommandListener;)V
    .locals 2
    .param p1, "voiceCommandListener"    # Lcom/google/android/glass/voice/IVoiceCommandListener;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommandService$1;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    new-instance v1, Lcom/google/glass/voice/VoiceCommandService$1$2;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/voice/VoiceCommandService$1$2;-><init>(Lcom/google/glass/voice/VoiceCommandService$1;Lcom/google/android/glass/voice/IVoiceCommandListener;)V

    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceCommandService;->access$300(Lcom/google/glass/voice/VoiceCommandService;Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method
