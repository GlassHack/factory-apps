.class public Lcom/google/glass/settings/connectivity/LiveCardUI;
.super Ljava/lang/Object;
.source "LiveCardUI.java"

# interfaces
.implements Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;


# static fields
.field private static final LIVE_CARD_ID:Ljava/lang/String; = "connectivity_status_card"


# instance fields
.field private liveCard:Lcom/google/android/glass/timeline/LiveCard;

.field private remoteViews:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/glass/settings/ui/R$layout;->connectivity_status_card:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/glass/settings/connectivity/LiveCardUI;->remoteViews:Landroid/widget/RemoteViews;

    .line 20
    new-instance v0, Lcom/google/android/glass/timeline/LiveCard;

    const-string v1, "connectivity_status_card"

    invoke-direct {v0, p1, v1}, Lcom/google/android/glass/timeline/LiveCard;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/settings/connectivity/LiveCardUI;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    .line 21
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/LiveCardUI;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    iget-object v1, p0, Lcom/google/glass/settings/connectivity/LiveCardUI;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Lcom/google/android/glass/timeline/LiveCard;->setViews(Landroid/widget/RemoteViews;)Lcom/google/android/glass/timeline/LiveCard;

    .line 22
    return-void
.end method


# virtual methods
.method public onHide()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/LiveCardUI;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    invoke-virtual {v0}, Lcom/google/android/glass/timeline/LiveCard;->isPublished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/LiveCardUI;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    invoke-virtual {v0}, Lcom/google/android/glass/timeline/LiveCard;->unpublish()V

    .line 39
    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/LiveCardUI;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    iget-object v1, p0, Lcom/google/glass/settings/connectivity/LiveCardUI;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Lcom/google/android/glass/timeline/LiveCard;->setViews(Landroid/widget/RemoteViews;)Lcom/google/android/glass/timeline/LiveCard;

    .line 44
    return-void
.end method

.method public onShow()Z
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/LiveCardUI;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    invoke-virtual {v0}, Lcom/google/android/glass/timeline/LiveCard;->isPublished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/LiveCardUI;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    sget-object v1, Lcom/google/android/glass/timeline/LiveCard$PublishMode;->REVEAL:Lcom/google/android/glass/timeline/LiveCard$PublishMode;

    invoke-virtual {v0, v1}, Lcom/google/android/glass/timeline/LiveCard;->publish(Lcom/google/android/glass/timeline/LiveCard$PublishMode;)V

    .line 28
    const/4 v0, 0x1

    .line 31
    :goto_0
    return v0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/LiveCardUI;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    invoke-virtual {v0}, Lcom/google/android/glass/timeline/LiveCard;->navigate()V

    .line 31
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAction(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/LiveCardUI;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    invoke-virtual {v0, p1}, Lcom/google/android/glass/timeline/LiveCard;->setAction(Landroid/app/PendingIntent;)Lcom/google/android/glass/timeline/LiveCard;

    .line 64
    return-void
.end method

.method public setImageViewResource(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "imageId"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/LiveCardUI;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 54
    return-void
.end method

.method public setTextViewText(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/LiveCardUI;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 49
    return-void
.end method

.method public setViewVisibility(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/LiveCardUI;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 59
    return-void
.end method
