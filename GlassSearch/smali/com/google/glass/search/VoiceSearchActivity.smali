.class public Lcom/google/glass/search/VoiceSearchActivity;
.super Lcom/google/glass/voice/VoiceInputActionActivity;
.source "VoiceSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/voice/VoiceInputActionActivity",
        "<",
        "Lcom/google/glass/voice/actions/SearchResponseController;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceInputActionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createController()Lcom/google/glass/voice/VoiceInputActionController;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/glass/search/VoiceSearchActivity;->createController()Lcom/google/glass/voice/actions/SearchResponseController;

    move-result-object v0

    return-object v0
.end method

.method protected createController()Lcom/google/glass/voice/actions/SearchResponseController;
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/google/glass/voice/actions/SearchResponseController;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/actions/SearchResponseController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
