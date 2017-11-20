.class Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;
.super Lcom/google/glass/widget/RotatingTipsView$Tip;
.source "GuardPhraseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/active/GuardPhraseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ErrorTip"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

.field private final userEventData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/active/GuardPhraseView;ILjava/lang/String;)V
    .locals 4
    .param p2, "stringResource"    # I
    .param p3, "userEventData"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 133
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    .line 134
    invoke-virtual {p1}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {p1}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/home/R$dimen;->small_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const-string v2, "sans-serif"

    .line 136
    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 134
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/glass/widget/RotatingTipsView$Tip;-><init>(Ljava/lang/String;FLandroid/graphics/Typeface;Z)V

    .line 137
    iput-object p3, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;->userEventData:Ljava/lang/String;

    .line 138
    return-void
.end method


# virtual methods
.method public getUserEventData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;->userEventData:Ljava/lang/String;

    return-object v0
.end method
