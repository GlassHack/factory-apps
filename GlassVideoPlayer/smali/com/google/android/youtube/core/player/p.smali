.class public final Lcom/google/android/youtube/core/player/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/h;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Landroid/content/SharedPreferences;

.field private final c:Lcom/google/android/youtube/core/player/q;

.field private final d:Lcom/google/android/youtube/core/client/u;

.field private final e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/util/List;

.field private m:Ljava/lang/String;

.field private n:Lcom/google/android/youtube/core/async/i;


# direct methods
.method private a(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->b:Landroid/content/SharedPreferences;

    const-string v1, "subtitles_language_code"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    if-eqz p1, :cond_1

    .line 186
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    :goto_0
    return-object p2

    .line 189
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/net/Uri;ZZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/p;->a()V

    .line 121
    const-string v0, "videoId cannot be empty"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/p;->m:Ljava/lang/String;

    .line 122
    iput-boolean p4, p0, Lcom/google/android/youtube/core/player/p;->j:Z

    .line 123
    invoke-direct {p0, p3, p5}, Lcom/google/android/youtube/core/player/p;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/p;->k:Ljava/lang/String;

    .line 125
    if-eqz p2, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->c()V

    .line 128
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->f:Z

    .line 130
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->b()V

    .line 133
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 257
    const-string v0, "error retrieving subtitle tracks"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->f()V

    .line 259
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 199
    iput-boolean v6, p0, Lcom/google/android/youtube/core/player/p;->h:Z

    .line 200
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    const-string v0, "SubtitleTrack response was empty"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->f()V

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/p;->j:Z

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 207
    :cond_2
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->c()V

    .line 210
    :cond_3
    iput-object p2, p0, Lcom/google/android/youtube/core/player/p;->l:Ljava/util/List;

    .line 212
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/p;->f:Z

    if-eqz v1, :cond_6

    .line 213
    iput-boolean v6, p0, Lcom/google/android/youtube/core/player/p;->f:Z

    .line 217
    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    move-object v2, v0

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 225
    if-nez v2, :cond_5

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->j:Z

    if-eqz v0, :cond_5

    .line 226
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->l:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/SubtitleTrack;

    move-object v2, v0

    .line 235
    :cond_5
    if-eqz v2, :cond_6

    .line 236
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->c:Lcom/google/android/youtube/core/player/q;

    .line 240
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->g:Z

    if-eqz v0, :cond_0

    .line 241
    iput-boolean v6, p0, Lcom/google/android/youtube/core/player/p;->g:Z

    .line 242
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->e()V

    goto :goto_0

    .line 217
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/SubtitleTrack;

    .line 218
    iget-object v4, v0, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/youtube/core/player/p;->k:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v2, v0

    .line 219
    goto :goto_1

    .line 220
    :cond_8
    if-nez v1, :cond_4

    const-string v4, "en"

    iget-object v5, v0, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v1, v0

    .line 221
    goto :goto_1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->h:Z

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->l:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 145
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->e()V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->h:Z

    .line 148
    invoke-static {p0}, Lcom/google/android/youtube/core/async/i;->a(Lcom/google/android/youtube/core/async/h;)Lcom/google/android/youtube/core/async/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/p;->n:Lcom/google/android/youtube/core/async/i;

    .line 149
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->d:Lcom/google/android/youtube/core/client/u;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->m:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->n:Lcom/google/android/youtube/core/async/i;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/async/w;->a(Landroid/os/Handler;Lcom/google/android/youtube/core/async/h;)Lcom/google/android/youtube/core/async/w;

    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->i:Z

    if-nez v0, :cond_0

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->i:Z

    .line 170
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->c:Lcom/google/android/youtube/core/player/q;

    .line 172
    :cond_0
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->i:Z

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->i:Z

    .line 177
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->c:Lcom/google/android/youtube/core/player/q;

    .line 179
    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->l:Ljava/util/List;

    .line 248
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/p;->j:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 250
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/youtube/core/player/p;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/youtube/core/model/SubtitleTrack;->createDisableSubtitleOption(Ljava/lang/String;)Lcom/google/android/youtube/core/model/SubtitleTrack;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->c:Lcom/google/android/youtube/core/player/q;

    .line 253
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->h:Z

    .line 263
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->d()V

    .line 264
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->g:Z

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->c:Lcom/google/android/youtube/core/player/q;

    .line 267
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 155
    iput-object v1, p0, Lcom/google/android/youtube/core/player/p;->m:Ljava/lang/String;

    .line 156
    iput-object v1, p0, Lcom/google/android/youtube/core/player/p;->l:Ljava/util/List;

    .line 157
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->g:Z

    .line 158
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->f:Z

    .line 159
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->h:Z

    .line 160
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->d()V

    .line 161
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->n:Lcom/google/android/youtube/core/async/i;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->n:Lcom/google/android/youtube/core/async/i;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/i;->a()V

    .line 163
    iput-object v1, p0, Lcom/google/android/youtube/core/player/p;->n:Lcom/google/android/youtube/core/async/i;

    .line 165
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;)V
    .locals 6

    .prologue
    .line 105
    const-string v0, "video cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->captionTracksUri:Landroid/net/Uri;

    iget-boolean v3, p1, Lcom/google/android/youtube/core/model/Video;->showSubtitlesByDefault:Z

    iget-boolean v4, p1, Lcom/google/android/youtube/core/model/Video;->showSubtitlesAlways:Z

    .line 107
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Video;->getDefaultSubtitleLanguageCode()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 106
    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/player/p;->a(Ljava/lang/String;Landroid/net/Uri;ZZLjava/lang/String;)V

    .line 108
    return-void
.end method

.method public final synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/player/p;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/player/p;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
