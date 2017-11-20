.class public Lcom/google/glass/musicplayer/cards/IntentUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static equals(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-static {p0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    const/4 v0, 0x1

    .line 24
    :cond_0
    :goto_0
    return v0

    .line 19
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p0, p1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static hashCode(Landroid/content/Intent;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 33
    if-nez p0, :cond_0

    .line 34
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 37
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->filterHashCode()I

    move-result v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method
