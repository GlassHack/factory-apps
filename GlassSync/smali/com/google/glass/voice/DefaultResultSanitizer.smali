.class public Lcom/google/glass/voice/DefaultResultSanitizer;
.super Ljava/lang/Object;
.source "DefaultResultSanitizer.java"

# interfaces
.implements Lcom/google/glass/voice/OpenEndedInputController$ResultSanitizer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sanitize(Lcom/google/glass/voice/OpenEndedInputController;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "controller"    # Lcom/google/glass/voice/OpenEndedInputController;
    .param p2, "result"    # Ljava/lang/CharSequence;

    .prologue
    .line 11
    invoke-static {p2}, Lcom/google/glass/voice/VoiceUtils;->normalizeHashtags(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
