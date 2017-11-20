.class public Lcom/google/glass/phone/PhoneCallLiveCardManager;
.super Lcom/google/glass/phone/PhoneCallRemoteViewManager;
.source "PhoneCallLiveCardManager.java"


# static fields
.field private static final LIVE_CARD_ID:Ljava/lang/String; = "call_item_live_card"


# instance fields
.field private phoneCallLiveCard:Lcom/google/android/glass/timeline/LiveCard;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 18
    invoke-direct {p0, p1}, Lcom/google/glass/phone/PhoneCallRemoteViewManager;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Lcom/google/android/glass/timeline/LiveCard;

    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallLiveCardManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "call_item_live_card"

    invoke-direct {v0, v1, v2}, Lcom/google/android/glass/timeline/LiveCard;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCallLiveCardManager;->phoneCallLiveCard:Lcom/google/android/glass/timeline/LiveCard;

    .line 20
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallLiveCardManager;->phoneCallLiveCard:Lcom/google/android/glass/timeline/LiveCard;

    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallLiveCardManager;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    .line 21
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallLiveCardManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/timeline/LiveCard;->setAction(Landroid/app/PendingIntent;)Lcom/google/android/glass/timeline/LiveCard;

    .line 22
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallLiveCardManager;->phoneCallLiveCard:Lcom/google/android/glass/timeline/LiveCard;

    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallLiveCardManager;->getRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/timeline/LiveCard;->setViews(Landroid/widget/RemoteViews;)Lcom/google/android/glass/timeline/LiveCard;

    .line 23
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallLiveCardManager;->phoneCallLiveCard:Lcom/google/android/glass/timeline/LiveCard;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/timeline/LiveCard;->setVoiceActionEnabled(Z)Lcom/google/android/glass/timeline/LiveCard;

    .line 24
    return-void
.end method


# virtual methods
.method public hidePhoneCall()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallLiveCardManager;->phoneCallLiveCard:Lcom/google/android/glass/timeline/LiveCard;

    invoke-virtual {v0}, Lcom/google/android/glass/timeline/LiveCard;->isPublished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallLiveCardManager;->phoneCallLiveCard:Lcom/google/android/glass/timeline/LiveCard;

    invoke-virtual {v0}, Lcom/google/android/glass/timeline/LiveCard;->unpublish()V

    .line 47
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallLiveCardManager;->onDetached()V

    .line 49
    :cond_0
    return-void
.end method

.method protected invalidate()V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallLiveCardManager;->phoneCallLiveCard:Lcom/google/android/glass/timeline/LiveCard;

    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallLiveCardManager;->getRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/timeline/LiveCard;->setViews(Landroid/widget/RemoteViews;)Lcom/google/android/glass/timeline/LiveCard;

    .line 29
    return-void
.end method

.method public showPhoneCall(Lcom/google/glass/phone/PhoneCall;Z)V
    .locals 2
    .param p1, "call"    # Lcom/google/glass/phone/PhoneCall;
    .param p2, "goToItem"    # Z

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/google/glass/phone/PhoneCallLiveCardManager;->setCurrentCall(Lcom/google/glass/phone/PhoneCall;)V

    .line 34
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallLiveCardManager;->phoneCallLiveCard:Lcom/google/android/glass/timeline/LiveCard;

    invoke-virtual {v0}, Lcom/google/android/glass/timeline/LiveCard;->isPublished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 35
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallLiveCardManager;->onAttached()V

    .line 36
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallLiveCardManager;->phoneCallLiveCard:Lcom/google/android/glass/timeline/LiveCard;

    if-eqz p2, :cond_1

    sget-object v0, Lcom/google/android/glass/timeline/LiveCard$PublishMode;->REVEAL:Lcom/google/android/glass/timeline/LiveCard$PublishMode;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/glass/timeline/LiveCard;->publish(Lcom/google/android/glass/timeline/LiveCard$PublishMode;)V

    .line 41
    :cond_0
    :goto_1
    return-void

    .line 36
    :cond_1
    sget-object v0, Lcom/google/android/glass/timeline/LiveCard$PublishMode;->SILENT:Lcom/google/android/glass/timeline/LiveCard$PublishMode;

    goto :goto_0

    .line 38
    :cond_2
    if-eqz p2, :cond_0

    .line 39
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallLiveCardManager;->phoneCallLiveCard:Lcom/google/android/glass/timeline/LiveCard;

    invoke-virtual {v0}, Lcom/google/android/glass/timeline/LiveCard;->navigate()V

    goto :goto_1
.end method
