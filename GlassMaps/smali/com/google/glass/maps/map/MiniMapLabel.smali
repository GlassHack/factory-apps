.class public abstract Lcom/google/glass/maps/map/MiniMapLabel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final feature:Lcom/google/android/maps/driveabout/model/j;

.field protected final identifier:Ljava/lang/String;

.field protected final rank:I

.field private shouldAnimate:Z

.field protected final style:Lcom/google/android/maps/driveabout/model/aq;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/model/j;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/glass/maps/map/MiniMapLabel;->feature:Lcom/google/android/maps/driveabout/model/j;

    .line 32
    iput-object p2, p0, Lcom/google/glass/maps/map/MiniMapLabel;->identifier:Ljava/lang/String;

    .line 33
    invoke-interface {p1}, Lcom/google/android/maps/driveabout/model/j;->b()Lcom/google/android/maps/driveabout/model/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapLabel;->style:Lcom/google/android/maps/driveabout/model/aq;

    .line 34
    iput p3, p0, Lcom/google/glass/maps/map/MiniMapLabel;->rank:I

    .line 35
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public abstract draw(Lcom/google/glass/maps/map/Camera;Lcom/google/glass/maps/opengl/Program;J)V
.end method

.method public abstract getBound()Lcom/google/android/maps/driveabout/model/an;
.end method

.method public getBoundingBox()Lcom/google/android/maps/driveabout/model/am;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/glass/maps/map/MiniMapLabel;->getBound()Lcom/google/android/maps/driveabout/model/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/an;->c()Lcom/google/android/maps/driveabout/model/am;

    move-result-object v0

    return-object v0
.end method

.method public final getFeature()Lcom/google/android/maps/driveabout/model/j;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLabel;->feature:Lcom/google/android/maps/driveabout/model/j;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLabel;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/google/glass/maps/map/MiniMapLabel;->rank:I

    return v0
.end method

.method public final getStyle()Lcom/google/android/maps/driveabout/model/aq;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLabel;->style:Lcom/google/android/maps/driveabout/model/aq;

    return-object v0
.end method

.method public isContainedInRegion(Lcom/google/android/maps/driveabout/model/bi;)Z
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/bi;->a()Lcom/google/android/maps/driveabout/model/bh;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/maps/map/MiniMapLabel;->getBoundingBox()Lcom/google/android/maps/driveabout/model/am;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/model/bh;->a(Lcom/google/android/maps/driveabout/model/an;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/google/glass/maps/map/MiniMapLabel;->getBound()Lcom/google/android/maps/driveabout/model/an;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/model/bi;->a(Lcom/google/android/maps/driveabout/model/an;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShouldAnimate(Z)V
    .locals 0

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/google/glass/maps/map/MiniMapLabel;->shouldAnimate:Z

    .line 83
    return-void
.end method

.method public shouldAnimate()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/google/glass/maps/map/MiniMapLabel;->shouldAnimate:Z

    return v0
.end method

.method public tryAlternateCandidate(Lcom/google/glass/maps/map/Camera;)Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public updateCamera(Lcom/google/glass/maps/map/Camera;)Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method
