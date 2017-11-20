.class public Lcom/google/glass/entity/EntityItemView;
.super Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;
.source "SourceFile"


# instance fields
.field private displayName:Ljava/lang/String;

.field private entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

.field private glasswareIconBinder:Lcom/google/glass/widget/GlasswareIconBinder;

.field private final iconView:Landroid/widget/ImageView;

.field private final image:Lcom/google/glass/mosaic/MosaicView;

.field private final imageHeight:I

.field private final imageWidth:I

.field private final label:Landroid/widget/TextView;

.field private onConfirmListener:Lcom/google/glass/entity/EntityItemView$OnConfirmListener;

.field private parseProtoTask:Landroid/os/AsyncTask;

.field private protobuf:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/entity/EntityItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$layout;->entity_item_view_contents:I

    invoke-static {v0, v1, p0}, Lcom/google/glass/entity/EntityItemView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    sget v0, Lcom/google/glass/common/R$id;->image:I

    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/mosaic/MosaicView;

    iput-object v0, p0, Lcom/google/glass/entity/EntityItemView;->image:Lcom/google/glass/mosaic/MosaicView;

    .line 49
    sget v0, Lcom/google/glass/common/R$id;->label:I

    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/entity/EntityItemView;->label:Landroid/widget/TextView;

    .line 50
    sget v0, Lcom/google/glass/common/R$id;->glassware_icon:I

    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/entity/EntityItemView;->iconView:Landroid/widget/ImageView;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 53
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/google/glass/entity/EntityItemView;->imageWidth:I

    .line 54
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/google/glass/entity/EntityItemView;->imageHeight:I

    .line 56
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$color;->background_dark_gray:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityItemView;->setBackgroundColor(I)V

    .line 57
    return-void
.end method

.method static synthetic access$002(Lcom/google/glass/entity/EntityItemView;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/google/glass/entity/EntityItemView;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/glass/entity/EntityItemView;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/glass/entity/EntityItemView;->bindImages()V

    return-void
.end method

.method private bindImages()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityItemView;->getEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    iget-object v2, p0, Lcom/google/glass/entity/EntityItemView;->image:Lcom/google/glass/mosaic/MosaicView;

    .line 99
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityItemView;->getEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    iget-object v1, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v3, Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;->ALWAYS_HIDDEN:Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;

    iget v4, p0, Lcom/google/glass/entity/EntityItemView;->imageWidth:I

    iget v5, p0, Lcom/google/glass/entity/EntityItemView;->imageHeight:I

    invoke-static {v1, v3, v4, v5}, Lcom/google/glass/mosaic/ImageLoaders;->forImageUrls(Ljava/util/List;Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;II)Lcom/google/glass/mosaic/ImageLoader;

    move-result-object v3

    .line 101
    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/util/CachedBitmapFactory;

    const/4 v4, 0x0

    .line 99
    invoke-virtual {v2, v3, v1, v4}, Lcom/google/glass/mosaic/MosaicView;->loadImages(Lcom/google/glass/mosaic/ImageLoader;Lcom/google/glass/util/CachedBitmapFactory;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v1

    .line 98
    invoke-virtual {v0, p0, v1}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->loadForScrollItemSubview(Landroid/view/View;Ljava/util/List;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->iconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->glasswareIconBinder:Lcom/google/glass/widget/GlasswareIconBinder;

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->glasswareIconBinder:Lcom/google/glass/widget/GlasswareIconBinder;

    invoke-virtual {p0}, Lcom/google/glass/entity/EntityItemView;->getEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/glass/widget/GlasswareIconBinder;->bind(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Landroid/view/View;)V

    .line 112
    :cond_1
    :goto_0
    return-void

    .line 108
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityItemView;->getEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->isStarred(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->iconView:Landroid/widget/ImageView;

    sget v1, Lcom/google/glass/common/R$drawable;->ic_star_50:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public bind(Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 1

    .prologue
    .line 90
    iput-object p2, p0, Lcom/google/glass/entity/EntityItemView;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/entity/EntityItemView;->protobuf:[B

    .line 92
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->label:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-direct {p0}, Lcom/google/glass/entity/EntityItemView;->bindImages()V

    .line 94
    return-void
.end method

.method public bind(Ljava/lang/String;[B)V
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/entity/EntityItemView;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 69
    iput-object p2, p0, Lcom/google/glass/entity/EntityItemView;->protobuf:[B

    .line 70
    iput-object p1, p0, Lcom/google/glass/entity/EntityItemView;->displayName:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->label:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    new-instance v0, Lcom/google/glass/entity/EntityItemView$1;

    invoke-direct {v0, p0, p2}, Lcom/google/glass/entity/EntityItemView$1;-><init>(Lcom/google/glass/entity/EntityItemView;[B)V

    iput-object v0, p0, Lcom/google/glass/entity/EntityItemView;->parseProtoTask:Landroid/os/AsyncTask;

    .line 86
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->parseProtoTask:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 87
    return-void
.end method

.method protected getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->protobuf:[B

    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/entity/EntityItemView;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    return-object v0
.end method

.method public onConfirm()Z
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->onConfirmListener:Lcom/google/glass/entity/EntityItemView$OnConfirmListener;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->onConfirmListener:Lcom/google/glass/entity/EntityItemView$OnConfirmListener;

    invoke-virtual {p0}, Lcom/google/glass/entity/EntityItemView;->getEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/glass/entity/EntityItemView$OnConfirmListener;->onConfirm(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    .line 147
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;->onConfirm()Z

    move-result v0

    goto :goto_0
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->image:Lcom/google/glass/mosaic/MosaicView;

    invoke-virtual {v0}, Lcom/google/glass/mosaic/MosaicView;->cancelImageDownloads()V

    .line 117
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->image:Lcom/google/glass/mosaic/MosaicView;

    invoke-virtual {v0}, Lcom/google/glass/mosaic/MosaicView;->clearImages()V

    .line 119
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->glasswareIconBinder:Lcom/google/glass/widget/GlasswareIconBinder;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->glasswareIconBinder:Lcom/google/glass/widget/GlasswareIconBinder;

    invoke-virtual {v0, p0}, Lcom/google/glass/widget/GlasswareIconBinder;->recycle(Landroid/view/View;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->parseProtoTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->parseProtoTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/entity/EntityItemView;->parseProtoTask:Landroid/os/AsyncTask;

    .line 126
    :cond_1
    return-void
.end method

.method public setGlasswareIconBinder(Lcom/google/glass/widget/GlasswareIconBinder;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/glass/entity/EntityItemView;->glasswareIconBinder:Lcom/google/glass/widget/GlasswareIconBinder;

    .line 65
    return-void
.end method

.method public setOnConfirmListener(Lcom/google/glass/entity/EntityItemView$OnConfirmListener;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/glass/entity/EntityItemView;->onConfirmListener:Lcom/google/glass/entity/EntityItemView$OnConfirmListener;

    .line 153
    return-void
.end method
