.class public final Lcom/google/glass/share/ShareLocationActivityUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACTION_SHARE_LOCATION:Ljava/lang/String; = "com.google.glass.ACTION_SHARE_LOCATION"

.field public static final EXTRA_TIMELINE_ITEM_ID:Ljava/lang/String; = "timeline_item_id"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static intent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_SHARE_LOCATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    const-string v1, "timeline_item_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    return-object v0
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 22
    invoke-static {p1}, Lcom/google/glass/share/ShareLocationActivityUtils;->intent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 25
    invoke-static {p0, v0}, Lcom/google/glass/companion/MyGlassWaitingActivityUtils;->showWaitScreenIfNecessary(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 28
    :cond_0
    return-void
.end method
