.class public Lcom/google/glass/voice/VoiceActionDialogs;
.super Ljava/lang/Object;
.source "VoiceActionDialogs.java"


# static fields
.field public static final ACTION_OPEN_VOICE_ACTION_DIALOG:Ljava/lang/String; = "com.google.glass.ACTION_OPEN_VOICE_ACTION_DIALOG"

.field public static final EXTRA_FEATURE_INTENT:Ljava/lang/String; = "com.google.glass.voice.FEATURE_INTENT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showActionDialog(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "featureIntent"    # Landroid/content/Intent;

    .prologue
    .line 23
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_OPEN_VOICE_ACTION_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    .local v0, "actionIntent":Landroid/content/Intent;
    const-string v1, "com.google.glass.voice.FEATURE_INTENT"

    const-string v2, "action_controller_type"

    .line 25
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 26
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 27
    return-void
.end method
