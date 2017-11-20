.class Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$LocalItemAdapter;
.super Ljava/lang/Object;
.source "RemoteVoiceMenuBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalItemAdapter"
.end annotation


# instance fields
.field private final listener:Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;


# direct methods
.method public constructor <init>(Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;

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
    .param p0, "x0"    # Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$LocalItemAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$LocalItemAdapter;->listener:Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;

    return-object v0
.end method
