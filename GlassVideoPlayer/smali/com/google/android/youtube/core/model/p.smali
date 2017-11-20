.class public Lcom/google/android/youtube/core/model/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final f:Ljava/util/List;

.field public final g:Ljava/util/List;

.field public final h:Ljava/util/Map;

.field public final i:Ljava/util/Date;

.field public final j:Ljava/util/Date;

.field public final k:Ljava/util/Date;

.field public final l:Landroid/net/Uri;

.field public final m:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const-string v0, "releaseMediums may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 132
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/p;->f:Ljava/util/List;

    .line 134
    const-string v0, "genres may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/p;->g:Ljava/util/List;

    .line 136
    const-string v0, "credits may not be null"

    .line 135
    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/p;->h:Ljava/util/Map;

    .line 137
    iput-object p4, p0, Lcom/google/android/youtube/core/model/p;->i:Ljava/util/Date;

    .line 138
    iput-object p5, p0, Lcom/google/android/youtube/core/model/p;->j:Ljava/util/Date;

    .line 139
    iput-object p6, p0, Lcom/google/android/youtube/core/model/p;->k:Ljava/util/Date;

    .line 140
    iput-object p7, p0, Lcom/google/android/youtube/core/model/p;->l:Landroid/net/Uri;

    .line 141
    iput-object p8, p0, Lcom/google/android/youtube/core/model/p;->m:Landroid/net/Uri;

    .line 142
    return-void
.end method
