.class final Lcom/google/glass/voice/OpenEndedInputController$9;
.super Ljava/lang/Object;
.source "OpenEndedInputController.java"

# interfaces
.implements Lcom/google/glass/voice/OpenEndedInputController$ResultSanitizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/OpenEndedInputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sanitize(Lcom/google/glass/voice/OpenEndedInputController;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p1, "controller"    # Lcom/google/glass/voice/OpenEndedInputController;
    .param p2, "result"    # Ljava/lang/CharSequence;

    .prologue
    .line 616
    return-object p2
.end method
