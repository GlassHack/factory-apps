.class public Lcom/google/glass/setup/ReloginLiveCard;
.super Lcom/google/glass/livecard/ViewToLiveCardContainer;
.source "ReloginLiveCard.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/setup/ReloginLiveCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/setup/ReloginLiveCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/livecard/ViewToLiveCardContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v0, Lcom/google/android/glass/widget/CardBuilder;

    sget-object v1, Lcom/google/android/glass/widget/CardBuilder$Layout;->ALERT:Lcom/google/android/glass/widget/CardBuilder$Layout;

    invoke-direct {v0, p1, v1}, Lcom/google/android/glass/widget/CardBuilder;-><init>(Landroid/content/Context;Lcom/google/android/glass/widget/CardBuilder$Layout;)V

    .line 27
    .local v0, "card":Lcom/google/android/glass/widget/CardBuilder;
    sget v1, Lcom/google/glass/setup/R$drawable;->ic_warning_150:I

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardBuilder;->setIcon(I)Lcom/google/android/glass/widget/CardBuilder;

    .line 28
    sget v1, Lcom/google/glass/setup/R$string;->relogin_password_incorrect:I

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardBuilder;->setText(I)Lcom/google/android/glass/widget/CardBuilder;

    .line 29
    sget v1, Lcom/google/glass/setup/R$string;->relogin_tap_to_update:I

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardBuilder;->setFootnote(I)Lcom/google/android/glass/widget/CardBuilder;

    .line 30
    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardBuilder;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/setup/ReloginLiveCard;->addView(Landroid/view/View;)V

    .line 31
    return-void
.end method
