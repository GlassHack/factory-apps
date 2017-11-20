.class public final enum Lcom/google/glass/voice/VoiceConfig$Sensitivity;
.super Ljava/lang/Enum;
.source "VoiceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sensitivity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/voice/VoiceConfig$Sensitivity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/voice/VoiceConfig$Sensitivity;

.field public static final enum CONSERVATIVE:Lcom/google/glass/voice/VoiceConfig$Sensitivity;

.field public static final enum NORMAL:Lcom/google/glass/voice/VoiceConfig$Sensitivity;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/VoiceConfig$Sensitivity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig$Sensitivity;->NORMAL:Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    new-instance v0, Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    const-string v1, "CONSERVATIVE"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/voice/VoiceConfig$Sensitivity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig$Sensitivity;->CONSERVATIVE:Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig$Sensitivity;->NORMAL:Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/voice/VoiceConfig$Sensitivity;->CONSERVATIVE:Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/voice/VoiceConfig$Sensitivity;->$VALUES:[Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig$Sensitivity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/voice/VoiceConfig$Sensitivity;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/glass/voice/VoiceConfig$Sensitivity;->$VALUES:[Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    invoke-virtual {v0}, [Lcom/google/glass/voice/VoiceConfig$Sensitivity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    return-object v0
.end method
