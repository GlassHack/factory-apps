.class Lcom/google/glass/home/timeline/active/NavigationItemView$IconLoader;
.super Landroid/os/AsyncTask;
.source "NavigationItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/active/NavigationItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field target:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "target"    # Landroid/widget/ImageView;

    .prologue
    .line 132
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/NavigationItemView$IconLoader;->target:Landroid/widget/ImageView;

    .line 134
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 138
    const/4 v1, 0x0

    .line 140
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/NavigationItemView$IconLoader;->target:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 141
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 146
    invoke-static {}, Lcom/google/glass/home/timeline/active/NavigationItemView;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    :goto_0
    return-object v2

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-static {}, Lcom/google/glass/home/timeline/active/NavigationItemView;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Error loading Bitmap"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    const/4 v2, 0x0

    .line 146
    invoke-static {}, Lcom/google/glass/home/timeline/active/NavigationItemView;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/google/glass/home/timeline/active/NavigationItemView;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/active/NavigationItemView$IconLoader;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 152
    if-eqz p1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/NavigationItemView$IconLoader;->target:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/NavigationItemView$IconLoader;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 156
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 129
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/active/NavigationItemView$IconLoader;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
