.class public Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;
.super Ljava/lang/Object;
.source "CameraSizeUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PictureSmallLargeSizes;
    }
.end annotation


# static fields
.field private static final CLOSE_RATIO_TOLERANCE:D = 0.01

.field private static final DESIRED_RATIO:D = 1.3333333333333333

.field private static supportedPictureSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/lightcycle/util/Size;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private photoSize:Lcom/google/android/apps/lightcycle/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;->supportedPictureSizes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method private static computePictureSize(Landroid/hardware/Camera$Parameters;I)I
    .locals 23
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .param p1, "desiredWidth"    # I

    .prologue
    .line 95
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;->getSupportedPictureSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v16

    .line 97
    .local v16, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/util/Size;>;"
    new-instance v5, Lcom/google/android/apps/lightcycle/util/Size;

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/apps/lightcycle/util/Size;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    move/from16 v20, v0

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/apps/lightcycle/util/Size;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/apps/lightcycle/util/Size;->height:I

    move/from16 v19, v0

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-direct {v5, v0, v1}, Lcom/google/android/apps/lightcycle/util/Size;-><init>(II)V

    .line 98
    .local v5, "closestSize":Lcom/google/android/apps/lightcycle/util/Size;
    const/4 v2, 0x0

    .line 99
    .local v2, "closestIndex":I
    iget v0, v5, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    iget v0, v5, Lcom/google/android/apps/lightcycle/util/Size;->height:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v3, v19, v21

    .line 101
    .local v3, "closestRatio":D
    const-wide v19, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double v19, v3, v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    .line 103
    .local v8, "minRatioDifference":D
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_5

    .line 104
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/apps/lightcycle/util/Size;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    move/from16 v17, v0

    .line 105
    .local v17, "width":I
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/apps/lightcycle/util/Size;

    move-object/from16 v0, v19

    iget v6, v0, Lcom/google/android/apps/lightcycle/util/Size;->height:I

    .line 106
    .local v6, "height":I
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v19, v0

    int-to-double v0, v6

    move-wide/from16 v21, v0

    div-double v10, v19, v21

    .line 107
    .local v10, "ratio":D
    const-wide v19, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double v19, v10, v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    .line 112
    .local v13, "ratioDifference":D
    const-wide v19, 0x3f847ae147ae147bL    # 0.01

    sub-double v19, v8, v19

    cmpg-double v19, v13, v19

    if-gez v19, :cond_2

    const/4 v12, 0x1

    .line 114
    .local v12, "ratioCloser":Z
    :goto_1
    sub-double v19, v13, v8

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    const-wide v21, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v19, v19, v21

    if-gez v19, :cond_3

    const/4 v15, 0x1

    .line 116
    .local v15, "ratiosAlmostSame":Z
    :goto_2
    sub-int v19, v17, p1

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    iget v0, v5, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    move/from16 v20, v0

    sub-int v20, v20, p1

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    const/16 v18, 0x1

    .line 118
    .local v18, "widthCloser":Z
    :goto_3
    if-nez v12, :cond_0

    if-eqz v15, :cond_1

    if-eqz v18, :cond_1

    .line 119
    :cond_0
    move v2, v7

    .line 120
    move-wide v8, v13

    .line 121
    move/from16 v0, v17

    invoke-virtual {v5, v0, v6}, Lcom/google/android/apps/lightcycle/util/Size;->set(II)V

    .line 103
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 112
    .end local v12    # "ratioCloser":Z
    .end local v15    # "ratiosAlmostSame":Z
    .end local v18    # "widthCloser":Z
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 114
    .restart local v12    # "ratioCloser":Z
    :cond_3
    const/4 v15, 0x0

    goto :goto_2

    .line 116
    .restart local v15    # "ratiosAlmostSame":Z
    :cond_4
    const/16 v18, 0x0

    goto :goto_3

    .line 124
    .end local v6    # "height":I
    .end local v10    # "ratio":D
    .end local v12    # "ratioCloser":Z
    .end local v13    # "ratioDifference":D
    .end local v15    # "ratiosAlmostSame":Z
    .end local v17    # "width":I
    :cond_5
    return v2
.end method

.method public static computePictureSizes(Landroid/hardware/Camera$Parameters;II)Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PictureSmallLargeSizes;
    .locals 17
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .param p1, "desiredSmallWidth"    # I
    .param p2, "desiredLargeWidth"    # I

    .prologue
    .line 138
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;->getSupportedPictureSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v8

    .line 141
    .local v8, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/util/Size;>;"
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;->computePictureSize(Landroid/hardware/Camera$Parameters;I)I

    move-result v9

    .line 142
    .local v9, "smallIndex":I
    new-instance v10, Lcom/google/android/apps/lightcycle/util/Size;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/apps/lightcycle/util/Size;

    iget v14, v13, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/apps/lightcycle/util/Size;

    iget v13, v13, Lcom/google/android/apps/lightcycle/util/Size;->height:I

    invoke-direct {v10, v14, v13}, Lcom/google/android/apps/lightcycle/util/Size;-><init>(II)V

    .line 145
    .local v10, "smallSize":Lcom/google/android/apps/lightcycle/util/Size;
    new-instance v5, Lcom/google/android/apps/lightcycle/util/Size;

    invoke-direct {v5, v10}, Lcom/google/android/apps/lightcycle/util/Size;-><init>(Lcom/google/android/apps/lightcycle/util/Size;)V

    .line 146
    .local v5, "largeSize":Lcom/google/android/apps/lightcycle/util/Size;
    iget v13, v5, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    int-to-double v13, v13

    iget v15, v5, Lcom/google/android/apps/lightcycle/util/Size;->height:I

    int-to-double v15, v15

    div-double v0, v13, v15

    .line 150
    .local v0, "desiredRatio":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v4, v13, :cond_3

    .line 151
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/apps/lightcycle/util/Size;

    iget v11, v13, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    .line 152
    .local v11, "width":I
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/apps/lightcycle/util/Size;

    iget v3, v13, Lcom/google/android/apps/lightcycle/util/Size;->height:I

    .line 153
    .local v3, "height":I
    int-to-double v13, v11

    int-to-double v15, v3

    div-double v6, v13, v15

    .line 155
    .local v6, "ratio":D
    const-wide v13, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double v13, v6, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v15, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v13, v13, v15

    if-gez v13, :cond_1

    const/4 v2, 0x1

    .line 157
    .local v2, "hasDesiredRatio":Z
    :goto_1
    sub-int v13, v11, p2

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    iget v14, v5, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    sub-int v14, v14, p2

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    if-ge v13, v14, :cond_2

    const/4 v12, 0x1

    .line 160
    .local v12, "widthCloser":Z
    :goto_2
    if-eqz v2, :cond_0

    if-eqz v12, :cond_0

    .line 161
    invoke-virtual {v5, v11, v3}, Lcom/google/android/apps/lightcycle/util/Size;->set(II)V

    .line 150
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 155
    .end local v2    # "hasDesiredRatio":Z
    .end local v12    # "widthCloser":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 157
    .restart local v2    # "hasDesiredRatio":Z
    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    .line 164
    .end local v2    # "hasDesiredRatio":Z
    .end local v3    # "height":I
    .end local v6    # "ratio":D
    .end local v11    # "width":I
    :cond_3
    new-instance v13, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PictureSmallLargeSizes;

    invoke-direct {v13, v10, v5}, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PictureSmallLargeSizes;-><init>(Lcom/google/android/apps/lightcycle/util/Size;Lcom/google/android/apps/lightcycle/util/Size;)V

    return-object v13
.end method

.method private static getSupportedPictureSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 7
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/lightcycle/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    sget-object v3, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;->supportedPictureSizes:Ljava/util/List;

    if-nez v3, :cond_0

    .line 72
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v2

    .line 74
    .local v2, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;->supportedPictureSizes:Ljava/util/List;

    .line 75
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 76
    .local v1, "size":Landroid/hardware/Camera$Size;
    sget-object v3, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;->supportedPictureSizes:Ljava/util/List;

    new-instance v4, Lcom/google/android/apps/lightcycle/util/Size;

    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v4, v5, v6}, Lcom/google/android/apps/lightcycle/util/Size;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "size":Landroid/hardware/Camera$Size;
    .end local v2    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_0
    sget-object v3, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;->supportedPictureSizes:Ljava/util/List;

    return-object v3
.end method


# virtual methods
.method public getPhotoSize()Lcom/google/android/apps/lightcycle/util/Size;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;->photoSize:Lcom/google/android/apps/lightcycle/util/Size;

    return-object v0
.end method

.method public setPictureWidth(Landroid/hardware/Camera$Parameters;I)V
    .locals 5
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "desiredWidth"    # I

    .prologue
    .line 50
    const/16 v3, 0x4b0

    const/16 v4, 0x640

    invoke-static {p1, v3, v4}, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;->computePictureSizes(Landroid/hardware/Camera$Parameters;II)Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PictureSmallLargeSizes;

    move-result-object v1

    .line 54
    .local v1, "sizes":Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PictureSmallLargeSizes;
    iget-object v3, v1, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PictureSmallLargeSizes;->small:Lcom/google/android/apps/lightcycle/util/Size;

    iget v3, v3, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    sub-int v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, v1, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PictureSmallLargeSizes;->large:Lcom/google/android/apps/lightcycle/util/Size;

    iget v4, v4, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    sub-int v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v3, v1, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PictureSmallLargeSizes;->small:Lcom/google/android/apps/lightcycle/util/Size;

    iget v2, v3, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    .line 58
    .local v2, "width":I
    :goto_0
    invoke-static {p1, v2}, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;->computePictureSize(Landroid/hardware/Camera$Parameters;I)I

    move-result v0

    .line 59
    .local v0, "closestIndex":I
    invoke-static {p1}, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;->getSupportedPictureSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/lightcycle/util/Size;

    iput-object v3, p0, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;->photoSize:Lcom/google/android/apps/lightcycle/util/Size;

    .line 60
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;->photoSize:Lcom/google/android/apps/lightcycle/util/Size;

    iget v3, v3, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;->photoSize:Lcom/google/android/apps/lightcycle/util/Size;

    iget v4, v4, Lcom/google/android/apps/lightcycle/util/Size;->height:I

    invoke-virtual {p1, v3, v4}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 61
    return-void

    .line 54
    .end local v0    # "closestIndex":I
    .end local v2    # "width":I
    :cond_0
    iget-object v3, v1, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PictureSmallLargeSizes;->large:Lcom/google/android/apps/lightcycle/util/Size;

    iget v2, v3, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    goto :goto_0
.end method
