.class public Lcom/google/glass/voice/VoiceServiceConnection$Provider;
.super Lcom/google/glass/inject/InitializableProvider;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/google/glass/voice/VoiceServiceConnection$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/google/glass/voice/VoiceServiceConnection$Provider;

    invoke-direct {v0}, Lcom/google/glass/voice/VoiceServiceConnection$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/voice/VoiceServiceConnection$Provider;->INSTANCE:Lcom/google/glass/voice/VoiceServiceConnection$Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/glass/inject/InitializableProvider;-><init>()V

    .line 50
    new-instance v0, Lcom/google/glass/voice/VoiceServiceConnection;

    invoke-direct {v0}, Lcom/google/glass/voice/VoiceServiceConnection;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceServiceConnection$Provider;->init(Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public static getInstance()Lcom/google/glass/voice/VoiceServiceConnection$Provider;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/google/glass/voice/VoiceServiceConnection$Provider;->INSTANCE:Lcom/google/glass/voice/VoiceServiceConnection$Provider;

    return-object v0
.end method
