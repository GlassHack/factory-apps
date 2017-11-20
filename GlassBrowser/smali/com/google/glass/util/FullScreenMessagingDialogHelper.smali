.class public Lcom/google/glass/util/FullScreenMessagingDialogHelper;
.super Ljava/lang/Object;
.source "FullScreenMessagingDialogHelper.java"


# static fields
.field public static final ACTION_SHOW_MESSAGE:Ljava/lang/String; = "com.google.glass.action.MESSAGE"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final EXTRA_ICON:Ljava/lang/String; = "ICON"

.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "MESSAGE"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final EXTRA_SUB_MESSAGE:Ljava/lang/String; = "SUB_MESSAGE"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final EXTRA_TURN_SCREEN_ON:Ljava/lang/String; = "TURN_SCREEN_ON"

.field public static final SUCCESS_ICON:I = 0x1

.field public static final WARNING_ICON:I = 0x2


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->context:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method public getIconFromIntent(Landroid/content/Intent;)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 108
    const-string v0, "ICON"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMessageFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "MESSAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSubMessageFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "SUB_MESSAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTurnScreenOnFromIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 116
    if-nez p1, :cond_0

    .line 119
    :goto_0
    return v0

    :cond_0
    const-string v1, "TURN_SCREEN_ON"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public showFullScreenMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 48
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->showFullScreenMessage(Ljava/lang/String;IZ)V

    .line 49
    return-void
.end method

.method public showFullScreenMessage(Ljava/lang/String;I)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "icon"    # I

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->showFullScreenMessage(Ljava/lang/String;IZ)V

    .line 59
    return-void
.end method

.method public showFullScreenMessage(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "icon"    # I
    .param p3, "turnScreenOn"    # Z

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->showFullScreenMessage(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 67
    return-void
.end method

.method public showFullScreenMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "subMessage"    # Ljava/lang/String;

    .prologue
    .line 53
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->showFullScreenMessage(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 54
    return-void
.end method

.method public showFullScreenMessage(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "subMessage"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .param p4, "turnScreenOn"    # Z

    .prologue
    const/4 v1, 0x1

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.glass.action.MESSAGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 76
    const-string v2, "MESSAGE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    const-string v2, "SUB_MESSAGE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    :cond_0
    const/4 v2, 0x2

    if-eq p3, v2, :cond_1

    if-ne p3, v1, :cond_2

    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 81
    const-string v1, "ICON"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    const-string v1, "TURN_SCREEN_ON"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 84
    return-void

    .line 80
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
