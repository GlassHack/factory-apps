.class final Lcom/google/glass/musicplayer/CursorUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/google/glass/musicplayer/cards/Card;Lcom/google/glass/musicplayer/cards/Card;)I
    .locals 2

    .prologue
    .line 172
    invoke-interface {p1}, Lcom/google/glass/musicplayer/cards/Card;->getResultPriority()I

    move-result v0

    invoke-interface {p2}, Lcom/google/glass/musicplayer/cards/Card;->getResultPriority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 169
    check-cast p1, Lcom/google/glass/musicplayer/cards/Card;

    check-cast p2, Lcom/google/glass/musicplayer/cards/Card;

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/musicplayer/CursorUtils$1;->compare(Lcom/google/glass/musicplayer/cards/Card;Lcom/google/glass/musicplayer/cards/Card;)I

    move-result v0

    return v0
.end method
