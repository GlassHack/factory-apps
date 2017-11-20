.class public final Lcom/google/android/youtube/core/player/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/google/android/youtube/core/async/h;
.implements Lcom/google/android/youtube/core/utils/o;


# instance fields
.field private final a:Lcom/google/android/youtube/core/player/overlay/q;

.field private final b:Lcom/google/android/youtube/core/player/s;

.field private final c:Landroid/content/SharedPreferences;

.field private final d:Lcom/google/android/youtube/core/utils/n;

.field private e:Lcom/google/android/youtube/core/model/Subtitles;

.field private f:Ljava/util/List;

.field private g:Lcom/google/android/youtube/core/async/i;


# direct methods
.method private a(Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/model/Subtitles;)V
    .locals 1

    .prologue
    .line 175
    iput-object p2, p0, Lcom/google/android/youtube/core/player/r;->e:Lcom/google/android/youtube/core/model/Subtitles;

    .line 176
    invoke-virtual {p2}, Lcom/google/android/youtube/core/model/Subtitles;->getEventTimes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/r;->f:Ljava/util/List;

    .line 177
    iget-object v0, p0, Lcom/google/android/youtube/core/player/r;->b:Lcom/google/android/youtube/core/player/s;

    .line 178
    return-void
.end method

.method private a(Lcom/google/android/youtube/core/model/SubtitleTrack;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 182
    const-string v0, "error retrieving subtitle"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/r;->d()V

    .line 184
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x2

    .line 76
    iget-object v2, p0, Lcom/google/android/youtube/core/player/r;->c:Landroid/content/SharedPreferences;

    const-string v3, "subtitles_size"

    .line 77
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 76
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 79
    if-le v2, v1, :cond_0

    .line 82
    sparse-switch v2, :sswitch_data_0

    .line 89
    :goto_0
    :sswitch_0
    iget-object v1, p0, Lcom/google/android/youtube/core/player/r;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 90
    const-string v2, "subtitles_size"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 89
    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 92
    :goto_1
    iget-object v1, p0, Lcom/google/android/youtube/core/player/r;->a:Lcom/google/android/youtube/core/player/overlay/q;

    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/player/overlay/q;->setFontSizeLevel(I)V

    .line 93
    return-void

    .line 83
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 85
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    move v0, v1

    .line 86
    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    .line 82
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_1
        0x12 -> :sswitch_0
        0x19 -> :sswitch_2
        0x23 -> :sswitch_3
    .end sparse-switch
.end method

.method private c()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/youtube/core/player/r;->d:Lcom/google/android/youtube/core/utils/n;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/utils/n;->a(Lcom/google/android/youtube/core/utils/o;)V

    .line 155
    iget-object v0, p0, Lcom/google/android/youtube/core/player/r;->a:Lcom/google/android/youtube/core/player/overlay/q;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/overlay/q;->a()V

    .line 156
    iget-object v0, p0, Lcom/google/android/youtube/core/player/r;->a:Lcom/google/android/youtube/core/player/overlay/q;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/overlay/q;->b()V

    .line 157
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/r;->c()V

    .line 188
    iget-object v0, p0, Lcom/google/android/youtube/core/player/r;->e:Lcom/google/android/youtube/core/model/Subtitles;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/google/android/youtube/core/player/r;->b:Lcom/google/android/youtube/core/player/s;

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/r;->e:Lcom/google/android/youtube/core/model/Subtitles;

    .line 192
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/r;->d()V

    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/core/player/r;->g:Lcom/google/android/youtube/core/async/i;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/android/youtube/core/player/r;->g:Lcom/google/android/youtube/core/async/i;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/i;->a()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/r;->g:Lcom/google/android/youtube/core/async/i;

    .line 101
    :cond_0
    return-void
.end method

.method public final synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/youtube/core/model/SubtitleTrack;

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/player/r;->a(Lcom/google/android/youtube/core/model/SubtitleTrack;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/youtube/core/model/SubtitleTrack;

    check-cast p2, Lcom/google/android/youtube/core/model/Subtitles;

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/player/r;->a(Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/model/Subtitles;)V

    return-void
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 70
    const-string v0, "subtitles_size"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/r;->b()V

    .line 73
    :cond_0
    return-void
.end method
