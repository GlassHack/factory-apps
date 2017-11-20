.class final Lcom/google/android/location/collectionlib/ak;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/google/android/location/p/a/c;

.field private final b:Lcom/google/android/location/collectionlib/bv;

.field private final c:Landroid/os/Handler;

.field private final d:I

.field private e:Z

.field private final f:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/location/collectionlib/bv;Landroid/os/Handler;ILcom/google/android/location/p/a/c;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/ak;->e:Z

    .line 40
    new-instance v0, Lcom/google/android/location/collectionlib/al;

    invoke-direct {v0, p0}, Lcom/google/android/location/collectionlib/al;-><init>(Lcom/google/android/location/collectionlib/ak;)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/ak;->f:Ljava/lang/Runnable;

    .line 53
    iput-object p1, p0, Lcom/google/android/location/collectionlib/ak;->b:Lcom/google/android/location/collectionlib/bv;

    .line 54
    iput-object p2, p0, Lcom/google/android/location/collectionlib/ak;->c:Landroid/os/Handler;

    .line 55
    iput p3, p0, Lcom/google/android/location/collectionlib/ak;->d:I

    .line 56
    invoke-static {p4}, Lcom/google/android/location/collectionlib/db;->a(Lcom/google/android/location/p/a/c;)Lcom/google/android/location/p/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/ak;->a:Lcom/google/android/location/p/a/c;

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/collectionlib/ak;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/ak;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/location/collectionlib/ak;)Lcom/google/android/location/collectionlib/bv;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ak;->b:Lcom/google/android/location/collectionlib/bv;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/location/collectionlib/ak;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/google/android/location/collectionlib/ak;->d:I

    return v0
.end method

.method static synthetic d(Lcom/google/android/location/collectionlib/ak;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ak;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/location/collectionlib/ak;)Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/ak;->e:Z

    return v0
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ak;->f:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/location/collectionlib/ak;->post(Ljava/lang/Runnable;)Z

    .line 76
    return-void
.end method

.method final a(FFFF)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ak;->b:Lcom/google/android/location/collectionlib/bv;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/location/collectionlib/bv;->a(FFFF)V

    .line 170
    return-void
.end method

.method final a(IFFFFFFIJJ)V
    .locals 13

    .prologue
    .line 143
    const/16 v0, 0xe

    if-ne p1, v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ak;->b:Lcom/google/android/location/collectionlib/bv;

    move v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-wide/from16 v8, p9

    move-wide/from16 v10, p11

    invoke-interface/range {v0 .. v11}, Lcom/google/android/location/collectionlib/bv;->a(FFFFFFIJJ)V

    .line 147
    :cond_0
    return-void
.end method

.method final a(IFFFIJJ)V
    .locals 10

    .prologue
    .line 112
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 113
    iget-object v1, p0, Lcom/google/android/location/collectionlib/ak;->b:Lcom/google/android/location/collectionlib/bv;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-interface/range {v1 .. v9}, Lcom/google/android/location/collectionlib/bv;->a(FFFIJJ)V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 116
    iget-object v1, p0, Lcom/google/android/location/collectionlib/ak;->b:Lcom/google/android/location/collectionlib/bv;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-interface/range {v1 .. v9}, Lcom/google/android/location/collectionlib/bv;->b(FFFIJJ)V

    goto :goto_0

    .line 118
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 119
    iget-object v1, p0, Lcom/google/android/location/collectionlib/ak;->b:Lcom/google/android/location/collectionlib/bv;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-interface/range {v1 .. v9}, Lcom/google/android/location/collectionlib/bv;->c(FFFIJJ)V

    goto :goto_0

    .line 121
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 122
    iget-object v1, p0, Lcom/google/android/location/collectionlib/ak;->b:Lcom/google/android/location/collectionlib/bv;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-interface/range {v1 .. v9}, Lcom/google/android/location/collectionlib/bv;->d(FFFIJJ)V

    goto :goto_0

    .line 124
    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 125
    iget-object v1, p0, Lcom/google/android/location/collectionlib/ak;->b:Lcom/google/android/location/collectionlib/bv;

    move v2, p2

    move v3, p5

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    invoke-interface/range {v1 .. v7}, Lcom/google/android/location/collectionlib/bv;->a(FIJJ)V

    goto :goto_0

    .line 126
    :cond_5
    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    .line 127
    iget-object v1, p0, Lcom/google/android/location/collectionlib/ak;->b:Lcom/google/android/location/collectionlib/bv;

    move v2, p2

    move v3, p5

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    invoke-interface/range {v1 .. v7}, Lcom/google/android/location/collectionlib/bv;->b(FIJJ)V

    goto :goto_0

    .line 128
    :cond_6
    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    .line 129
    iget-object v1, p0, Lcom/google/android/location/collectionlib/ak;->b:Lcom/google/android/location/collectionlib/bv;

    move v2, p2

    move v3, p5

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    invoke-interface/range {v1 .. v7}, Lcom/google/android/location/collectionlib/bv;->c(FIJJ)V

    goto :goto_0

    .line 132
    :cond_7
    const/16 v0, 0x15

    if-ne p1, v0, :cond_8

    .line 133
    iget-object v1, p0, Lcom/google/android/location/collectionlib/ak;->b:Lcom/google/android/location/collectionlib/bv;

    move v2, p2

    move v3, p5

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    invoke-interface/range {v1 .. v7}, Lcom/google/android/location/collectionlib/bv;->d(FIJJ)V

    goto :goto_0

    .line 135
    :cond_8
    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/google/android/location/collectionlib/ak;->b:Lcom/google/android/location/collectionlib/bv;

    move v2, p2

    move v3, p5

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    invoke-interface/range {v1 .. v7}, Lcom/google/android/location/collectionlib/bv;->e(FIJJ)V

    goto/16 :goto_0
.end method

.method final a(ILjava/lang/String;Landroid/telephony/CellLocation;ILjava/util/List;J)V
    .locals 8

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ak;->b:Lcom/google/android/location/collectionlib/bv;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-interface/range {v0 .. v7}, Lcom/google/android/location/collectionlib/bv;->a(ILjava/lang/String;Landroid/telephony/CellLocation;ILjava/util/List;J)V

    .line 106
    return-void
.end method

.method public final a(Landroid/location/GpsStatus;J)V
    .locals 2

    .prologue
    .line 164
    invoke-static {p1}, Lcom/google/android/location/collectionlib/db;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ak;->b:Lcom/google/android/location/collectionlib/bv;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/location/collectionlib/bv;->a(Landroid/location/GpsStatus;J)V

    .line 166
    return-void
.end method

.method final a(Landroid/location/Location;J)V
    .locals 2

    .prologue
    .line 159
    invoke-static {p1}, Lcom/google/android/location/collectionlib/db;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ak;->b:Lcom/google/android/location/collectionlib/bv;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/location/collectionlib/bv;->a(Landroid/location/Location;J)Z

    .line 161
    return-void
.end method

.method final a(Lcom/google/android/location/collectionlib/bz;)V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/google/android/location/collectionlib/am;

    invoke-direct {v0, p0, p1}, Lcom/google/android/location/collectionlib/am;-><init>(Lcom/google/android/location/collectionlib/ak;Lcom/google/android/location/collectionlib/bz;)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/collectionlib/ak;->post(Ljava/lang/Runnable;)Z

    .line 68
    return-void
.end method

.method final a(Ljava/util/List;J)V
    .locals 2

    .prologue
    .line 86
    invoke-static {p1}, Lcom/google/android/location/collectionlib/db;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v0, Lcom/google/android/location/collectionlib/an;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/location/collectionlib/an;-><init>(Lcom/google/android/location/collectionlib/ak;Ljava/util/List;J)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/collectionlib/ak;->post(Ljava/lang/Runnable;)Z

    .line 93
    return-void
.end method

.method final a([D[D[D[D[DJ)V
    .locals 8

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ak;->b:Lcom/google/android/location/collectionlib/bv;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-interface/range {v0 .. v7}, Lcom/google/android/location/collectionlib/bv;->a([D[D[D[D[DJ)V

    .line 156
    return-void
.end method
