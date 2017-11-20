.class public Lcom/google/glass/deferredcontent/ImageUriLoadingTask;
.super Lcom/google/glass/deferredcontent/LoadingTask;
.source "SourceFile"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private imageUri:Landroid/net/Uri;

.field private imageView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/deferredcontent/ImageUriLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/glass/deferredcontent/LoadingTask;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lcom/google/glass/deferredcontent/ImageUriLoadingTask;->imageUri:Landroid/net/Uri;

    .line 32
    iput-object p3, p0, Lcom/google/glass/deferredcontent/ImageUriLoadingTask;->imageView:Landroid/widget/ImageView;

    .line 33
    return-void
.end method


# virtual methods
.method protected bindContent(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageUriLoadingTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    :cond_0
    return-void
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/google/glass/deferredcontent/ImageUriLoadingTask;->bindContent(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected getUserEventTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "iuri"

    return-object v0
.end method

.method protected loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p1}, Lcom/google/glass/util/Condition;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    sget-object v1, Lcom/google/glass/deferredcontent/ImageUriLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Uri load for %s cancelled"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/deferredcontent/ImageUriLoadingTask;->imageUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    :goto_0
    return-object v0

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageUriLoadingTask;->imageUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 51
    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "file"

    .line 52
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/ImageUriLoadingTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/deferredcontent/ImageUriLoadingTask;->imageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    .line 54
    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v1

    .line 57
    sget-object v2, Lcom/google/glass/deferredcontent/ImageUriLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unable to open image uri: %s"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/deferredcontent/ImageUriLoadingTask;->imageUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :cond_2
    sget-object v2, Lcom/google/glass/deferredcontent/ImageUriLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unsupported uri scheme: %s from imageUri: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v6

    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageUriLoadingTask;->imageUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/google/glass/deferredcontent/ImageUriLoadingTask;->loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected prepareContent(F)V
    .locals 0

    .prologue
    .line 41
    return-void
.end method
