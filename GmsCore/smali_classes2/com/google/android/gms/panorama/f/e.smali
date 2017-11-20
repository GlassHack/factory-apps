.class public final Lcom/google/android/gms/panorama/f/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/util/Calendar;

.field public final d:Ljava/util/Calendar;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:F

.field public final o:F

.field public final p:F

.field public final q:Z


# direct methods
.method private constructor <init>(II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput p1, p0, Lcom/google/android/gms/panorama/f/e;->a:I

    .line 138
    iput p2, p0, Lcom/google/android/gms/panorama/f/e;->b:I

    .line 139
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/panorama/f/e;->c:Ljava/util/Calendar;

    .line 140
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/panorama/f/e;->d:Ljava/util/Calendar;

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/panorama/f/e;->e:I

    .line 142
    const-string v0, "equirectangular"

    iput-object v0, p0, Lcom/google/android/gms/panorama/f/e;->f:Ljava/lang/String;

    .line 143
    iput-boolean v3, p0, Lcom/google/android/gms/panorama/f/e;->g:Z

    .line 144
    iput p1, p0, Lcom/google/android/gms/panorama/f/e;->h:I

    .line 145
    iput p2, p0, Lcom/google/android/gms/panorama/f/e;->i:I

    .line 146
    iput v2, p0, Lcom/google/android/gms/panorama/f/e;->l:I

    .line 147
    iput v2, p0, Lcom/google/android/gms/panorama/f/e;->m:I

    .line 148
    iput p1, p0, Lcom/google/android/gms/panorama/f/e;->j:I

    .line 149
    iput p2, p0, Lcom/google/android/gms/panorama/f/e;->k:I

    .line 150
    iput v1, p0, Lcom/google/android/gms/panorama/f/e;->n:F

    .line 151
    iput v1, p0, Lcom/google/android/gms/panorama/f/e;->o:F

    .line 152
    iput v1, p0, Lcom/google/android/gms/panorama/f/e;->p:F

    .line 153
    iput-boolean v3, p0, Lcom/google/android/gms/panorama/f/e;->q:Z

    .line 154
    return-void
.end method

.method private constructor <init>(IILjava/util/Calendar;Ljava/util/Calendar;ILjava/lang/String;ZIIIIIIFFF)V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p1, p0, Lcom/google/android/gms/panorama/f/e;->a:I

    .line 106
    iput p2, p0, Lcom/google/android/gms/panorama/f/e;->b:I

    .line 107
    iput-object p3, p0, Lcom/google/android/gms/panorama/f/e;->c:Ljava/util/Calendar;

    .line 108
    iput-object p4, p0, Lcom/google/android/gms/panorama/f/e;->d:Ljava/util/Calendar;

    .line 109
    iput p5, p0, Lcom/google/android/gms/panorama/f/e;->e:I

    .line 110
    iput-object p6, p0, Lcom/google/android/gms/panorama/f/e;->f:Ljava/lang/String;

    .line 111
    iput-boolean p7, p0, Lcom/google/android/gms/panorama/f/e;->g:Z

    .line 112
    iput p8, p0, Lcom/google/android/gms/panorama/f/e;->h:I

    .line 113
    iput p9, p0, Lcom/google/android/gms/panorama/f/e;->i:I

    .line 114
    iput p10, p0, Lcom/google/android/gms/panorama/f/e;->j:I

    .line 115
    iput p11, p0, Lcom/google/android/gms/panorama/f/e;->k:I

    .line 116
    iput p12, p0, Lcom/google/android/gms/panorama/f/e;->l:I

    .line 117
    iput p13, p0, Lcom/google/android/gms/panorama/f/e;->m:I

    .line 118
    move/from16 v0, p14

    iput v0, p0, Lcom/google/android/gms/panorama/f/e;->n:F

    .line 119
    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/gms/panorama/f/e;->o:F

    .line 120
    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/gms/panorama/f/e;->p:F

    .line 121
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/panorama/f/e;->q:Z

    .line 122
    return-void
.end method

.method private static a(Lcom/a/a/c;Ljava/lang/String;)D
    .locals 2

    .prologue
    .line 304
    const-string v0, "http://ns.google.com/photos/1.0/panorama/"

    invoke-interface {p0, v0, p1}, Lcom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    const-string v0, "http://ns.google.com/photos/1.0/panorama/"

    invoke-interface {p0, v0, p1}, Lcom/a/a/c;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 307
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/google/android/gms/panorama/f/d;)Lcom/google/android/gms/panorama/f/e;
    .locals 25

    .prologue
    .line 183
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/panorama/f/d;->a()Ljava/io/InputStream;

    move-result-object v6

    .line 184
    if-nez v6, :cond_0

    .line 185
    const/4 v2, 0x0

    .line 290
    :goto_0
    return-object v2

    .line 188
    :cond_0
    const/4 v5, 0x0

    .line 189
    const/4 v4, 0x0

    .line 190
    const/4 v3, 0x0

    .line 191
    const/4 v8, 0x0

    .line 192
    const/4 v9, 0x0

    .line 193
    const/4 v10, 0x0

    .line 194
    const/4 v11, 0x0

    .line 195
    const/4 v12, 0x0

    .line 196
    const/4 v13, 0x0

    .line 197
    const/4 v14, 0x0

    .line 198
    const/4 v15, 0x0

    .line 199
    const/16 v16, 0x0

    .line 200
    const/16 v17, 0x0

    .line 201
    const/16 v18, 0x0

    .line 202
    const/4 v2, 0x0

    .line 205
    invoke-static {v6}, Lcom/google/android/gms/panorama/h/a;->a(Ljava/io/InputStream;)Lcom/a/a/c;

    move-result-object v6

    .line 207
    if-eqz v6, :cond_c

    .line 209
    :try_start_0
    const-string v7, "FirstPhotoDate"

    invoke-static {v6, v7}, Lcom/google/android/gms/panorama/f/e;->c(Lcom/a/a/c;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v5

    .line 210
    const-string v7, "LastPhotoDate"

    invoke-static {v6, v7}, Lcom/google/android/gms/panorama/f/e;->c(Lcom/a/a/c;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v4

    .line 211
    const-string v7, "SourcePhotosCount"

    invoke-static {v6, v7}, Lcom/google/android/gms/panorama/f/e;->b(Lcom/a/a/c;Ljava/lang/String;)I

    move-result v3

    .line 212
    const-string v7, "ProjectionType"

    const-string v19, "http://ns.google.com/photos/1.0/panorama/"

    move-object/from16 v0, v19

    invoke-interface {v6, v0, v7}, Lcom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    const-string v19, "http://ns.google.com/photos/1.0/panorama/"

    move-object/from16 v0, v19

    invoke-interface {v6, v0, v7}, Lcom/a/a/c;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 213
    :goto_1
    const-string v7, "UsePanoramaViewer"

    const-string v19, "http://ns.google.com/photos/1.0/panorama/"

    move-object/from16 v0, v19

    invoke-interface {v6, v0, v7}, Lcom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    const-string v19, "http://ns.google.com/photos/1.0/panorama/"

    move-object/from16 v0, v19

    invoke-interface {v6, v0, v7}, Lcom/a/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 215
    :goto_2
    const-string v7, "CroppedAreaImageWidthPixels"

    invoke-static {v6, v7}, Lcom/google/android/gms/panorama/f/e;->b(Lcom/a/a/c;Ljava/lang/String;)I

    move-result v10

    .line 217
    const-string v7, "CroppedAreaImageHeightPixels"

    invoke-static {v6, v7}, Lcom/google/android/gms/panorama/f/e;->b(Lcom/a/a/c;Ljava/lang/String;)I

    move-result v11

    .line 219
    const-string v7, "FullPanoWidthPixels"

    invoke-static {v6, v7}, Lcom/google/android/gms/panorama/f/e;->b(Lcom/a/a/c;Ljava/lang/String;)I

    move-result v12

    .line 221
    const-string v7, "FullPanoHeightPixels"

    invoke-static {v6, v7}, Lcom/google/android/gms/panorama/f/e;->b(Lcom/a/a/c;Ljava/lang/String;)I

    move-result v13

    .line 223
    const-string v7, "CroppedAreaLeftPixels"

    invoke-static {v6, v7}, Lcom/google/android/gms/panorama/f/e;->b(Lcom/a/a/c;Ljava/lang/String;)I

    move-result v14

    .line 224
    const-string v7, "CroppedAreaTopPixels"

    invoke-static {v6, v7}, Lcom/google/android/gms/panorama/f/e;->b(Lcom/a/a/c;Ljava/lang/String;)I

    move-result v15

    .line 225
    const-string v7, "PoseHeadingDegrees"

    invoke-static {v6, v7}, Lcom/google/android/gms/panorama/f/e;->a(Lcom/a/a/c;Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v16, v0

    .line 226
    const-string v7, "PosePitchDegrees"

    invoke-static {v6, v7}, Lcom/google/android/gms/panorama/f/e;->a(Lcom/a/a/c;Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v17, v0

    .line 227
    const-string v7, "PoseRollDegrees"

    invoke-static {v6, v7}, Lcom/google/android/gms/panorama/f/e;->a(Lcom/a/a/c;Ljava/lang/String;)D
    :try_end_0
    .catch Lcom/a/a/b; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    double-to-float v0, v6

    move/from16 v18, v0

    .line 228
    if-lez v10, :cond_4

    if-lez v11, :cond_4

    if-lez v12, :cond_4

    if-lez v13, :cond_4

    const/4 v2, 0x1

    :goto_3
    move/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    .line 238
    :goto_4
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 239
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 240
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/panorama/f/d;->a()Ljava/io/InputStream;

    move-result-object v4

    .line 242
    const/4 v5, 0x0

    :try_start_1
    invoke-static {v4, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 250
    :cond_1
    :goto_5
    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v23, v0

    .line 251
    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v24, v0

    .line 252
    mul-int/lit8 v3, v24, 0x2

    move/from16 v0, v23

    if-ne v3, v0, :cond_6

    const/4 v3, 0x1

    move v4, v3

    .line 253
    :goto_6
    const/4 v3, 0x0

    .line 257
    if-nez v2, :cond_b

    .line 258
    if-eqz v4, :cond_7

    .line 260
    const/4 v2, 0x1

    move/from16 v22, v2

    .line 269
    :goto_7
    move/from16 v0, v23

    int-to-double v2, v0

    move/from16 v0, v24

    int-to-double v4, v0

    div-double/2addr v2, v4

    .line 270
    int-to-double v4, v10

    int-to-double v6, v11

    div-double/2addr v4, v6

    .line 272
    if-nez v22, :cond_8

    const-wide v6, 0x3fa999999999999aL    # 0.05

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/panorama/f/e;->a(DDD)Z

    move-result v6

    if-nez v6, :cond_8

    .line 273
    const-string v6, "PanoMetadata"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Pano metadata does not match file dimensions. Image aspect ratio: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Metadata aspect ratio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 212
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 213
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 228
    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :catch_0
    move-exception v6

    move/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    goto :goto_4

    .line 244
    :catchall_0
    move-exception v2

    .line 245
    if-eqz v4, :cond_5

    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 248
    :cond_5
    :goto_8
    throw v2

    .line 252
    :cond_6
    const/4 v3, 0x0

    move v4, v3

    goto :goto_6

    .line 263
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 280
    :cond_8
    if-nez v22, :cond_9

    int-to-double v2, v12

    int-to-double v4, v13

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide v6, 0x3fb999999999999aL    # 0.1

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/panorama/f/e;->a(DDD)Z

    move-result v2

    if-nez v2, :cond_9

    .line 281
    const-string v2, "PanoMetadata"

    const-string v3, "Pano metadata invalid: Full pano dimension not 2:1."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 285
    :cond_9
    if-eqz v22, :cond_a

    .line 287
    new-instance v2, Lcom/google/android/gms/panorama/f/e;

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/panorama/f/e;-><init>(II)V

    goto/16 :goto_0

    .line 290
    :cond_a
    new-instance v2, Lcom/google/android/gms/panorama/f/e;

    move/from16 v3, v23

    move/from16 v4, v24

    move-object/from16 v5, v21

    move-object/from16 v6, v20

    move/from16 v7, v19

    invoke-direct/range {v2 .. v18}, Lcom/google/android/gms/panorama/f/e;-><init>(IILjava/util/Calendar;Ljava/util/Calendar;ILjava/lang/String;ZIIIIIIFFF)V

    goto/16 :goto_0

    .line 249
    :catch_1
    move-exception v4

    goto/16 :goto_5

    :catch_2
    move-exception v3

    goto :goto_8

    :cond_b
    move/from16 v22, v3

    goto/16 :goto_7

    :cond_c
    move/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    goto/16 :goto_4
.end method

.method private static a(DDD)Z
    .locals 2

    .prologue
    .line 345
    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, p4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/a/a/c;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 312
    const-string v0, "http://ns.google.com/photos/1.0/panorama/"

    invoke-interface {p0, v0, p1}, Lcom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    const-string v0, "http://ns.google.com/photos/1.0/panorama/"

    invoke-interface {p0, v0, p1}, Lcom/a/a/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 315
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Lcom/a/a/c;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 337
    const-string v0, "http://ns.google.com/photos/1.0/panorama/"

    invoke-interface {p0, v0, p1}, Lcom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const-string v0, "http://ns.google.com/photos/1.0/panorama/"

    invoke-interface {p0, v0, p1}, Lcom/a/a/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 340
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
