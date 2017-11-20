.class public Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;
.super Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;
.source "SourceFile"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final iconView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/util/CachedFilesManager;Lcom/google/glass/net/ProtoRequestDispatcher;Landroid/util/LruCache;Lcom/google/glass/time/Clock;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;Landroid/widget/ImageView;)V
    .locals 10

    .prologue
    .line 65
    .line 66
    invoke-static/range {p8 .. p8}, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;->access$000(Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;)I

    move-result v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 65
    invoke-direct/range {v1 .. v9}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedFilesManager;Lcom/google/glass/net/ProtoRequestDispatcher;Landroid/util/LruCache;Lcom/google/glass/time/Clock;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V

    .line 67
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;->iconView:Landroid/widget/ImageView;

    .line 68
    return-void
.end method


# virtual methods
.method protected bindContent(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    if-nez p1, :cond_0

    .line 93
    sget-object v0, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Bitmap null in bindContent()"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :goto_0
    return-void

    .line 97
    :cond_0
    sget-object v0, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Bitmap not null, setting in bindContent(), showing view"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;->iconView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;->showView(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;->bindContent(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected getUserEventTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "gi"

    return-object v0
.end method

.method protected newCacheEntry()Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$BitmapCacheEntry;

    invoke-direct {v0}, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$BitmapCacheEntry;-><init>()V

    return-object v0
.end method

.method protected prepareContent(F)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;->loadContentFromCache()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 79
    if-eqz v0, :cond_0

    .line 80
    sget-object v1, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Bitmap not null, setting in prepareContent()"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v1, p0, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 82
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v4}, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;->showView(Landroid/view/View;Z)V

    .line 83
    invoke-virtual {p0, v4}, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;->cancel(Z)V

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_0
    sget-object v0, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Bitmap is null in prepareContent(), waiting for it to load."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;->iconView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v4, v1}, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;->hideView(Landroid/view/View;ZZ)V

    goto :goto_0
.end method
