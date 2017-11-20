.class public final Lcom/google/glass/voice/VoiceMessageHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/VoiceInputActivityHelper;


# static fields
.field public static final EXTRA_ALLOW_OMNI_INPUT:Ljava/lang/String; = "allow_omni_input"

.field public static final EXTRA_ENTITY_FOR_PROFILE_PHOTO:Ljava/lang/String; = "ENTITY_FOR_PROFILE_PHOTO"

.field public static final EXTRA_MESSAGE_TYPE:Ljava/lang/String; = "MESSAGE_TYPE"

.field public static final EXTRA_REPLY_ALL:Ljava/lang/String; = "REPLY_ALL"

.field public static final EXTRA_REPLY_TO_ID:Ljava/lang/String; = "REPLY_TO_ID"

.field public static final EXTRA_TO_ID:Ljava/lang/String; = "TO_ID"

.field public static final EXTRA_TO_NAME:Ljava/lang/String; = "TO_NAME"

.field public static final MESSAGE_TYPE_EMAIL:I = 0x1

.field public static final MESSAGE_TYPE_GLASSWARE:I = 0x3

.field public static final MESSAGE_TYPE_SMS:I = 0x2

.field public static final MESSAGE_TYPE_UNKNOWN:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSendMessageIntent(IILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 72
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 73
    const-string v1, "trigger_method"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 76
    const-string v1, "allow_omni_input"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    :cond_0
    const-string v1, "MESSAGE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    const-string v1, "TO_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v1, "TO_NAME"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "should_finish_turn_screen_off"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    return-object v0
.end method
