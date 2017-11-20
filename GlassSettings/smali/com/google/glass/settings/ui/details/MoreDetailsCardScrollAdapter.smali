.class final Lcom/google/glass/settings/ui/details/MoreDetailsCardScrollAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "MoreDetailsCardScrollAdapter.java"


# instance fields
.field private final detailsCards:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/glass/settings/ui/details/DetailsCard;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;Landroid/view/LayoutInflater;Lcom/google/glass/logging/FormattingLogger;)V
    .locals 1
    .param p2, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p3, "parentLogger"    # Lcom/google/glass/logging/FormattingLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/glass/settings/ui/details/DetailsCard;",
            ">;",
            "Landroid/view/LayoutInflater;",
            "Lcom/google/glass/logging/FormattingLogger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "detailsCards":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/glass/settings/ui/details/DetailsCard;>;"
    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    .line 33
    const-string v0, "null detailsCards"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/google/glass/settings/ui/details/MoreDetailsCardScrollAdapter;->detailsCards:Lcom/google/common/collect/ImmutableList;

    .line 34
    const-string v0, "null layoutInflater"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/glass/settings/ui/details/MoreDetailsCardScrollAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 35
    const-string v0, "null parentLogger"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/details/MoreDetailsCardScrollAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 37
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/settings/ui/details/MoreDetailsCardScrollAdapter;->detailsCards:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/settings/ui/details/MoreDetailsCardScrollAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "getItem() [position=%s]."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 5
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 52
    iget-object v1, p0, Lcom/google/glass/settings/ui/details/MoreDetailsCardScrollAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "getPosition() [item=%s]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 54
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "item":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 55
    .local v0, "position":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/glass/settings/ui/details/MoreDetailsCardScrollAdapter;->detailsCards:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 59
    .end local v0    # "position":I
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 64
    iget-object v10, p0, Lcom/google/glass/settings/ui/details/MoreDetailsCardScrollAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v11, "getView() [position=%s, convertView=%s, parent=%s]."

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object p2, v12, v13

    const/4 v13, 0x2

    aput-object p3, v12, v13

    invoke-interface {v10, v11, v12}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v10, p0, Lcom/google/glass/settings/ui/details/MoreDetailsCardScrollAdapter;->detailsCards:Lcom/google/common/collect/ImmutableList;

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/settings/ui/details/DetailsCard;

    .line 68
    .local v2, "detailsCard":Lcom/google/glass/settings/ui/details/DetailsCard;
    if-nez p2, :cond_2

    iget-object v10, p0, Lcom/google/glass/settings/ui/details/MoreDetailsCardScrollAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v11, Lcom/google/glass/settings/ui/R$layout;->more_details_template:I

    .line 69
    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 71
    .local v3, "detailsCardView":Landroid/view/View;
    :goto_0
    sget v10, Lcom/google/glass/settings/ui/R$id;->title:I

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 72
    .local v7, "titleTextView":Landroid/widget/TextView;
    invoke-interface {v2}, Lcom/google/glass/settings/ui/details/DetailsCard;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    sget v10, Lcom/google/glass/settings/ui/R$id;->details_layout:I

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 75
    .local v4, "detailsLayout":Landroid/widget/LinearLayout;
    invoke-interface {v2}, Lcom/google/glass/settings/ui/details/DetailsCard;->getData()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/settings/ui/details/DetailsCard$Detail;

    .line 76
    .local v1, "detail":Lcom/google/glass/settings/ui/details/DetailsCard$Detail;
    invoke-virtual {v1}, Lcom/google/glass/settings/ui/details/DetailsCard$Detail;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/glass/settings/ui/details/DetailsCard$Detail;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 79
    .local v8, "value":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 80
    iget-object v11, p0, Lcom/google/glass/settings/ui/details/MoreDetailsCardScrollAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v12, Lcom/google/glass/settings/ui/R$layout;->more_details_key_template:I

    .line 81
    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 82
    .local v6, "keyTextView":Landroid/widget/TextView;
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .end local v6    # "keyTextView":Landroid/widget/TextView;
    :cond_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 87
    iget-object v11, p0, Lcom/google/glass/settings/ui/details/MoreDetailsCardScrollAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v12, Lcom/google/glass/settings/ui/R$layout;->more_details_value_template:I

    .line 88
    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 89
    .local v9, "valueTextView":Landroid/widget/TextView;
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 90
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .end local v1    # "detail":Lcom/google/glass/settings/ui/details/DetailsCard$Detail;
    .end local v3    # "detailsCardView":Landroid/view/View;
    .end local v4    # "detailsLayout":Landroid/widget/LinearLayout;
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "titleTextView":Landroid/widget/TextView;
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "valueTextView":Landroid/widget/TextView;
    :cond_2
    move-object/from16 v3, p2

    .line 69
    goto :goto_0

    .line 94
    .restart local v3    # "detailsCardView":Landroid/view/View;
    .restart local v4    # "detailsLayout":Landroid/widget/LinearLayout;
    .restart local v7    # "titleTextView":Landroid/widget/TextView;
    :cond_3
    return-object v3
.end method
