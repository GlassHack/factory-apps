.class final Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;
.super Landroid/widget/BaseAdapter;
.source "RecentsPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TaskDescriptionAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 132
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 133
    return-void
.end method


# virtual methods
.method public createView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 148
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$100(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v3

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 149
    .local v0, "convertView":Landroid/view/View;
    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    invoke-direct {v1}, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;-><init>()V

    .line 150
    .local v1, "holder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    const v2, 0x7f070057

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    .line 151
    const v2, 0x7f070058

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    .line 155
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$200(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recent/RecentTasksLoader;->getDefaultThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v1, v3, v4, v4}, Lcom/android/systemui/recent/RecentsPanelView;->access$300(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 156
    const v2, 0x7f070056

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    .line 157
    iget-object v2, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$200(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recent/RecentTasksLoader;->getDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    const v2, 0x7f070055

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    .line 159
    const v2, 0x7f070059

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->calloutLine:Landroid/view/View;

    .line 160
    const v2, 0x7f07005a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->descriptionView:Landroid/widget/TextView;

    .line 162
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 163
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$000(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$000(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 140
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 144
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 167
    if-nez p2, :cond_0

    .line 168
    invoke-virtual {p0, p3}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 170
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 173
    .local v1, "holder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-static {v6}, Lcom/android/systemui/recent/RecentsPanelView;->access$000(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, p1

    add-int/lit8 v2, v6, -0x1

    .line 175
    .local v2, "index":I
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-static {v6}, Lcom/android/systemui/recent/RecentsPanelView;->access$000(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recent/TaskDescription;

    .line 177
    .local v4, "td":Lcom/android/systemui/recent/TaskDescription;
    iget-object v6, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v6, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    invoke-virtual {v4}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 179
    invoke-virtual {v4}, Lcom/android/systemui/recent/TaskDescription;->isLoaded()Z

    move-result v6

    iput-boolean v6, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->loadedThumbnailAndIcon:Z

    .line 180
    invoke-virtual {v4}, Lcom/android/systemui/recent/TaskDescription;->isLoaded()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 181
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v6, v1, v7, v9, v11}, Lcom/android/systemui/recent/RecentsPanelView;->access$300(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 182
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/recent/TaskDescription;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v6, v1, v7, v9, v11}, Lcom/android/systemui/recent/RecentsPanelView;->access$400(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 184
    :cond_1
    if-nez v2, :cond_4

    .line 185
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-static {v6}, Lcom/android/systemui/recent/RecentsPanelView;->access$500(Lcom/android/systemui/recent/RecentsPanelView;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 186
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-static {v6}, Lcom/android/systemui/recent/RecentsPanelView;->access$600(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    move-result-object v3

    .line 187
    .local v3, "oldHolder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    if-eqz v3, :cond_2

    .line 188
    iget-object v6, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 189
    iget-object v6, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 190
    iget-object v6, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 191
    iget-object v6, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 192
    iget-object v6, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 193
    iget-object v6, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 194
    iget-object v6, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->calloutLine:Landroid/view/View;

    if-eqz v6, :cond_2

    .line 195
    iget-object v6, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->calloutLine:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setAlpha(F)V

    .line 196
    iget-object v6, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->calloutLine:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 197
    iget-object v6, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->calloutLine:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 200
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-static {v6, v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$602(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;)Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 201
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v6}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0010

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    neg-int v5, v6

    .line 203
    .local v5, "translation":I
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v6}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 204
    .local v0, "config":Landroid/content/res/Configuration;
    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v9, :cond_5

    .line 205
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v6}, Lcom/android/systemui/recent/RecentsPanelView;->getLayoutDirection()I

    move-result v6

    if-ne v6, v9, :cond_3

    .line 206
    neg-int v5, v5

    .line 208
    :cond_3
    iget-object v6, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 209
    iget-object v6, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    int-to-float v7, v5

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 210
    iget-object v6, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 211
    iget-object v6, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    int-to-float v7, v5

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 212
    iget-object v6, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->calloutLine:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setAlpha(F)V

    .line 213
    iget-object v6, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->calloutLine:Landroid/view/View;

    int-to-float v7, v5

    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 218
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-static {v6}, Lcom/android/systemui/recent/RecentsPanelView;->access$700(Lcom/android/systemui/recent/RecentsPanelView;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 219
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-static {v6}, Lcom/android/systemui/recent/RecentsPanelView;->access$800(Lcom/android/systemui/recent/RecentsPanelView;)V

    .line 224
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v3    # "oldHolder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .end local v5    # "translation":I
    :cond_4
    iget-object v6, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 225
    iget-object v6, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    new-instance v7, Lcom/android/systemui/recent/RecentsPanelView$OnLongClickDelegate;

    iget-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {v7, v8, p2}, Lcom/android/systemui/recent/RecentsPanelView$OnLongClickDelegate;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 226
    iput-object v4, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    .line 227
    return-object p2

    .line 215
    .restart local v0    # "config":Landroid/content/res/Configuration;
    .restart local v3    # "oldHolder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .restart local v5    # "translation":I
    :cond_5
    iget-object v6, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 216
    iget-object v6, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    int-to-float v7, v5

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto :goto_0
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 232
    .local v0, "holder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$200(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentTasksLoader;->getDefaultThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v0, v2, v6, v6}, Lcom/android/systemui/recent/RecentsPanelView;->access$300(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 233
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$200(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentTasksLoader;->getDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 236
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 238
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 240
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 241
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 243
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 244
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 245
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 246
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 247
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 248
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->calloutLine:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->calloutLine:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 250
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->calloutLine:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 251
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->calloutLine:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 252
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->calloutLine:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 254
    :cond_0
    iput-object v4, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    .line 255
    iput-boolean v6, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->loadedThumbnailAndIcon:Z

    .line 256
    return-void
.end method
