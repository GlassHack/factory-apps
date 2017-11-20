.class Lcom/android/providers/downloads/DownloadProvider$1;
.super Ljava/lang/Object;
.source "DownloadProvider.java"

# interfaces
.implements Landroid/os/ParcelFileDescriptor$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/DownloadProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/DownloadProvider;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/DownloadProvider;Ljava/io/File;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1228
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadProvider$1;->this$0:Lcom/android/providers/downloads/DownloadProvider;

    iput-object p2, p0, Lcom/android/providers/downloads/DownloadProvider$1;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/android/providers/downloads/DownloadProvider$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Ljava/io/IOException;)V
    .locals 5
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    const/4 v4, 0x0

    .line 1231
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1232
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "total_bytes"

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadProvider$1;->val$file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1233
    const-string v1, "lastmod"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1235
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadProvider$1;->this$0:Lcom/android/providers/downloads/DownloadProvider;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadProvider$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v4, v4}, Lcom/android/providers/downloads/DownloadProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1236
    return-void
.end method
