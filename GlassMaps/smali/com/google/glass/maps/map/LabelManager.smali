.class public Lcom/google/glass/maps/map/LabelManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/store/bd;


# static fields
.field private static final DEFAULT_LABELING_BUDGET_MS:I = 0xa

.field private static final LABELING_BUDGET_POST_RESET_MS:I = 0x64

.field private static final MAX_LABELS:I = 0x14

.field private static final MIN_ROAD_LENGTH_FOR_SHIELD_DP:I = 0x28

.field public static final MIN_ROAD_ZOOM_LEVEL:F = 14.0f


# instance fields
.field private bound:Lcom/google/android/maps/driveabout/model/bg;

.field private canContinue:Z

.field private final context:Landroid/content/Context;

.field private curLabels:Ljava/util/ArrayList;

.field private featureIterator:Ljava/util/Iterator;

.field private final labelIds:Ljava/util/Set;

.field private labelingBudgetMs:I

.field private locationMarker:Lcom/google/glass/maps/map/MiniMapLocationMarker;

.field private locationMarkerBoundingBox:Lcom/google/android/maps/driveabout/model/am;

.field private needsBoundsChecking:Z

.field private needsConflictResolution:Z

.field private needsStart:Z

.field private prevLabels:Ljava/util/ArrayList;

.field private final renderUtil:Lcom/google/glass/maps/map/RenderUtil;

.field private final resourceManager:Lcom/google/android/maps/driveabout/store/be;

.field private final textGenerator:Lcom/google/glass/maps/map/TextGenerator;

.field private final theme:Lcom/google/glass/maps/map/MiniMapTheme;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/maps/map/RenderUtil;Lcom/google/glass/maps/map/MiniMapTheme;)V
    .locals 6

    .prologue
    .line 92
    new-instance v4, Lcom/google/glass/maps/map/TextGenerator;

    invoke-direct {v4}, Lcom/google/glass/maps/map/TextGenerator;-><init>()V

    invoke-static {}, Lcom/google/android/maps/driveabout/store/be;->a()Lcom/google/android/maps/driveabout/store/be;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/map/LabelManager;-><init>(Landroid/content/Context;Lcom/google/glass/maps/map/RenderUtil;Lcom/google/glass/maps/map/MiniMapTheme;Lcom/google/glass/maps/map/TextGenerator;Lcom/google/android/maps/driveabout/store/be;)V

    .line 93
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/glass/maps/map/RenderUtil;Lcom/google/glass/maps/map/MiniMapTheme;Lcom/google/glass/maps/map/TextGenerator;Lcom/google/android/maps/driveabout/store/be;)V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->curLabels:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->prevLabels:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Lcom/google/android/a/a;

    invoke-direct {v0}, Lcom/google/android/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->labelIds:Ljava/util/Set;

    .line 98
    iput-object p1, p0, Lcom/google/glass/maps/map/LabelManager;->context:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/google/glass/maps/map/LabelManager;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    .line 100
    iput-object p3, p0, Lcom/google/glass/maps/map/LabelManager;->theme:Lcom/google/glass/maps/map/MiniMapTheme;

    .line 101
    iput-object p4, p0, Lcom/google/glass/maps/map/LabelManager;->textGenerator:Lcom/google/glass/maps/map/TextGenerator;

    .line 102
    iput-object p5, p0, Lcom/google/glass/maps/map/LabelManager;->resourceManager:Lcom/google/android/maps/driveabout/store/be;

    .line 103
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/glass/maps/map/LabelManager;->labelingBudgetMs:I

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/maps/map/LabelManager;->needsStart:Z

    .line 105
    return-void
.end method

.method private addLabel(Lcom/google/glass/maps/map/MiniMapLabel;)V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->curLabels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->labelIds:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/glass/maps/map/MiniMapLabel;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 594
    return-void
.end method

.method private addOrDestroyLabel(Lcom/google/glass/maps/map/MiniMapLabel;Lcom/google/glass/maps/map/Camera;)Z
    .locals 2

    .prologue
    .line 509
    if-eqz p1, :cond_2

    .line 510
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->labelIds:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/glass/maps/map/MiniMapLabel;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 511
    invoke-virtual {p1, p2}, Lcom/google/glass/maps/map/MiniMapLabel;->updateCamera(Lcom/google/glass/maps/map/Camera;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    invoke-virtual {p0, p1}, Lcom/google/glass/maps/map/LabelManager;->overlapsExistingLabels(Lcom/google/glass/maps/map/MiniMapLabel;)Z

    move-result v0

    .line 513
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/google/glass/maps/map/MiniMapLabel;->tryAlternateCandidate(Lcom/google/glass/maps/map/Camera;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    invoke-virtual {p0, p1}, Lcom/google/glass/maps/map/LabelManager;->overlapsExistingLabels(Lcom/google/glass/maps/map/MiniMapLabel;)Z

    move-result v0

    goto :goto_0

    .line 516
    :cond_0
    if-nez v0, :cond_1

    .line 517
    invoke-direct {p0, p1}, Lcom/google/glass/maps/map/LabelManager;->addLabel(Lcom/google/glass/maps/map/MiniMapLabel;)V

    .line 518
    const/4 v0, 0x1

    .line 524
    :goto_1
    return v0

    .line 522
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/maps/map/MiniMapLabel;->destroy()V

    .line 524
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private canKeepOldLabel(Lcom/google/glass/maps/map/MiniMapLabel;F)Z
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x1

    return v0
.end method

.method private continueLabeling(Lcom/google/glass/maps/map/Camera;IZ)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 308
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p2

    add-long v3, v0, v2

    .line 309
    iget-boolean v0, p0, Lcom/google/glass/maps/map/LabelManager;->needsConflictResolution:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/maps/map/LabelManager;->needsBoundsChecking:Z

    if-eqz v0, :cond_1

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->bound:Lcom/google/android/maps/driveabout/model/bg;

    iget-boolean v1, p0, Lcom/google/glass/maps/map/LabelManager;->needsBoundsChecking:Z

    invoke-direct {p0, v0, v1}, Lcom/google/glass/maps/map/LabelManager;->resolveConflicts(Lcom/google/android/maps/driveabout/model/bg;Z)V

    .line 311
    iput-boolean v5, p0, Lcom/google/glass/maps/map/LabelManager;->needsConflictResolution:Z

    .line 312
    iput-boolean v5, p0, Lcom/google/glass/maps/map/LabelManager;->needsBoundsChecking:Z

    .line 314
    :cond_1
    new-instance v2, Lcom/google/android/maps/driveabout/model/f;

    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->bound:Lcom/google/android/maps/driveabout/model/bg;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/bg;->c()Lcom/google/android/maps/driveabout/model/an;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/maps/driveabout/model/f;-><init>(Lcom/google/android/maps/driveabout/model/an;)V

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    .line 315
    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/map/LabelManager;->runLabeler(Lcom/google/glass/maps/map/Camera;Lcom/google/android/maps/driveabout/model/f;JZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/maps/map/LabelManager;->canContinue:Z

    .line 316
    return-void
.end method

.method private destroyOutOfBoundsLabels(Lcom/google/glass/maps/map/Camera;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 320
    invoke-direct {p0}, Lcom/google/glass/maps/map/LabelManager;->swapLabelLists()V

    .line 322
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->bound:Lcom/google/android/maps/driveabout/model/bg;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/bg;->a()Lcom/google/android/maps/driveabout/model/bh;

    move-result-object v1

    .line 323
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->prevLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/MiniMapLabel;

    .line 324
    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0, p1}, Lcom/google/glass/maps/map/MiniMapLabel;->updateCamera(Lcom/google/glass/maps/map/Camera;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMapLabel;->getBoundingBox()Lcom/google/android/maps/driveabout/model/am;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/maps/driveabout/model/bh;->b(Lcom/google/android/maps/driveabout/model/an;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 326
    invoke-direct {p0, v0}, Lcom/google/glass/maps/map/LabelManager;->addLabel(Lcom/google/glass/maps/map/MiniMapLabel;)V

    goto :goto_0

    .line 328
    :cond_1
    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMapLabel;->destroy()V

    goto :goto_0

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->prevLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 336
    iput-boolean v4, p0, Lcom/google/glass/maps/map/LabelManager;->needsConflictResolution:Z

    .line 337
    iput-boolean v4, p0, Lcom/google/glass/maps/map/LabelManager;->needsBoundsChecking:Z

    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/maps/map/LabelManager;->canContinue:Z

    .line 339
    return-void
.end method

.method private getLongestClippedPolyline(Lcom/google/android/maps/driveabout/model/f;Lcom/google/android/maps/driveabout/model/ag;)Lcom/google/android/maps/driveabout/model/ag;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 481
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 482
    invoke-virtual {p1, p2, v5}, Lcom/google/android/maps/driveabout/model/f;->a(Lcom/google/android/maps/driveabout/model/ag;Ljava/util/List;)V

    .line 483
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 484
    if-nez v6, :cond_0

    .line 485
    const/4 v0, 0x0

    .line 498
    :goto_0
    return-object v0

    .line 486
    :cond_0
    if-ne v6, v1, :cond_1

    .line 487
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/ag;

    goto :goto_0

    .line 489
    :cond_1
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/ag;

    .line 490
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ag;->d()F

    move-result v2

    move v4, v1

    move-object v3, v0

    .line 491
    :goto_1
    if-ge v4, v6, :cond_2

    .line 492
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ag;->d()F

    move-result v1

    .line 493
    cmpl-float v0, v1, v2

    if-lez v0, :cond_3

    .line 495
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/ag;

    move v7, v1

    move-object v1, v0

    move v0, v7

    .line 491
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v3

    .line 498
    goto :goto_0

    :cond_3
    move v0, v2

    move-object v1, v3

    goto :goto_2
.end method

.method private static isTextInvisible(Lcom/google/android/maps/driveabout/model/aq;)Z
    .locals 2

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/aq;->e()Lcom/google/android/maps/driveabout/model/au;

    move-result-object v0

    .line 610
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/au;->b()I

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/au;->a()I

    move-result v0

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private placeLabelsForFeature(Lcom/google/android/maps/driveabout/model/j;Lcom/google/glass/maps/map/Camera;Lcom/google/android/maps/driveabout/model/f;Z)V
    .locals 1

    .prologue
    .line 375
    invoke-interface {p1}, Lcom/google/android/maps/driveabout/model/j;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 383
    :goto_0
    return-void

    .line 377
    :sswitch_0
    check-cast p1, Lcom/google/android/maps/driveabout/model/ac;

    invoke-direct {p0, p1, p2, p4}, Lcom/google/glass/maps/map/LabelManager;->tryToPlacePoiLabel(Lcom/google/android/maps/driveabout/model/ac;Lcom/google/glass/maps/map/Camera;Z)V

    goto :goto_0

    .line 380
    :sswitch_1
    check-cast p1, Lcom/google/android/maps/driveabout/model/ao;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/maps/map/LabelManager;->tryToPlaceRoadLabels(Lcom/google/android/maps/driveabout/model/ao;Lcom/google/glass/maps/map/Camera;Lcom/google/android/maps/driveabout/model/f;Z)V

    goto :goto_0

    .line 375
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method private resolveConflicts(Lcom/google/android/maps/driveabout/model/bg;Z)V
    .locals 4

    .prologue
    .line 532
    invoke-direct {p0}, Lcom/google/glass/maps/map/LabelManager;->swapLabelLists()V

    .line 533
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->prevLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 534
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 535
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->prevLabels:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/MiniMapLabel;

    .line 536
    if-eqz v0, :cond_1

    .line 537
    if-eqz p2, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/map/MiniMapLabel;->isContainedInRegion(Lcom/google/android/maps/driveabout/model/bi;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 538
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/glass/maps/map/LabelManager;->overlapsExistingLabels(Lcom/google/glass/maps/map/MiniMapLabel;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 539
    invoke-direct {p0, v0}, Lcom/google/glass/maps/map/LabelManager;->addLabel(Lcom/google/glass/maps/map/MiniMapLabel;)V

    .line 534
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 541
    :cond_2
    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMapLabel;->destroy()V

    goto :goto_1

    .line 545
    :cond_3
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->prevLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 546
    return-void
.end method

.method private runLabeler(Lcom/google/glass/maps/map/Camera;Lcom/google/android/maps/driveabout/model/f;JZ)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 354
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->prevLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 355
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot run labeler loop until all previous labels have either been copied into new label table or destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    .line 361
    :goto_0
    iget-object v2, p0, Lcom/google/glass/maps/map/LabelManager;->featureIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/glass/maps/map/LabelManager;->curLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_1

    .line 362
    add-int/lit8 v2, v0, 0x1

    if-lez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    cmp-long v0, v3, p3

    if-ltz v0, :cond_2

    .line 363
    const/4 v1, 0x1

    .line 367
    :cond_1
    return v1

    .line 365
    :cond_2
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->featureIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/j;

    invoke-direct {p0, v0, p1, p2, p5}, Lcom/google/glass/maps/map/LabelManager;->placeLabelsForFeature(Lcom/google/android/maps/driveabout/model/j;Lcom/google/glass/maps/map/Camera;Lcom/google/android/maps/driveabout/model/f;Z)V

    move v0, v2

    goto :goto_0
.end method

.method private startLabeling(Lcom/google/glass/maps/map/Camera;Ljava/util/Iterator;IZ)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 247
    iput-object p2, p0, Lcom/google/glass/maps/map/LabelManager;->featureIterator:Ljava/util/Iterator;

    .line 248
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p3

    add-long v3, v0, v2

    .line 252
    new-instance v2, Lcom/google/android/maps/driveabout/model/f;

    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->bound:Lcom/google/android/maps/driveabout/model/bg;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/bg;->c()Lcom/google/android/maps/driveabout/model/an;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/maps/driveabout/model/f;-><init>(Lcom/google/android/maps/driveabout/model/an;)V

    .line 253
    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getZoom()F

    move-result v6

    .line 256
    invoke-direct {p0}, Lcom/google/glass/maps/map/LabelManager;->swapLabelLists()V

    .line 261
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->prevLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 262
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v5

    .line 264
    :goto_0
    if-ge v1, v7, :cond_4

    .line 265
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->prevLabels:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/MiniMapLabel;

    .line 266
    if-eqz v0, :cond_1

    .line 268
    invoke-direct {p0, v0, v6}, Lcom/google/glass/maps/map/LabelManager;->canKeepOldLabel(Lcom/google/glass/maps/map/MiniMapLabel;F)Z

    move-result v9

    if-nez v9, :cond_0

    .line 269
    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMapLabel;->destroy()V

    .line 273
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/glass/maps/map/MiniMapLabel;->updateCamera(Lcom/google/glass/maps/map/Camera;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/google/glass/maps/map/LabelManager;->bound:Lcom/google/android/maps/driveabout/model/bg;

    invoke-virtual {v0, v9}, Lcom/google/glass/maps/map/MiniMapLabel;->isContainedInRegion(Lcom/google/android/maps/driveabout/model/bi;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 274
    invoke-virtual {p0, v0}, Lcom/google/glass/maps/map/LabelManager;->overlapsExistingLabels(Lcom/google/glass/maps/map/MiniMapLabel;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 275
    invoke-direct {p0, v0}, Lcom/google/glass/maps/map/LabelManager;->addLabel(Lcom/google/glass/maps/map/MiniMapLabel;)V

    .line 264
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 277
    :cond_2
    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMapLabel;->destroy()V

    goto :goto_1

    .line 280
    :cond_3
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMapLabel;->destroy()V

    goto :goto_1

    .line 287
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v1, v5

    .line 288
    :goto_2
    if-ge v1, v6, :cond_5

    .line 289
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/MiniMapLabel;

    .line 290
    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMapLabel;->getFeature()Lcom/google/android/maps/driveabout/model/j;

    move-result-object v0

    invoke-direct {p0, v0, p1, v2, v5}, Lcom/google/glass/maps/map/LabelManager;->placeLabelsForFeature(Lcom/google/android/maps/driveabout/model/j;Lcom/google/glass/maps/map/Camera;Lcom/google/android/maps/driveabout/model/f;Z)V

    .line 288
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 293
    :cond_5
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->prevLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 294
    iput-boolean v5, p0, Lcom/google/glass/maps/map/LabelManager;->needsConflictResolution:Z

    .line 295
    iput-boolean v5, p0, Lcom/google/glass/maps/map/LabelManager;->needsBoundsChecking:Z

    move-object v0, p0

    move-object v1, p1

    move v5, p4

    .line 296
    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/map/LabelManager;->runLabeler(Lcom/google/glass/maps/map/Camera;Lcom/google/android/maps/driveabout/model/f;JZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/maps/map/LabelManager;->canContinue:Z

    .line 297
    return-void
.end method

.method private swapLabelLists()V
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->prevLabels:Ljava/util/ArrayList;

    .line 601
    iget-object v1, p0, Lcom/google/glass/maps/map/LabelManager;->curLabels:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/glass/maps/map/LabelManager;->prevLabels:Ljava/util/ArrayList;

    .line 602
    iput-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->curLabels:Ljava/util/ArrayList;

    .line 603
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->labelIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 604
    return-void
.end method

.method private tryToPlacePoiLabel(Lcom/google/android/maps/driveabout/model/ac;Lcom/google/glass/maps/map/Camera;Z)V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->bound:Lcom/google/android/maps/driveabout/model/bg;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ac;->a()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/model/bg;->a(Lcom/google/android/maps/driveabout/model/ab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p2}, Lcom/google/glass/maps/map/Camera;->getZoom()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ac;->f()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/maps/map/LabelManager;->getPlacePoiLabel(Lcom/google/android/maps/driveabout/model/ac;Lcom/google/glass/maps/map/Camera;)Lcom/google/glass/maps/map/MiniMapLabel;

    move-result-object v0

    .line 392
    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/google/glass/maps/map/LabelManager;->addOrDestroyLabel(Lcom/google/glass/maps/map/MiniMapLabel;Lcom/google/glass/maps/map/Camera;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 393
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/map/MiniMapLabel;->setShouldAnimate(Z)V

    goto :goto_0
.end method

.method private tryToPlaceRoadLabels(Lcom/google/android/maps/driveabout/model/ao;Lcom/google/glass/maps/map/Camera;Lcom/google/android/maps/driveabout/model/f;Z)V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 431
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ao;->a()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ag;->a()Lcom/google/android/maps/driveabout/model/am;

    move-result-object v1

    .line 434
    iget-object v2, p0, Lcom/google/glass/maps/map/LabelManager;->bound:Lcom/google/android/maps/driveabout/model/bg;

    invoke-virtual {v2, v1}, Lcom/google/android/maps/driveabout/model/bg;->b(Lcom/google/android/maps/driveabout/model/an;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 435
    invoke-direct {p0, p3, v0}, Lcom/google/glass/maps/map/LabelManager;->getLongestClippedPolyline(Lcom/google/android/maps/driveabout/model/f;Lcom/google/android/maps/driveabout/model/ag;)Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v10

    .line 436
    invoke-virtual {p2}, Lcom/google/glass/maps/map/Camera;->getPixelSize()F

    move-result v0

    invoke-virtual {p2}, Lcom/google/glass/maps/map/Camera;->getScreenDensity()F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x42200000    # 40.0f

    mul-float/2addr v0, v1

    .line 438
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/google/android/maps/driveabout/model/ag;->d()F

    move-result v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_4

    move v7, v8

    .line 439
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ao;->f()I

    move-result v0

    if-ge v7, v0, :cond_4

    .line 440
    invoke-virtual {p1, v7}, Lcom/google/android/maps/driveabout/model/ao;->b(I)Lcom/google/android/maps/driveabout/model/s;

    move-result-object v6

    move v0, v8

    .line 446
    :goto_1
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/model/s;->b()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 447
    invoke-virtual {v6, v0}, Lcom/google/android/maps/driveabout/model/s;->a(I)Lcom/google/android/maps/driveabout/model/t;

    move-result-object v1

    .line 448
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/t;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 449
    invoke-virtual {p1, v7}, Lcom/google/android/maps/driveabout/model/ao;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 450
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->resourceManager:Lcom/google/android/maps/driveabout/store/be;

    invoke-virtual {v0, v2, p0}, Lcom/google/android/maps/driveabout/store/be;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/store/bd;)Lcom/google/android/maps/driveabout/store/bb;

    move-result-object v1

    .line 451
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/bb;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 452
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->getTextureAllocator()Lcom/google/glass/maps/opengl/TextureAllocator;

    move-result-object v0

    iget-object v4, p0, Lcom/google/glass/maps/map/LabelManager;->theme:Lcom/google/glass/maps/map/MiniMapTheme;

    .line 453
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/bb;->d()Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v1, p1

    move-object v3, p2

    .line 452
    invoke-static/range {v0 .. v5}, Lcom/google/glass/maps/map/MiniMapScreenLabel;->forShield(Lcom/google/glass/maps/opengl/TextureAllocator;Lcom/google/android/maps/driveabout/model/ao;Ljava/lang/String;Lcom/google/glass/maps/map/Camera;Lcom/google/glass/maps/map/MiniMapTheme;Landroid/graphics/Bitmap;)Lcom/google/glass/maps/map/MiniMapScreenLabel;

    move-result-object v0

    move-object v1, v0

    move-object v0, v9

    .line 462
    :goto_2
    invoke-virtual {p2}, Lcom/google/glass/maps/map/Camera;->getZoom()F

    move-result v2

    const/high16 v3, 0x41600000    # 14.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    if-eqz v0, :cond_0

    .line 463
    invoke-static {v0}, Lcom/google/glass/maps/map/LabelManager;->isTextInvisible(Lcom/google/android/maps/driveabout/model/aq;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->getTextureAllocator()Lcom/google/glass/maps/opengl/TextureAllocator;

    move-result-object v0

    .line 465
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/model/s;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/google/glass/maps/map/LabelManager;->theme:Lcom/google/glass/maps/map/MiniMapTheme;

    iget-object v6, p0, Lcom/google/glass/maps/map/LabelManager;->textGenerator:Lcom/google/glass/maps/map/TextGenerator;

    move-object v1, p1

    move-object v3, v10

    move-object v4, p2

    .line 464
    invoke-static/range {v0 .. v6}, Lcom/google/glass/maps/map/MiniMapLineLabel;->forRoad(Lcom/google/glass/maps/opengl/TextureAllocator;Lcom/google/android/maps/driveabout/model/ao;Ljava/lang/String;Lcom/google/android/maps/driveabout/model/ag;Lcom/google/glass/maps/map/Camera;Lcom/google/glass/maps/map/MiniMapTheme;Lcom/google/glass/maps/map/TextGenerator;)Lcom/google/glass/maps/map/MiniMapLineLabel;

    move-result-object v1

    .line 468
    :cond_0
    if-eqz v1, :cond_1

    invoke-direct {p0, v1, p2}, Lcom/google/glass/maps/map/LabelManager;->addOrDestroyLabel(Lcom/google/glass/maps/map/MiniMapLabel;Lcom/google/glass/maps/map/Camera;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    .line 469
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/map/MiniMapLabel;->setShouldAnimate(Z)V

    .line 439
    :cond_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 456
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/t;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 457
    invoke-virtual {v6, v0}, Lcom/google/android/maps/driveabout/model/s;->a(I)Lcom/google/android/maps/driveabout/model/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/t;->g()Lcom/google/android/maps/driveabout/model/aq;

    move-result-object v0

    move-object v1, v9

    .line 458
    goto :goto_2

    .line 446
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 474
    :cond_4
    return-void

    :cond_5
    move-object v0, v9

    move-object v1, v9

    goto :goto_2
.end method

.method private updateLabels(Lcom/google/glass/maps/map/Camera;Landroid/graphics/Rect;Ljava/util/Iterator;ZZIZ)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 213
    invoke-virtual {p0, p1}, Lcom/google/glass/maps/map/LabelManager;->updateLocationMarkerBounds(Lcom/google/glass/maps/map/Camera;)V

    .line 215
    if-eqz p2, :cond_2

    .line 216
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/glass/maps/map/Camera;->getGroundPlaneQuad(FFFF)Lcom/google/android/maps/driveabout/model/l;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/model/bg;->a(Lcom/google/android/maps/driveabout/model/l;)Lcom/google/android/maps/driveabout/model/bg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->bound:Lcom/google/android/maps/driveabout/model/bg;

    .line 222
    :goto_0
    if-eqz p5, :cond_0

    .line 223
    iput-boolean v4, p0, Lcom/google/glass/maps/map/LabelManager;->needsStart:Z

    .line 226
    :cond_0
    if-eqz p4, :cond_3

    .line 227
    invoke-direct {p0, p1}, Lcom/google/glass/maps/map/LabelManager;->destroyOutOfBoundsLabels(Lcom/google/glass/maps/map/Camera;)V

    .line 228
    iput-boolean v4, p0, Lcom/google/glass/maps/map/LabelManager;->needsStart:Z

    .line 235
    :cond_1
    :goto_1
    return-void

    .line 219
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getLabelingFrustumProjection()Lcom/google/android/maps/driveabout/model/bg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->bound:Lcom/google/android/maps/driveabout/model/bg;

    goto :goto_0

    .line 229
    :cond_3
    iget-boolean v0, p0, Lcom/google/glass/maps/map/LabelManager;->needsStart:Z

    if-eqz v0, :cond_4

    .line 230
    invoke-direct {p0, p1, p3, p6, p7}, Lcom/google/glass/maps/map/LabelManager;->startLabeling(Lcom/google/glass/maps/map/Camera;Ljava/util/Iterator;IZ)V

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/maps/map/LabelManager;->needsStart:Z

    goto :goto_1

    .line 232
    :cond_4
    iget-boolean v0, p0, Lcom/google/glass/maps/map/LabelManager;->canContinue:Z

    if-eqz v0, :cond_1

    .line 233
    invoke-direct {p0, p1, p6, p7}, Lcom/google/glass/maps/map/LabelManager;->continueLabeling(Lcom/google/glass/maps/map/Camera;IZ)V

    goto :goto_1
.end method


# virtual methods
.method public canContinue()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/google/glass/maps/map/LabelManager;->canContinue:Z

    return v0
.end method

.method public clearLabels()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 146
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->curLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/MiniMapLabel;

    .line 147
    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMapLabel;->destroy()V

    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->prevLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/MiniMapLabel;

    .line 153
    if-eqz v0, :cond_2

    .line 154
    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMapLabel;->destroy()V

    goto :goto_1

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->curLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 159
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->prevLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/maps/map/LabelManager;->needsStart:Z

    .line 161
    iput-boolean v2, p0, Lcom/google/glass/maps/map/LabelManager;->needsConflictResolution:Z

    .line 162
    iput-boolean v2, p0, Lcom/google/glass/maps/map/LabelManager;->needsBoundsChecking:Z

    .line 163
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/google/glass/maps/map/LabelManager;->clearLabels()V

    .line 136
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->textGenerator:Lcom/google/glass/maps/map/TextGenerator;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/TextGenerator;->destroy()V

    .line 137
    return-void
.end method

.method public getLabelIterator()Lcom/google/glass/maps/util/NullSkippingIterator;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Lcom/google/glass/maps/util/NullSkippingIterator;

    iget-object v1, p0, Lcom/google/glass/maps/map/LabelManager;->curLabels:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/google/glass/maps/util/NullSkippingIterator;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method getPlacePoiLabel(Lcom/google/android/maps/driveabout/model/ac;Lcom/google/glass/maps/map/Camera;)Lcom/google/glass/maps/map/MiniMapLabel;
    .locals 4

    .prologue
    .line 400
    const/4 v0, 0x0

    .line 401
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ac;->g()Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;

    move-result-object v1

    .line 402
    if-eqz v1, :cond_2

    .line 405
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->getType()Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

    move-result-object v1

    .line 406
    if-eqz v1, :cond_1

    .line 407
    iget-object v2, p0, Lcom/google/glass/maps/map/LabelManager;->resourceManager:Lcom/google/android/maps/driveabout/store/be;

    iget-object v3, p0, Lcom/google/glass/maps/map/LabelManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;->getResourceIconId()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/google/android/maps/driveabout/store/be;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 408
    if-eqz v1, :cond_0

    .line 409
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    .line 410
    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->getTextureAllocator()Lcom/google/glass/maps/opengl/TextureAllocator;

    move-result-object v0

    .line 409
    invoke-static {p1, v0, p2, v1}, Lcom/google/glass/maps/map/MiniMapScreenLabel;->forTrafficIncident(Lcom/google/android/maps/driveabout/model/ac;Lcom/google/glass/maps/opengl/TextureAllocator;Lcom/google/glass/maps/map/Camera;Landroid/graphics/Bitmap;)Lcom/google/glass/maps/map/MiniMapScreenLabel;

    move-result-object v0

    .line 424
    :cond_0
    :goto_0
    return-object v0

    .line 413
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ac;->g()Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->getMapIconUrl()Ljava/lang/String;

    move-result-object v1

    .line 414
    iget-object v2, p0, Lcom/google/glass/maps/map/LabelManager;->resourceManager:Lcom/google/android/maps/driveabout/store/be;

    invoke-virtual {v2, v1, p0}, Lcom/google/android/maps/driveabout/store/be;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/store/bd;)Lcom/google/android/maps/driveabout/store/bb;

    move-result-object v1

    .line 415
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/bb;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 416
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    .line 417
    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->getTextureAllocator()Lcom/google/glass/maps/opengl/TextureAllocator;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/bb;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 416
    invoke-static {p1, v0, p2, v1}, Lcom/google/glass/maps/map/MiniMapScreenLabel;->forTrafficIncident(Lcom/google/android/maps/driveabout/model/ac;Lcom/google/glass/maps/opengl/TextureAllocator;Lcom/google/glass/maps/map/Camera;Landroid/graphics/Bitmap;)Lcom/google/glass/maps/map/MiniMapScreenLabel;

    move-result-object v0

    goto :goto_0

    .line 420
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ac;->b()Lcom/google/android/maps/driveabout/model/aq;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/maps/map/LabelManager;->isTextInvisible(Lcom/google/android/maps/driveabout/model/aq;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ac;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 421
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->theme:Lcom/google/glass/maps/map/MiniMapTheme;

    iget-object v1, p0, Lcom/google/glass/maps/map/LabelManager;->textGenerator:Lcom/google/glass/maps/map/TextGenerator;

    iget-object v2, p0, Lcom/google/glass/maps/map/LabelManager;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    .line 422
    invoke-virtual {v2}, Lcom/google/glass/maps/map/RenderUtil;->getTextureAllocator()Lcom/google/glass/maps/opengl/TextureAllocator;

    move-result-object v2

    .line 421
    invoke-static {p1, p2, v0, v1, v2}, Lcom/google/glass/maps/map/MiniMapScreenLabel;->forPoi(Lcom/google/android/maps/driveabout/model/ac;Lcom/google/glass/maps/map/Camera;Lcom/google/glass/maps/map/MiniMapTheme;Lcom/google/glass/maps/map/TextGenerator;Lcom/google/glass/maps/opengl/TextureAllocator;)Lcom/google/glass/maps/map/MiniMapScreenLabel;

    move-result-object v0

    goto :goto_0
.end method

.method public handleResource(Lcom/google/android/maps/driveabout/store/bb;)V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/maps/map/LabelManager;->needsStart:Z

    .line 131
    return-void
.end method

.method overlapsExistingLabels(Lcom/google/glass/maps/map/MiniMapLabel;)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 554
    invoke-virtual {p1}, Lcom/google/glass/maps/map/MiniMapLabel;->getRank()I

    move-result v4

    .line 555
    invoke-virtual {p1}, Lcom/google/glass/maps/map/MiniMapLabel;->getBound()Lcom/google/android/maps/driveabout/model/an;

    move-result-object v5

    .line 556
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/model/an;->c()Lcom/google/android/maps/driveabout/model/am;

    move-result-object v6

    .line 561
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->NID:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->locationMarkerBoundingBox:Lcom/google/android/maps/driveabout/model/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->locationMarkerBoundingBox:Lcom/google/android/maps/driveabout/model/am;

    invoke-virtual {v0, v6}, Lcom/google/android/maps/driveabout/model/am;->b(Lcom/google/android/maps/driveabout/model/an;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 584
    :goto_0
    return v0

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->curLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v3, v2

    .line 568
    :goto_1
    if-ge v3, v7, :cond_3

    .line 569
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->curLabels:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/MiniMapLabel;

    .line 570
    if-eqz v0, :cond_1

    .line 571
    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMapLabel;->getBound()Lcom/google/android/maps/driveabout/model/an;

    move-result-object v8

    .line 572
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/model/an;->c()Lcom/google/android/maps/driveabout/model/am;

    move-result-object v9

    .line 574
    invoke-virtual {v9, v6}, Lcom/google/android/maps/driveabout/model/am;->b(Lcom/google/android/maps/driveabout/model/an;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8, v5}, Lcom/google/android/maps/driveabout/model/an;->b(Lcom/google/android/maps/driveabout/model/an;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 575
    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMapLabel;->getRank()I

    move-result v8

    if-le v4, v8, :cond_2

    .line 576
    iget-object v8, p0, Lcom/google/glass/maps/map/LabelManager;->curLabels:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 577
    iget-object v8, p0, Lcom/google/glass/maps/map/LabelManager;->labelIds:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMapLabel;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 568
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 579
    goto :goto_0

    :cond_3
    move v0, v2

    .line 584
    goto :goto_0
.end method

.method public reset(Lcom/google/glass/maps/map/Camera;Landroid/graphics/Rect;Ljava/util/Iterator;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/google/glass/maps/map/LabelManager;->destroy()V

    .line 118
    const/4 v5, 0x1

    iget v0, p0, Lcom/google/glass/maps/map/LabelManager;->labelingBudgetMs:I

    const/16 v1, 0x64

    .line 119
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v7, v4

    .line 118
    invoke-direct/range {v0 .. v7}, Lcom/google/glass/maps/map/LabelManager;->updateLabels(Lcom/google/glass/maps/map/Camera;Landroid/graphics/Rect;Ljava/util/Iterator;ZZIZ)V

    .line 120
    return-void
.end method

.method public setLabelingBudget(I)V
    .locals 0

    .prologue
    .line 141
    iput p1, p0, Lcom/google/glass/maps/map/LabelManager;->labelingBudgetMs:I

    .line 142
    return-void
.end method

.method public setLocationMarker(Lcom/google/glass/maps/map/MiniMapLocationMarker;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/glass/maps/map/LabelManager;->locationMarker:Lcom/google/glass/maps/map/MiniMapLocationMarker;

    .line 125
    return-void
.end method

.method public updateLabels(Lcom/google/glass/maps/map/Camera;Landroid/graphics/Rect;Ljava/util/Iterator;ZZ)V
    .locals 8

    .prologue
    .line 187
    iget v6, p0, Lcom/google/glass/maps/map/LabelManager;->labelingBudgetMs:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/maps/map/LabelManager;->updateLabels(Lcom/google/glass/maps/map/Camera;Landroid/graphics/Rect;Ljava/util/Iterator;ZZIZ)V

    .line 188
    return-void
.end method

.method updateLocationMarkerBounds(Lcom/google/glass/maps/map/Camera;)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->locationMarker:Lcom/google/glass/maps/map/MiniMapLocationMarker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->locationMarker:Lcom/google/glass/maps/map/MiniMapLocationMarker;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/map/MiniMapLocationMarker;->updateCamera(Lcom/google/glass/maps/map/Camera;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->locationMarker:Lcom/google/glass/maps/map/MiniMapLocationMarker;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMapLocationMarker;->getBound()Lcom/google/android/maps/driveabout/model/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/an;->c()Lcom/google/android/maps/driveabout/model/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->locationMarkerBoundingBox:Lcom/google/android/maps/driveabout/model/am;

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/map/LabelManager;->locationMarkerBoundingBox:Lcom/google/android/maps/driveabout/model/am;

    goto :goto_0
.end method
