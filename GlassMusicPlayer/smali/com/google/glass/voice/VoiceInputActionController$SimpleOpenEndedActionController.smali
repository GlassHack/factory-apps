.class Lcom/google/glass/voice/VoiceInputActionController$SimpleOpenEndedActionController;
.super Lcom/google/glass/voice/VoiceInputActionController;
.source "SourceFile"


# instance fields
.field private final inputModes:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceInputActionController;-><init>()V

    .line 165
    iput-object p1, p0, Lcom/google/glass/voice/VoiceInputActionController$SimpleOpenEndedActionController;->inputModes:Ljava/util/List;

    .line 166
    return-void
.end method


# virtual methods
.method public getInputModes()Ljava/util/List;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputActionController$SimpleOpenEndedActionController;->inputModes:Ljava/util/List;

    return-object v0
.end method
