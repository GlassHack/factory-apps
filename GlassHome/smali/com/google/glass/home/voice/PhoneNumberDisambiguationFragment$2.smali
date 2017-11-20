.class Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment$2;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "PhoneNumberDisambiguationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment$2;->this$0:Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;

    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment$2;->this$0:Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;

    invoke-static {v0}, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->access$500(Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment$2;->this$0:Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;

    invoke-static {v0}, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->access$500(Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "mp"    # Ljava/lang/Object;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment$2;->this$0:Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;

    invoke-static {v0}, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->access$500(Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    .line 85
    new-instance v0, Lcom/google/glass/entity/EntityItemView;

    iget-object v4, p0, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment$2;->this$0:Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;

    invoke-virtual {v4}, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/google/glass/entity/EntityItemView;-><init>(Landroid/content/Context;)V

    .line 86
    .local v0, "itemView":Lcom/google/glass/entity/EntityItemView;
    iget-object v4, p0, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment$2;->this$0:Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;

    invoke-static {v4, p1}, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->access$100(Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment$2;->this$0:Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;

    invoke-static {v5}, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->access$200(Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/glass/entity/EntityItemView;->bind(Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    .line 88
    sget v4, Lcom/google/glass/home/R$id;->glassware_icon:I

    invoke-virtual {v0, v4}, Lcom/google/glass/entity/EntityItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 91
    sget v4, Lcom/google/glass/home/R$id;->icon_and_label_layout:I

    invoke-virtual {v0, v4}, Lcom/google/glass/entity/EntityItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 92
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    .line 93
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    add-int/lit8 v7, v7, 0x1e

    .line 92
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 95
    sget v4, Lcom/google/glass/home/R$id;->tip:I

    invoke-virtual {v0, v4}, Lcom/google/glass/entity/EntityItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/TipsView;

    .line 96
    .local v2, "tipsView":Lcom/google/glass/widget/TipsView;
    invoke-virtual {v2, v8}, Lcom/google/glass/widget/TipsView;->setVisibility(I)V

    .line 98
    iget-object v4, p0, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment$2;->this$0:Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;

    invoke-static {v4, p1}, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->access$300(Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;I)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "phoneNumberLabel":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 100
    iget-object v4, p0, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment$2;->this$0:Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;

    invoke-static {v4, v2}, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->access$402(Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;Lcom/google/glass/widget/TipsView;)Lcom/google/glass/widget/TipsView;

    .line 101
    iget-object v4, p0, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment$2;->this$0:Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;

    sget v5, Lcom/google/glass/home/R$string;->phone_number_disambiguation_tip:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/glass/widget/TipsView;->setTip(Ljava/lang/String;)V

    .line 106
    :goto_0
    return-object v0

    .line 103
    :cond_0
    invoke-virtual {v2, v1}, Lcom/google/glass/widget/TipsView;->setTip(Ljava/lang/String;)V

    goto :goto_0
.end method
