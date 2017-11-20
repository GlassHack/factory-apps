.class public Lcom/google/glass/voice/GetDirectionsResultSanitizer;
.super Lcom/google/glass/voice/DefaultResultSanitizer;
.source "GetDirectionsResultSanitizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/google/glass/voice/DefaultResultSanitizer;-><init>()V

    return-void
.end method


# virtual methods
.method public sanitize(Lcom/google/glass/voice/OpenEndedInputController;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "controller"    # Lcom/google/glass/voice/OpenEndedInputController;
    .param p2, "result"    # Ljava/lang/CharSequence;

    .prologue
    .line 9
    invoke-super {p0, p1, p2}, Lcom/google/glass/voice/DefaultResultSanitizer;->sanitize(Lcom/google/glass/voice/OpenEndedInputController;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 13
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/google/glass/voice/OpenEndedInputController;->isRetry()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    .end local v0    # "text":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .restart local v0    # "text":Ljava/lang/CharSequence;
    :cond_0
    invoke-static {v0}, Lcom/google/glass/voice/VoiceUtils;->stripNavigationQueryPrefix(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method
