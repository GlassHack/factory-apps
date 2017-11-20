.class public Lcom/google/glass/voice/CorrectTranscriptionHelper;
.super Ljava/lang/Object;
.source "CorrectTranscriptionHelper.java"


# static fields
.field public static final ACTION_SEARCH_CORRECT_TRANSCRIPTION:Ljava/lang/String; = "com.google.glass.ACTION_SEARCH_CORRECT_TRANSCRIPTION"

.field public static final EXTRA_CORRECTED_TEXT:Ljava/lang/String; = "correctedtext"

.field public static final EXTRA_LOW_CONF:Ljava/lang/String; = "lowconf"

.field public static final EXTRA_ORIGINAL_TEXT:Ljava/lang/String; = "origtext"

.field public static final EXTRA_POSTFIX:Ljava/lang/String; = "postfix"

.field public static final EXTRA_PREFIX:Ljava/lang/String; = "prefix"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startCorrectTranscriptionActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "originalText"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "lowConfidenceSpan"    # Ljava/lang/String;
    .param p4, "postfix"    # Ljava/lang/String;
    .param p5, "requestCode"    # I

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_SEARCH_CORRECT_TRANSCRIPTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    .local v0, "correctTranscription":Landroid/content/Intent;
    const-string v1, "origtext"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string v1, "prefix"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string v1, "lowconf"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const-string v1, "postfix"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p5}, Lcom/google/glass/util/IntentSender;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 36
    return-void
.end method
