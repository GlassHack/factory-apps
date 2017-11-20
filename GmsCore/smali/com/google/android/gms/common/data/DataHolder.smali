.class public final Lcom/google/android/gms/common/data/DataHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/data/h;

.field private static final l:Lcom/google/android/gms/common/data/g;


# instance fields
.field a:Landroid/os/Bundle;

.field b:[I

.field c:I

.field d:Z

.field private final e:I

.field private final f:[Ljava/lang/String;

.field private final g:[Landroid/database/CursorWindow;

.field private final h:I

.field private final i:Landroid/os/Bundle;

.field private j:Ljava/lang/Object;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/google/android/gms/common/data/h;

    invoke-direct {v0}, Lcom/google/android/gms/common/data/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/h;

    .line 1018
    new-instance v0, Lcom/google/android/gms/common/data/f;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/data/f;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->l:Lcom/google/android/gms/common/data/g;

    return-void
.end method

.method constructor <init>(I[Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->d:Z

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->k:Z

    .line 121
    iput p1, p0, Lcom/google/android/gms/common/data/DataHolder;->e:I

    .line 122
    iput-object p2, p0, Lcom/google/android/gms/common/data/DataHolder;->f:[Ljava/lang/String;

    .line 123
    iput-object p3, p0, Lcom/google/android/gms/common/data/DataHolder;->g:[Landroid/database/CursorWindow;

    .line 124
    iput p4, p0, Lcom/google/android/gms/common/data/DataHolder;->h:I

    .line 125
    iput-object p5, p0, Lcom/google/android/gms/common/data/DataHolder;->i:Landroid/os/Bundle;

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/database/AbstractWindowedCursor;)V
    .locals 4

    .prologue
    .line 182
    invoke-virtual {p1}, Landroid/database/AbstractWindowedCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/common/data/DataHolder;->a(Landroid/database/AbstractWindowedCursor;)[Landroid/database/CursorWindow;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/common/data/DataHolder;-><init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    .line 183
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/data/g;I)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/g;ILandroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/common/data/g;ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p1, Lcom/google/android/gms/common/data/g;->a:[Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/common/data/DataHolder;->a(Lcom/google/android/gms/common/data/g;)[Landroid/database/CursorWindow;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/google/android/gms/common/data/DataHolder;-><init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    .line 195
    return-void
.end method

.method private constructor <init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->d:Z

    .line 112
    iput-boolean v1, p0, Lcom/google/android/gms/common/data/DataHolder;->k:Z

    .line 140
    iput v1, p0, Lcom/google/android/gms/common/data/DataHolder;->e:I

    .line 142
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->f:[Ljava/lang/String;

    .line 143
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->g:[Landroid/database/CursorWindow;

    .line 144
    iput p3, p0, Lcom/google/android/gms/common/data/DataHolder;->h:I

    .line 145
    iput-object p4, p0, Lcom/google/android/gms/common/data/DataHolder;->i:Landroid/os/Bundle;

    .line 147
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->a()V

    .line 152
    return-void
.end method

.method public static a([Ljava/lang/String;)Lcom/google/android/gms/common/data/g;
    .locals 3

    .prologue
    .line 715
    new-instance v0, Lcom/google/android/gms/common/data/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/common/data/g;-><init>([Ljava/lang/String;Ljava/lang/String;B)V

    return-object v0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 459
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No such column: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/common/data/DataHolder;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 462
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_2
    if-ltz p2, :cond_3

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->c:I

    if-lt p2, v0, :cond_4

    .line 465
    :cond_3
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    iget v1, p0, Lcom/google/android/gms/common/data/DataHolder;->c:I

    invoke-direct {v0, p2, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw v0

    .line 467
    :cond_4
    return-void
.end method

.method private static a(Landroid/database/AbstractWindowedCursor;)[Landroid/database/CursorWindow;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 298
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 301
    :try_start_0
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->getCount()I

    move-result v3

    .line 302
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v1

    .line 304
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v4

    if-nez v4, :cond_2

    .line 307
    invoke-virtual {v1}, Landroid/database/CursorWindow;->acquireReference()V

    .line 308
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/database/AbstractWindowedCursor;->setWindow(Landroid/database/CursorWindow;)V

    .line 309
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-virtual {v1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v0

    move v1, v0

    .line 315
    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Landroid/database/AbstractWindowedCursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 321
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/database/AbstractWindowedCursor;->setWindow(Landroid/database/CursorWindow;)V

    .line 327
    :goto_1
    invoke-virtual {v0}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v1

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 332
    goto :goto_0

    .line 323
    :cond_0
    new-instance v0, Landroid/database/CursorWindow;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Landroid/database/CursorWindow;-><init>(Z)V

    .line 324
    invoke-virtual {v0, v1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 325
    invoke-virtual {p0, v1, v0}, Landroid/database/AbstractWindowedCursor;->fillWindow(ILandroid/database/CursorWindow;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 334
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->close()V

    throw v0

    :cond_1
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->close()V

    .line 336
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/database/CursorWindow;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;

    return-object v0

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method private static a(Lcom/google/android/gms/common/data/g;)[Landroid/database/CursorWindow;
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 348
    iget-object v0, p0, Lcom/google/android/gms/common/data/g;->a:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 349
    new-array v0, v3, [Landroid/database/CursorWindow;

    .line 446
    :goto_0
    return-object v0

    .line 354
    :cond_0
    iget-object v9, p0, Lcom/google/android/gms/common/data/g;->b:Ljava/util/ArrayList;

    .line 359
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 363
    new-instance v4, Landroid/database/CursorWindow;

    invoke-direct {v4, v3}, Landroid/database/CursorWindow;-><init>(Z)V

    .line 364
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 365
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v0, p0, Lcom/google/android/gms/common/data/g;->a:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {v4, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    move v2, v3

    move v0, v3

    .line 371
    :goto_1
    if-ge v2, v10, :cond_e

    .line 373
    :try_start_0
    invoke-virtual {v4}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v1

    if-nez v1, :cond_f

    .line 375
    const-string v0, "DataHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Allocating additional cursor window for large data set (row "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    new-instance v4, Landroid/database/CursorWindow;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Landroid/database/CursorWindow;-><init>(Z)V

    .line 378
    invoke-virtual {v4, v2}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 379
    iget-object v0, p0, Lcom/google/android/gms/common/data/g;->a:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {v4, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 380
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    invoke-virtual {v4}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 384
    const-string v0, "DataHolder"

    const-string v1, "Unable to allocate row to hold data."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 386
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/database/CursorWindow;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;

    goto :goto_0

    :cond_1
    move v8, v3

    .line 395
    :goto_2
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 396
    const/4 v1, 0x1

    move v5, v3

    .line 397
    :goto_3
    iget-object v6, p0, Lcom/google/android/gms/common/data/g;->a:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_b

    if-eqz v1, :cond_b

    .line 399
    iget-object v1, p0, Lcom/google/android/gms/common/data/g;->a:[Ljava/lang/String;

    aget-object v6, v1, v5

    .line 400
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 401
    if-nez v1, :cond_2

    .line 402
    invoke-virtual {v4, v8, v5}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v1

    .line 398
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 403
    :cond_2
    instance-of v7, v1, Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 404
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1, v8, v5}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v1

    goto :goto_4

    .line 405
    :cond_3
    instance-of v7, v1, Ljava/lang/Long;

    if-eqz v7, :cond_4

    .line 406
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7, v8, v5}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v1

    goto :goto_4

    .line 407
    :cond_4
    instance-of v7, v1, Ljava/lang/Integer;

    if-eqz v7, :cond_5

    .line 408
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v4, v6, v7, v8, v5}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v1

    goto :goto_4

    .line 409
    :cond_5
    instance-of v7, v1, Ljava/lang/Boolean;

    if-eqz v7, :cond_7

    .line 410
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 411
    if-eqz v1, :cond_6

    const-wide/16 v6, 0x1

    :goto_5
    invoke-virtual {v4, v6, v7, v8, v5}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v1

    goto :goto_4

    :cond_6
    const-wide/16 v6, 0x0

    goto :goto_5

    .line 412
    :cond_7
    instance-of v7, v1, [B

    if-eqz v7, :cond_8

    .line 413
    check-cast v1, [B

    invoke-virtual {v4, v1, v8, v5}, Landroid/database/CursorWindow;->putBlob([BII)Z

    move-result v1

    goto :goto_4

    .line 414
    :cond_8
    instance-of v7, v1, Ljava/lang/Double;

    if-eqz v7, :cond_9

    .line 415
    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7, v8, v5}, Landroid/database/CursorWindow;->putDouble(DII)Z

    move-result v1

    goto :goto_4

    .line 416
    :cond_9
    instance-of v7, v1, Ljava/lang/Float;

    if-eqz v7, :cond_a

    .line 417
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v6, v1

    invoke-virtual {v4, v6, v7, v8, v5}, Landroid/database/CursorWindow;->putDouble(DII)Z

    move-result v1

    goto :goto_4

    .line 419
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported object for column "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 440
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_6
    if-ge v3, v2, :cond_d

    .line 441
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    .line 440
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 423
    :cond_b
    if-nez v1, :cond_c

    .line 426
    :try_start_1
    const-string v0, "DataHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t populate window data for row "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " - allocating new window."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {v4}, Landroid/database/CursorWindow;->freeLastRow()V

    .line 429
    new-instance v1, Landroid/database/CursorWindow;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Landroid/database/CursorWindow;-><init>(Z)V

    .line 430
    iget-object v0, p0, Lcom/google/android/gms/common/data/g;->a:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {v1, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 431
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 433
    add-int/lit8 v0, v2, -0x1

    move-object v2, v1

    move v1, v3

    .line 371
    :goto_7
    add-int/lit8 v0, v0, 0x1

    move-object v4, v2

    move v2, v0

    move v0, v1

    goto/16 :goto_1

    .line 435
    :cond_c
    add-int/lit8 v0, v8, 0x1

    move v1, v0

    move v0, v2

    move-object v2, v4

    goto :goto_7

    .line 443
    :cond_d
    throw v1

    .line 446
    :cond_e
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/database/CursorWindow;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;

    goto/16 :goto_0

    :cond_f
    move v8, v0

    goto/16 :goto_2
.end method

.method public static b(I)Lcom/google/android/gms/common/data/DataHolder;
    .locals 3

    .prologue
    .line 736
    new-instance v0, Lcom/google/android/gms/common/data/DataHolder;

    sget-object v1, Lcom/google/android/gms/common/data/DataHolder;->l:Lcom/google/android/gms/common/data/g;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/g;ILandroid/os/Bundle;)V

    return-object v0
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 669
    monitor-enter p0

    .line 670
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->d:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 671
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 651
    if-ltz p1, :cond_2

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->c:I

    if-ge p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->a(Z)V

    .line 653
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->b:[I

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->b:[I

    aget v0, v0, v1

    if-ge p1, v0, :cond_3

    .line 656
    add-int/lit8 v1, v1, -0x1

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->b:[I

    array-length v0, v0

    if-ne v1, v0, :cond_1

    .line 663
    add-int/lit8 v1, v1, -0x1

    .line 665
    :cond_1
    return v1

    :cond_2
    move v0, v1

    .line 651
    goto :goto_0

    .line 653
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;II)I
    .locals 2

    .prologue
    .line 507
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->a(Ljava/lang/String;I)V

    .line 508
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->g:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->a:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getInt(II)I

    move-result v0

    return v0
.end method

.method public final a()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 215
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->a:Landroid/os/Bundle;

    move v0, v1

    .line 216
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->f:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 217
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->a:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->f:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->g:[Landroid/database/CursorWindow;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->b:[I

    move v0, v1

    .line 223
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->g:[Landroid/database/CursorWindow;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 224
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->b:[I

    aput v0, v2, v1

    .line 229
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->g:[Landroid/database/CursorWindow;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v2

    .line 230
    sub-int v2, v0, v2

    .line 231
    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->g:[Landroid/database/CursorWindow;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v3

    sub-int v2, v3, v2

    add-int/2addr v0, v2

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 233
    :cond_1
    iput v0, p0, Lcom/google/android/gms/common/data/DataHolder;->c:I

    .line 234
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/gms/common/data/DataHolder;->j:Ljava/lang/Object;

    .line 161
    return-void
.end method

.method final b()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->e:I

    return v0
.end method

.method public final b(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 522
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->a(Ljava/lang/String;I)V

    .line 523
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->g:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->a:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;II)[B
    .locals 2

    .prologue
    .line 583
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->a(Ljava/lang/String;I)V

    .line 584
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->g:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->a:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getBlob(II)[B

    move-result-object v0

    return-object v0
.end method

.method final c()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->f:[Ljava/lang/String;

    return-object v0
.end method

.method final d()[Landroid/database/CursorWindow;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->g:[Landroid/database/CursorWindow;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->h:I

    return v0
.end method

.method public final f()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->i:Landroid/os/Bundle;

    return-object v0
.end method

.method protected final finalize()V
    .locals 4

    .prologue
    .line 691
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->g:[Landroid/database/CursorWindow;

    array-length v0, v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/data/DataHolder;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->j:Ljava/lang/Object;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "internal object: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 697
    :goto_0
    const-string v1, "DataBuffer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 704
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 705
    return-void

    .line 692
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->j:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 704
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->c:I

    return v0
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 678
    monitor-enter p0

    .line 679
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->d:Z

    if-nez v0, :cond_0

    .line 680
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->d:Z

    .line 681
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->g:[Landroid/database/CursorWindow;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 682
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->g:[Landroid/database/CursorWindow;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/database/CursorWindow;->close()V

    .line 681
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 685
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 243
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/data/h;->a(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcel;I)V

    .line 244
    return-void
.end method
