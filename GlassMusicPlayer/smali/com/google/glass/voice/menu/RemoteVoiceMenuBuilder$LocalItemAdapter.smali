.class Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$LocalItemAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final listener:Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;


# direct methods
.method public constructor <init>(Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$LocalItemAdapter;->listener:Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;

    .line 44
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$LocalItemAdapter;)Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$LocalItemAdapter;->listener:Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;

    return-object v0
.end method
