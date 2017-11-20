.class Lcom/google/glass/util/IconProvider$Loader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final listeners:Ljava/util/List;

.field final synthetic this$0:Lcom/google/glass/util/IconProvider;

.field final uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/util/IconProvider;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/glass/util/IconProvider$Loader;->this$0:Lcom/google/glass/util/IconProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/IconProvider$Loader;->listeners:Ljava/util/List;

    .line 114
    iput-object p2, p0, Lcom/google/glass/util/IconProvider$Loader;->uri:Ljava/lang/String;

    .line 115
    return-void
.end method


# virtual methods
.method addListener(Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;)V
    .locals 1

    .prologue
    .line 162
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 163
    iget-object v0, p0, Lcom/google/glass/util/IconProvider$Loader;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method load()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 137
    iget-object v1, p0, Lcom/google/glass/util/IconProvider$Loader;->uri:Ljava/lang/String;

    const-string v2, "android.resource"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/util/IconProvider$Loader;->uri:Ljava/lang/String;

    const-string v2, "content"

    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/util/IconProvider$Loader;->uri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 141
    iget-object v2, p0, Lcom/google/glass/util/IconProvider$Loader;->this$0:Lcom/google/glass/util/IconProvider;

    invoke-static {v2}, Lcom/google/glass/util/IconProvider;->access$200(Lcom/google/glass/util/IconProvider;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 142
    iget-object v2, p0, Lcom/google/glass/util/IconProvider$Loader;->uri:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 158
    :cond_1
    :goto_0
    return-object v0

    .line 143
    :catch_0
    move-exception v1

    .line 144
    invoke-static {}, Lcom/google/glass/util/IconProvider;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Failed to load local resource or content provider resource [uri=%s]"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/util/IconProvider$Loader;->uri:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 146
    :catch_1
    move-exception v1

    .line 147
    invoke-static {}, Lcom/google/glass/util/IconProvider;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Invalid URI: [uri=%s]"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/util/IconProvider$Loader;->uri:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 149
    :catch_2
    move-exception v1

    .line 150
    invoke-static {}, Lcom/google/glass/util/IconProvider;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Failed to load the file: [uri=%s]"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/util/IconProvider$Loader;->uri:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/google/glass/util/IconProvider$Loader;->this$0:Lcom/google/glass/util/IconProvider;

    iget-object v1, p0, Lcom/google/glass/util/IconProvider$Loader;->uri:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/glass/util/IconProvider;->access$400(Lcom/google/glass/util/IconProvider;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 155
    if-nez v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/google/glass/util/IconProvider$Loader;->this$0:Lcom/google/glass/util/IconProvider;

    iget-object v1, p0, Lcom/google/glass/util/IconProvider$Loader;->uri:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/glass/util/IconProvider;->access$500(Lcom/google/glass/util/IconProvider;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method notifyListeners(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 167
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 168
    iget-object v0, p0, Lcom/google/glass/util/IconProvider$Loader;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;

    .line 169
    invoke-virtual {v0, p1}, Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 171
    :cond_0
    return-void
.end method

.method startLoad()V
    .locals 3

    .prologue
    .line 119
    new-instance v0, Lcom/google/glass/util/IconProvider$Loader$1;

    invoke-direct {v0, p0}, Lcom/google/glass/util/IconProvider$Loader$1;-><init>(Lcom/google/glass/util/IconProvider$Loader;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 133
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/IconProvider$Loader$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 134
    return-void
.end method
