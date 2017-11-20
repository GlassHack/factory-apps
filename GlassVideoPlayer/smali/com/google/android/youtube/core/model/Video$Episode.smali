.class public final Lcom/google/android/youtube/core/model/Video$Episode;
.super Lcom/google/android/youtube/core/model/p;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Landroid/net/Uri;

.field public final e:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 282
    .line 290
    invoke-direct/range {p0 .. p8}, Lcom/google/android/youtube/core/model/p;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 292
    iput-object p9, p0, Lcom/google/android/youtube/core/model/Video$Episode;->a:Ljava/lang/String;

    .line 293
    iput-object p10, p0, Lcom/google/android/youtube/core/model/Video$Episode;->d:Landroid/net/Uri;

    .line 294
    iput-object p11, p0, Lcom/google/android/youtube/core/model/Video$Episode;->b:Ljava/lang/String;

    .line 295
    iput-object p12, p0, Lcom/google/android/youtube/core/model/Video$Episode;->e:Landroid/net/Uri;

    .line 296
    iput-object p13, p0, Lcom/google/android/youtube/core/model/Video$Episode;->c:Ljava/lang/String;

    .line 297
    return-void
.end method
