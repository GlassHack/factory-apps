.class public Lcom/google/glass/maps/util/StepUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisplayStepCues(Lcom/google/android/maps/driveabout/nav/ah;)Ljava/util/List;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ah;->w()Lcom/google/android/maps/driveabout/nav/aj;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ah;->w()Lcom/google/android/maps/driveabout/nav/aj;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ah;->p()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/maps/util/TextFormatter;->filterStepCues(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 32
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ah;->q()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/maps/util/TextFormatter;->filterStepCues(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
