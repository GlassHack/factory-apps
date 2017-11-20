.class public Lcom/google/glass/voice/VoiceActionDialog$Provider;
.super Lcom/google/glass/inject/Provider;
.source "SourceFile"


# static fields
.field private static final instance:Lcom/google/glass/voice/VoiceActionDialog$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/google/glass/voice/VoiceActionDialog$Provider;

    invoke-direct {v0}, Lcom/google/glass/voice/VoiceActionDialog$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/voice/VoiceActionDialog$Provider;->instance:Lcom/google/glass/voice/VoiceActionDialog$Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/voice/VoiceActionDialog$Provider;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/google/glass/voice/VoiceActionDialog$Provider;->instance:Lcom/google/glass/voice/VoiceActionDialog$Provider;

    return-object v0
.end method


# virtual methods
.method public from(Landroid/content/Context;Lcom/google/glass/voice/ActionController;Lcom/google/glass/voice/ActionController$Callback;)Lcom/google/glass/voice/VoiceActionDialog;
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lcom/google/glass/voice/VoiceActionDialog$Provider$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/glass/voice/VoiceActionDialog$Provider$1;-><init>(Lcom/google/glass/voice/VoiceActionDialog$Provider;Landroid/content/Context;Lcom/google/glass/voice/ActionController;Lcom/google/glass/voice/ActionController$Callback;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceActionDialog$Provider;->get(Lcom/google/common/base/aw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceActionDialog;

    return-object v0
.end method
