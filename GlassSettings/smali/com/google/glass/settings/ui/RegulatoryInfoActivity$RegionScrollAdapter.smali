.class Lcom/google/glass/settings/ui/RegulatoryInfoActivity$RegionScrollAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "RegulatoryInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/RegulatoryInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegionScrollAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/RegulatoryInfoActivity;


# direct methods
.method private constructor <init>(Lcom/google/glass/settings/ui/RegulatoryInfoActivity;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/glass/settings/ui/RegulatoryInfoActivity$RegionScrollAdapter;->this$0:Lcom/google/glass/settings/ui/RegulatoryInfoActivity;

    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/settings/ui/RegulatoryInfoActivity;Lcom/google/glass/settings/ui/RegulatoryInfoActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/settings/ui/RegulatoryInfoActivity;
    .param p2, "x1"    # Lcom/google/glass/settings/ui/RegulatoryInfoActivity$1;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/RegulatoryInfoActivity$RegionScrollAdapter;-><init>(Lcom/google/glass/settings/ui/RegulatoryInfoActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/glass/settings/ui/RegulatoryInfoActivity$RegionScrollAdapter;->this$0:Lcom/google/glass/settings/ui/RegulatoryInfoActivity;

    invoke-static {v0}, Lcom/google/glass/settings/ui/RegulatoryInfoActivity;->access$100(Lcom/google/glass/settings/ui/RegulatoryInfoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/glass/settings/ui/RegulatoryInfoActivity$RegionScrollAdapter;->this$0:Lcom/google/glass/settings/ui/RegulatoryInfoActivity;

    invoke-static {v0}, Lcom/google/glass/settings/ui/RegulatoryInfoActivity;->access$100(Lcom/google/glass/settings/ui/RegulatoryInfoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/glass/settings/ui/RegulatoryInfoActivity$RegionScrollAdapter;->this$0:Lcom/google/glass/settings/ui/RegulatoryInfoActivity;

    invoke-static {v0}, Lcom/google/glass/settings/ui/RegulatoryInfoActivity;->access$100(Lcom/google/glass/settings/ui/RegulatoryInfoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    .line 112
    if-nez p2, :cond_0

    .line 113
    iget-object v5, p0, Lcom/google/glass/settings/ui/RegulatoryInfoActivity$RegionScrollAdapter;->this$0:Lcom/google/glass/settings/ui/RegulatoryInfoActivity;

    invoke-static {v5}, Lcom/google/glass/settings/ui/RegulatoryInfoActivity;->access$200(Lcom/google/glass/settings/ui/RegulatoryInfoActivity;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/google/glass/settings/ui/R$layout;->regulatory_info_card:I

    invoke-virtual {v5, v6, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 118
    :cond_0
    iget-object v5, p0, Lcom/google/glass/settings/ui/RegulatoryInfoActivity$RegionScrollAdapter;->this$0:Lcom/google/glass/settings/ui/RegulatoryInfoActivity;

    invoke-static {v5}, Lcom/google/glass/settings/ui/RegulatoryInfoActivity;->access$100(Lcom/google/glass/settings/ui/RegulatoryInfoActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 119
    .local v2, "regionCode":Ljava/lang/String;
    sget-object v5, Lcom/google/glass/locale/Region;->US:Lcom/google/glass/locale/Region;

    invoke-virtual {v5}, Lcom/google/glass/locale/Region;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 120
    sget v0, Lcom/google/glass/settings/ui/R$drawable;->regulatory_info_usa:I

    .line 121
    .local v0, "imageResId":I
    sget v3, Lcom/google/glass/settings/ui/R$string;->regulatory_info_footer_usa:I

    .line 142
    .local v3, "textResId":I
    :goto_0
    sget v5, Lcom/google/glass/settings/ui/R$id;->regulatory_image:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 143
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    sget v5, Lcom/google/glass/settings/ui/R$id;->region_name:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 145
    .local v4, "textView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/google/glass/settings/ui/RegulatoryInfoActivity$RegionScrollAdapter;->this$0:Lcom/google/glass/settings/ui/RegulatoryInfoActivity;

    invoke-virtual {v5}, Lcom/google/glass/settings/ui/RegulatoryInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .end local v0    # "imageResId":I
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "textResId":I
    .end local v4    # "textView":Landroid/widget/TextView;
    :goto_1
    return-object p2

    .line 122
    :cond_1
    sget-object v5, Lcom/google/glass/locale/Region;->GB:Lcom/google/glass/locale/Region;

    invoke-virtual {v5}, Lcom/google/glass/locale/Region;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 123
    sget v0, Lcom/google/glass/settings/ui/R$drawable;->regulatory_info_europe:I

    .line 124
    .restart local v0    # "imageResId":I
    sget v3, Lcom/google/glass/settings/ui/R$string;->regulatory_info_footer_europe:I

    .restart local v3    # "textResId":I
    goto :goto_0

    .line 125
    .end local v0    # "imageResId":I
    .end local v3    # "textResId":I
    :cond_2
    sget-object v5, Lcom/google/glass/locale/Region;->JP:Lcom/google/glass/locale/Region;

    invoke-virtual {v5}, Lcom/google/glass/locale/Region;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 126
    sget v0, Lcom/google/glass/settings/ui/R$drawable;->regulatory_info_japan:I

    .line 127
    .restart local v0    # "imageResId":I
    sget v3, Lcom/google/glass/settings/ui/R$string;->regulatory_info_footer_japan:I

    .restart local v3    # "textResId":I
    goto :goto_0

    .line 128
    .end local v0    # "imageResId":I
    .end local v3    # "textResId":I
    :cond_3
    const-string v5, "CA"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 129
    sget v0, Lcom/google/glass/settings/ui/R$drawable;->regulatory_info_canada:I

    .line 130
    .restart local v0    # "imageResId":I
    sget v3, Lcom/google/glass/settings/ui/R$string;->regulatory_info_footer_canada:I

    .restart local v3    # "textResId":I
    goto :goto_0

    .line 131
    .end local v0    # "imageResId":I
    .end local v3    # "textResId":I
    :cond_4
    const-string v5, "AU"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 132
    sget v0, Lcom/google/glass/settings/ui/R$drawable;->regulatory_info_australia_nz:I

    .line 133
    .restart local v0    # "imageResId":I
    sget v3, Lcom/google/glass/settings/ui/R$string;->regulatory_info_footer_australia:I

    .restart local v3    # "textResId":I
    goto :goto_0

    .line 134
    .end local v0    # "imageResId":I
    .end local v3    # "textResId":I
    :cond_5
    const-string v5, "SG"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 135
    sget v0, Lcom/google/glass/settings/ui/R$drawable;->regulatory_info_singapore:I

    .line 136
    .restart local v0    # "imageResId":I
    sget v3, Lcom/google/glass/settings/ui/R$string;->regulatory_info_footer_singapore:I

    .restart local v3    # "textResId":I
    goto :goto_0

    .line 138
    .end local v0    # "imageResId":I
    .end local v3    # "textResId":I
    :cond_6
    iget-object v5, p0, Lcom/google/glass/settings/ui/RegulatoryInfoActivity$RegionScrollAdapter;->this$0:Lcom/google/glass/settings/ui/RegulatoryInfoActivity;

    invoke-static {v5}, Lcom/google/glass/settings/ui/RegulatoryInfoActivity;->access$300(Lcom/google/glass/settings/ui/RegulatoryInfoActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "Missing regulatory info for region "

    iget-object v5, p0, Lcom/google/glass/settings/ui/RegulatoryInfoActivity$RegionScrollAdapter;->this$0:Lcom/google/glass/settings/ui/RegulatoryInfoActivity;

    invoke-static {v5}, Lcom/google/glass/settings/ui/RegulatoryInfoActivity;->access$100(Lcom/google/glass/settings/ui/RegulatoryInfoActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    new-array v7, v9, [Ljava/lang/Object;

    invoke-interface {v6, v5, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method
