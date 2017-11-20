.class public Lcom/google/glass/voice/VoiceTriggerUtils;
.super Ljava/lang/Object;
.source "VoiceTriggerUtils.java"


# static fields
.field public static final COMMAND_TYPE_UNSET:I = -0x1

.field public static final SYSTEM_COMMANDS:[Lcom/google/android/glass/app/VoiceTriggers$Command;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field static mirrorCommands:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/glass/app/VoiceTriggers$Command;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceTriggerUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 21
    invoke-static {}, Lcom/google/common/collect/HashBiMap;->create()Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceTriggerUtils;->mirrorCommands:Lcom/google/common/collect/BiMap;

    .line 23
    sget-object v0, Lcom/google/glass/voice/VoiceTriggerUtils;->mirrorCommands:Lcom/google/common/collect/BiMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/glass/app/VoiceTriggers$Command;->ADD_AN_EVENT:Lcom/google/android/glass/app/VoiceTriggers$Command;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/google/glass/voice/VoiceTriggerUtils;->mirrorCommands:Lcom/google/common/collect/BiMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/glass/app/VoiceTriggers$Command;->LOG_A_MEAL:Lcom/google/android/glass/app/VoiceTriggers$Command;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/google/glass/voice/VoiceTriggerUtils;->mirrorCommands:Lcom/google/common/collect/BiMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/glass/app/VoiceTriggers$Command;->POST_AN_UPDATE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/google/glass/voice/VoiceTriggerUtils;->mirrorCommands:Lcom/google/common/collect/BiMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/glass/app/VoiceTriggers$Command;->REMEMBER_WHERE_I_AM:Lcom/google/android/glass/app/VoiceTriggers$Command;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/google/glass/voice/VoiceTriggerUtils;->mirrorCommands:Lcom/google/common/collect/BiMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/glass/app/VoiceTriggers$Command;->TAKE_A_NOTE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/google/glass/voice/VoiceTriggerUtils;->mirrorCommands:Lcom/google/common/collect/BiMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/glass/app/VoiceTriggers$Command;->REMIND_ME:Lcom/google/android/glass/app/VoiceTriggers$Command;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/google/glass/voice/VoiceTriggerUtils;->mirrorCommands:Lcom/google/common/collect/BiMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/glass/app/VoiceTriggers$Command;->POST_A_QUESTION:Lcom/google/android/glass/app/VoiceTriggers$Command;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-array v0, v6, [Lcom/google/android/glass/app/VoiceTriggers$Command;

    sget-object v1, Lcom/google/android/glass/app/VoiceTriggers$Command;->GOOGLE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/glass/app/VoiceTriggers$Command;->TAKE_A_PICTURE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/glass/app/VoiceTriggers$Command;->RECORD_A_VIDEO:Lcom/google/android/glass/app/VoiceTriggers$Command;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/android/glass/app/VoiceTriggers$Command;->GET_DIRECTIONS:Lcom/google/android/glass/app/VoiceTriggers$Command;

    aput-object v1, v0, v5

    const/4 v1, 0x4

    sget-object v2, Lcom/google/android/glass/app/VoiceTriggers$Command;->SEND_A_MESSAGE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/glass/app/VoiceTriggers$Command;->MAKE_A_CALL:Lcom/google/android/glass/app/VoiceTriggers$Command;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/glass/app/VoiceTriggers$Command;->MAKE_A_VIDEO_CALL:Lcom/google/android/glass/app/VoiceTriggers$Command;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/voice/VoiceTriggerUtils;->SYSTEM_COMMANDS:[Lcom/google/android/glass/app/VoiceTriggers$Command;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLabel(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "commandType"    # I

    .prologue
    .line 69
    invoke-static {p1}, Lcom/google/glass/voice/VoiceTriggerUtils;->getVoiceTrigger(I)Lcom/google/android/glass/app/VoiceTriggers$Command;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/glass/voice/VoiceTriggerUtils;->getLabel(Landroid/content/Context;Lcom/google/android/glass/app/VoiceTriggers$Command;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLabel(Landroid/content/Context;Lcom/google/android/glass/app/VoiceTrigger;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trigger"    # Lcom/google/android/glass/app/VoiceTrigger;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 73
    invoke-virtual {p1}, Lcom/google/android/glass/app/VoiceTrigger;->getKeyword()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/google/android/glass/app/VoiceTrigger;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 75
    invoke-virtual {p1}, Lcom/google/android/glass/app/VoiceTrigger;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    :goto_0
    return-object v1

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/glass/app/VoiceTrigger;->getCommand()Lcom/google/android/glass/app/VoiceTriggers$Command;

    move-result-object v0

    .line 78
    .local v0, "command":Lcom/google/android/glass/app/VoiceTriggers$Command;
    if-eqz v0, :cond_1

    .line 79
    invoke-static {p0, v0}, Lcom/google/glass/voice/VoiceTriggerUtils;->getLabel(Landroid/content/Context;Lcom/google/android/glass/app/VoiceTriggers$Command;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 81
    :cond_1
    sget-object v1, Lcom/google/glass/voice/VoiceTriggerUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No literal found for trigger: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    const-string v1, ""

    goto :goto_0
.end method

.method public static getLabel(Landroid/content/Context;Lcom/google/android/glass/app/VoiceTriggers$Command;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "command"    # Lcom/google/android/glass/app/VoiceTriggers$Command;

    .prologue
    const/4 v1, 0x0

    .line 56
    if-nez p1, :cond_0

    .line 65
    :goto_0
    return-object v1

    .line 60
    :cond_0
    invoke-static {p1}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getUiByCommand(Lcom/google/android/glass/app/VoiceTriggers$Command;)Lcom/google/glass/voice/menu/TriggerCommandUi;

    move-result-object v0

    .line 61
    .local v0, "ui":Lcom/google/glass/voice/menu/TriggerCommandUi;
    if-nez v0, :cond_1

    .line 62
    sget-object v2, Lcom/google/glass/voice/VoiceTriggerUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unknown command: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {v0}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getVoiceMenuLabelId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getVoiceTrigger(I)Lcom/google/android/glass/app/VoiceTriggers$Command;
    .locals 2
    .param p0, "commandType"    # I

    .prologue
    .line 52
    sget-object v0, Lcom/google/glass/voice/VoiceTriggerUtils;->mirrorCommands:Lcom/google/common/collect/BiMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/app/VoiceTriggers$Command;

    return-object v0
.end method

.method public static isSystemCommand(Ljava/lang/String;)Z
    .locals 2
    .param p0, "voiceTriggerName"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/google/glass/voice/VoiceTriggerUtils;->SYSTEM_COMMANDS:[Lcom/google/android/glass/app/VoiceTriggers$Command;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 34
    sget-object v1, Lcom/google/glass/voice/VoiceTriggerUtils;->SYSTEM_COMMANDS:[Lcom/google/android/glass/app/VoiceTriggers$Command;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/glass/app/VoiceTriggers$Command;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    const/4 v1, 0x1

    .line 38
    :goto_1
    return v1

    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
