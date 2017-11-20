.class public Lcom/google/glass/deferredcontent/EntityImageDownloadTask;
.super Lcom/google/glass/deferredcontent/PersonImageDownloadTask;
.source "EntityImageDownloadTask.java"


# instance fields
.field private final entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Landroid/widget/ImageView;Landroid/widget/TextView;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;
    .param p3, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .param p4, "pictureView"    # Landroid/widget/ImageView;
    .param p5, "nameView"    # Landroid/widget/TextView;
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 35
    invoke-static {p3}, Lcom/google/glass/entity/EntityUtils;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/deferredcontent/PersonImageDownloadTask;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;II)V

    .line 37
    if-nez p3, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Entity cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iput-object p3, p0, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 41
    return-void
.end method

.method private setImageUrlByEmail(Landroid/content/ContentResolver;)V
    .locals 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v2, 0x0

    .line 85
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 87
    .local v0, "email":Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v5

    invoke-virtual {v5, p1, v0}, Lcom/google/glass/entity/EntityHelper;->queryByEmail(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v5

    .line 86
    invoke-static {v5}, Lcom/google/glass/entity/EntityUtils;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "imageUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 89
    invoke-virtual {p0, v1}, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;->setImageUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .end local v0    # "email":Ljava/lang/String;
    .end local v1    # "imageUrl":Ljava/lang/String;
    :cond_0
    return-void

    .line 85
    .restart local v0    # "email":Ljava/lang/String;
    .restart local v1    # "imageUrl":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getCacheId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getDisplayText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUserEventTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "ei"

    return-object v0
.end method

.method protected onPreLoad()V
    .locals 3

    .prologue
    .line 60
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 61
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 63
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;->hasImageUrl()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasPhoneNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/glass/entity/EntityHelper;->queryByPhoneNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    .line 64
    invoke-static {v1}, Lcom/google/glass/entity/EntityUtils;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;->setImageUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;->hasImageUrl()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 70
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/glass/entity/EntityHelper;->queryBySecondaryPhoneNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    .line 69
    invoke-static {v1}, Lcom/google/glass/entity/EntityUtils;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;->setImageUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    invoke-direct {p0, v0}, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;->setImageUrlByEmail(Landroid/content/ContentResolver;)V

    .line 78
    :cond_1
    return-void
.end method
