.class public Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PanoListAdapter.java"


# static fields
.field private static final CONTENT_CHILD_RES_ID:I = 0x1

.field private static final DELAY_IN_MS:I = 0x190


# instance fields
.field private activeTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private final inflater:Landroid/view/LayoutInflater;

.field private final loadHandler:Landroid/os/Handler;

.field private final longDateFormat:Ljava/text/DateFormat;

.field private final panoSource:Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;

.field private sessionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private showStitchedPanos:Z

.field private final timeFormat:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;Landroid/view/LayoutInflater;Z)V
    .locals 1
    .param p1, "panoSource"    # Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .param p3, "showStitchedPanos"    # Z

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->cache:Ljava/util/Map;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->loadHandler:Landroid/os/Handler;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->showStitchedPanos:Z

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->activeTasks:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->sessionIds:Ljava/util/List;

    .line 73
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->panoSource:Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;

    .line 74
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 75
    iput-boolean p3, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->showStitchedPanos:Z

    .line 77
    invoke-virtual {p2}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->longDateFormat:Ljava/text/DateFormat;

    .line 79
    invoke-virtual {p2}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->timeFormat:Ljava/text/DateFormat;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->cache:Ljava/util/Map;

    return-object v0
.end method

.method private createStitchedPanoRow(ILandroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "contentView"    # Landroid/widget/LinearLayout;
    .param p3, "label"    # Landroid/widget/TextView;

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 154
    invoke-virtual {p2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 156
    .local v5, "thumbnailView":Landroid/widget/ImageView;
    if-nez v5, :cond_0

    .line 157
    new-instance v5, Landroid/widget/ImageView;

    .end local v5    # "thumbnailView":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v6}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 158
    .restart local v5    # "thumbnailView":Landroid/widget/ImageView;
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setId(I)V

    .line 159
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 160
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 167
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tag-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, "tag":Ljava/lang/String;
    sget v6, Lcom/google/android/apps/lightcycle/R$id;->VIEW_ID:I

    invoke-virtual {v5, v6, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 170
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->panoSource:Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->sessionIds:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;->getSession(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/storage/SessionMetadata;

    move-result-object v1

    .line 171
    .local v1, "session":Lcom/google/android/apps/lightcycle/storage/SessionMetadata;
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->sessionIds:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 174
    .local v2, "sessionId":Ljava/lang/String;
    iget-boolean v6, v1, Lcom/google/android/apps/lightcycle/storage/SessionMetadata;->stitchedPanoramaExists:Z

    if-eqz v6, :cond_1

    .line 175
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->panoSource:Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;

    invoke-virtual {v6, v2}, Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;->getStitchedFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "panoFileName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->getI18NDateOfFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    .end local v0    # "panoFileName":Ljava/lang/String;
    :cond_1
    iget-boolean v6, v1, Lcom/google/android/apps/lightcycle/storage/SessionMetadata;->thumbnailExists:Z

    if-eqz v6, :cond_2

    .line 182
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->panoSource:Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;

    invoke-virtual {v6, v2}, Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;->getThumbnailFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, "thumbnailFileName":Ljava/lang/String;
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 184
    const v6, 0x108005f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    invoke-direct {p0, v4, v5}, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->getThumbnail(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 193
    .end local v4    # "thumbnailFileName":Ljava/lang/String;
    :goto_0
    return-void

    .line 189
    :cond_2
    const-string v6, ""

    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 191
    const v6, 0x108008a

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private createUnstitchedPanoRow(ILandroid/widget/LinearLayout;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "contentView"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v4, 0x1

    .line 223
    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 225
    .local v0, "thumbnailWrapper":Landroid/widget/LinearLayout;
    if-nez v0, :cond_0

    .line 226
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/google/android/apps/lightcycle/R$layout;->gallery_unstitched_session_content:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "thumbnailWrapper":Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 228
    .restart local v0    # "thumbnailWrapper":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setId(I)V

    .line 229
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 234
    :cond_0
    return-void
.end method

.method private getI18NDateOfFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 203
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_1

    .line 205
    :cond_0
    const-string v1, ""

    .line 212
    :goto_0
    return-object v1

    .line 207
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 208
    .local v3, "lastModified":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 210
    .local v0, "date":Ljava/util/Date;
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->longDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v5, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "dateTime":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->timeFormat:Ljava/text/DateFormat;

    invoke-virtual {v6, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    goto :goto_0
.end method

.method private declared-synchronized getThumbnail(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "thumbnailView"    # Landroid/widget/ImageView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    sget v2, Lcom/google/android/apps/lightcycle/R$id;->VIEW_ID:I

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 262
    .local v1, "viewTag":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->activeTasks:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->loadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->activeTasks:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 264
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->activeTasks:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_0
    sget v2, Lcom/google/android/apps/lightcycle/R$id;->FILENAME:I

    invoke-virtual {p2, v2, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 275
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->cache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->cache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 276
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 277
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->cache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    :goto_0
    monitor-exit p0

    return-void

    .line 281
    :cond_1
    :try_start_1
    new-instance v0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter$1;-><init>(Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 292
    .local v0, "task":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->loadHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 293
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->activeTasks:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 258
    .end local v0    # "task":Ljava/lang/Runnable;
    .end local v1    # "viewTag":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private refreshIds()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->sessionIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 239
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->showStitchedPanos:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->sessionIds:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->panoSource:Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;->getStitchedSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 245
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->sessionIds:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 246
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->sessionIds:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->panoSource:Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;->getUnstitchedSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->sessionIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 95
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPanoFileName(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 130
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->panoSource:Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->sessionIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;->getStitchedFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->sessionIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 100
    move-object v2, p2

    .line 101
    .local v2, "result":Landroid/view/View;
    if-nez v2, :cond_0

    .line 102
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/google/android/apps/lightcycle/R$layout;->gallery_pano_row:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 105
    :cond_0
    sget v3, Lcom/google/android/apps/lightcycle/R$id;->content:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 106
    .local v0, "content":Landroid/widget/LinearLayout;
    iget-boolean v3, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->showStitchedPanos:Z

    if-eqz v3, :cond_1

    .line 108
    sget v3, Lcom/google/android/apps/lightcycle/R$id;->pano_name:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 109
    .local v1, "label":Landroid/widget/TextView;
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->createStitchedPanoRow(ILandroid/widget/LinearLayout;Landroid/widget/TextView;)V

    .line 113
    .end local v1    # "label":Landroid/widget/TextView;
    :goto_0
    return-object v2

    .line 111
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->createUnstitchedPanoRow(ILandroid/widget/LinearLayout;)V

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->refreshIds()V

    .line 119
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 120
    return-void
.end method
