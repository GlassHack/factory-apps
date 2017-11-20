.class public Lcom/google/glass/voice/actions/NavigationActionsUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACTION_EXTENSION:Ljava/lang/String; = "._a"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/actions/NavigationActionsUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createGoogleXLocationFromActionLocation(Lcom/google/b/a/ar;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 3

    .prologue
    .line 84
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;-><init>()V

    .line 85
    invoke-virtual {p0}, Lcom/google/b/a/ar;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/google/b/a/ar;->b()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->setLatitude(D)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/google/b/a/ar;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/google/b/a/ar;->d()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->setLongitude(D)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/google/b/a/ar;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    invoke-virtual {p0}, Lcom/google/b/a/ar;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 94
    :cond_2
    invoke-virtual {p0}, Lcom/google/b/a/ar;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 95
    invoke-virtual {p0}, Lcom/google/b/a/ar;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->setAddress(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 97
    :cond_3
    return-object v0
.end method

.method public static getNavigationIntentFromPeanut(Lcom/google/b/a/gw;)Landroid/content/Intent;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 32
    iget-object v0, p0, Lcom/google/b/a/gw;->h:[Lcom/google/b/a/o;

    if-nez v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-object v3

    .line 38
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 39
    const/4 v0, 0x0

    move v2, v0

    move-object v4, v3

    move-object v0, v3

    :goto_1
    iget-object v1, p0, Lcom/google/b/a/gw;->h:[Lcom/google/b/a/o;

    array-length v1, v1

    if-ge v2, v1, :cond_5

    .line 40
    iget-object v1, p0, Lcom/google/b/a/gw;->h:[Lcom/google/b/a/o;

    aget-object v1, v1, v2

    .line 41
    if-eqz v1, :cond_7

    iget-object v6, v1, Lcom/google/b/a/o;->e:Lcom/google/b/a/ad;

    if-nez v6, :cond_3

    iget-object v6, v1, Lcom/google/b/a/o;->c:Lcom/google/b/a/be;

    if-nez v6, :cond_3

    move-object v1, v0

    move-object v0, v4

    .line 39
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-object v4, v0

    move-object v0, v1

    goto :goto_1

    .line 45
    :cond_3
    iget-object v0, v1, Lcom/google/b/a/o;->e:Lcom/google/b/a/ad;

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/google/b/a/o;->c:Lcom/google/b/a/be;

    iget-object v0, v0, Lcom/google/b/a/be;->a:Lcom/google/b/a/ar;

    .line 49
    :goto_3
    invoke-static {v0}, Lcom/google/glass/voice/actions/NavigationActionsUtils;->createGoogleXLocationFromActionLocation(Lcom/google/b/a/ar;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {v0}, Lcom/google/b/a/ar;->h()Ljava/lang/String;

    move-result-object v1

    .line 51
    if-eqz v4, :cond_2

    move-object v0, v4

    goto :goto_2

    .line 45
    :cond_4
    iget-object v0, v1, Lcom/google/b/a/o;->e:Lcom/google/b/a/ad;

    iget-object v0, v0, Lcom/google/b/a/ad;->a:Lcom/google/b/a/ar;

    goto :goto_3

    .line 59
    :cond_5
    const-string v6, "2"

    .line 62
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v7, :cond_6

    .line 64
    invoke-static {v5, v0, v6, v7}, Lcom/google/glass/voice/actions/NavigationLauncher;->getNavigationIntent(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_6

    move-object v3, v0

    .line 67
    goto :goto_0

    .line 71
    :cond_6
    if-eqz v4, :cond_0

    .line 72
    invoke-virtual {v4}, Lcom/google/b/a/ar;->i()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {v4}, Lcom/google/b/a/ar;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/google/b/a/ar;->b()D

    move-result-wide v2

    .line 74
    invoke-virtual {v4}, Lcom/google/b/a/ar;->d()D

    move-result-wide v4

    .line 72
    invoke-static/range {v0 .. v6}, Lcom/google/glass/voice/actions/NavigationLauncher;->getNavigationIntent(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    goto :goto_0

    :cond_7
    move-object v1, v0

    move-object v0, v4

    goto :goto_2
.end method
