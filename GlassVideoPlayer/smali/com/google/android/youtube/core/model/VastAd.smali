.class public Lcom/google/android/youtube/core/model/VastAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final a:Lcom/google/android/youtube/core/model/VastAd;


# instance fields
.field public final A:Z

.field public final B:Z

.field public final C:J

.field public final D:Z

.field public final b:Ljava/util/List;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:I

.field public final i:Ljava/util/List;

.field public final j:Landroid/net/Uri;

.field public final k:Ljava/util/List;

.field public final l:Ljava/util/List;

.field public final m:Ljava/util/List;

.field public final n:Ljava/util/List;

.field public final o:Ljava/util/List;

.field public final p:Ljava/util/List;

.field public final q:Ljava/util/List;

.field public final r:Ljava/util/List;

.field public final s:Ljava/util/List;

.field public final t:Ljava/util/List;

.field public final u:Ljava/util/List;

.field public final v:Ljava/util/List;

.field public final w:Ljava/util/List;

.field public final x:Ljava/util/List;

.field public final y:Ljava/util/List;

.field public final z:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/youtube/core/model/VastAd;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/VastAd;-><init>()V

    sput-object v0, Lcom/google/android/youtube/core/model/VastAd;->a:Lcom/google/android/youtube/core/model/VastAd;

    .line 748
    new-instance v0, Lcom/google/android/youtube/core/model/n;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/n;-><init>()V

    sput-object v0, Lcom/google/android/youtube/core/model/VastAd;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->b:Ljava/util/List;

    .line 249
    iput-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->c:Ljava/lang/String;

    .line 250
    iput-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->d:Ljava/lang/String;

    .line 251
    iput-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->e:Ljava/lang/String;

    .line 252
    iput-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->f:Ljava/lang/String;

    .line 253
    iput-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->g:Ljava/lang/String;

    .line 254
    iput v2, p0, Lcom/google/android/youtube/core/model/VastAd;->h:I

    .line 255
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->i:Ljava/util/List;

    .line 256
    iput-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->j:Landroid/net/Uri;

    .line 257
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->k:Ljava/util/List;

    .line 258
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->l:Ljava/util/List;

    .line 259
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->m:Ljava/util/List;

    .line 260
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->n:Ljava/util/List;

    .line 261
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->o:Ljava/util/List;

    .line 262
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->p:Ljava/util/List;

    .line 263
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->q:Ljava/util/List;

    .line 264
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->r:Ljava/util/List;

    .line 265
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->s:Ljava/util/List;

    .line 266
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->t:Ljava/util/List;

    .line 267
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->u:Ljava/util/List;

    .line 268
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->v:Ljava/util/List;

    .line 269
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->w:Ljava/util/List;

    .line 270
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->x:Ljava/util/List;

    .line 271
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->y:Ljava/util/List;

    .line 272
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->z:Ljava/util/List;

    .line 273
    iput-boolean v2, p0, Lcom/google/android/youtube/core/model/VastAd;->A:Z

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/VastAd;->B:Z

    .line 275
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/youtube/core/model/VastAd;->C:J

    .line 276
    iput-boolean v2, p0, Lcom/google/android/youtube/core/model/VastAd;->D:Z

    .line 277
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 32

    .prologue
    .line 806
    invoke-static/range {p1 .. p1}, Lcom/google/android/youtube/core/model/VastAd;->a(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    .line 807
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 808
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 809
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 810
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 811
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 812
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 813
    invoke-static/range {p1 .. p1}, Lcom/google/android/youtube/core/model/VastAd;->b(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v9

    .line 814
    const-class v1, Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 815
    invoke-static/range {p1 .. p1}, Lcom/google/android/youtube/core/model/VastAd;->a(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v11

    .line 816
    invoke-static/range {p1 .. p1}, Lcom/google/android/youtube/core/model/VastAd;->a(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v12

    .line 817
    invoke-static/range {p1 .. p1}, Lcom/google/android/youtube/core/model/VastAd;->a(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v13

    .line 818
    invoke-static/range {p1 .. p1}, Lcom/google/android/youtube/core/model/VastAd;->a(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v14

    .line 819
    invoke-static/range {p1 .. p1}, Lcom/google/android/youtube/core/model/VastAd;->a(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v15

    .line 820
    invoke-static/range {p1 .. p1}, Lcom/google/android/youtube/core/model/VastAd;->a(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v16

    .line 821
    invoke-static/range {p1 .. p1}, Lcom/google/android/youtube/core/model/VastAd;->a(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v17

    .line 822
    invoke-static/range {p1 .. p1}, Lcom/google/android/youtube/core/model/VastAd;->a(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v18

    .line 823
    invoke-static/range {p1 .. p1}, Lcom/google/android/youtube/core/model/VastAd;->a(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v19

    .line 824
    invoke-static/range {p1 .. p1}, Lcom/google/android/youtube/core/model/VastAd;->a(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v20

    .line 825
    invoke-static/range {p1 .. p1}, Lcom/google/android/youtube/core/model/VastAd;->a(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v21

    .line 826
    invoke-static/range {p1 .. p1}, Lcom/google/android/youtube/core/model/VastAd;->a(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v22

    .line 827
    invoke-static/range {p1 .. p1}, Lcom/google/android/youtube/core/model/VastAd;->a(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v23

    .line 828
    invoke-static/range {p1 .. p1}, Lcom/google/android/youtube/core/model/VastAd;->a(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v24

    .line 829
    invoke-static/range {p1 .. p1}, Lcom/google/android/youtube/core/model/VastAd;->a(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v25

    .line 830
    invoke-static/range {p1 .. p1}, Lcom/google/android/youtube/core/model/VastAd;->a(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v26

    .line 831
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v1, v0, :cond_0

    const/16 v27, 0x1

    .line 832
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v1, v0, :cond_1

    const/16 v28, 0x1

    .line 833
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v29

    .line 834
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v1, v0, :cond_2

    const/16 v31, 0x1

    :goto_2
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v31}, Lcom/google/android/youtube/core/model/VastAd;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroid/net/Uri;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZZJZ)V

    .line 835
    return-void

    .line 831
    :cond_0
    const/16 v27, 0x0

    goto :goto_0

    .line 832
    :cond_1
    const/16 v28, 0x0

    goto :goto_1

    .line 834
    :cond_2
    const/16 v31, 0x0

    goto :goto_2
.end method

.method private constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroid/net/Uri;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZZJZ)V
    .locals 4

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    const-string v2, "Impression uris cannot be null"

    invoke-static {p1, v2}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    const-string v3, "Impression uris cannot be empty"

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/utils/f;->a(ZLjava/lang/Object;)V

    .line 213
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/model/VastAd;->b:Ljava/util/List;

    .line 214
    iput-object p2, p0, Lcom/google/android/youtube/core/model/VastAd;->c:Ljava/lang/String;

    .line 215
    iput-object p3, p0, Lcom/google/android/youtube/core/model/VastAd;->d:Ljava/lang/String;

    .line 216
    iput-object p4, p0, Lcom/google/android/youtube/core/model/VastAd;->e:Ljava/lang/String;

    .line 217
    iput-object p5, p0, Lcom/google/android/youtube/core/model/VastAd;->f:Ljava/lang/String;

    .line 218
    iput-object p6, p0, Lcom/google/android/youtube/core/model/VastAd;->g:Ljava/lang/String;

    .line 219
    iput p7, p0, Lcom/google/android/youtube/core/model/VastAd;->h:I

    .line 220
    invoke-static {p8}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/model/VastAd;->i:Ljava/util/List;

    .line 221
    iput-object p9, p0, Lcom/google/android/youtube/core/model/VastAd;->j:Landroid/net/Uri;

    .line 222
    invoke-static {p10}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/model/VastAd;->k:Ljava/util/List;

    .line 223
    invoke-static {p11}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/model/VastAd;->l:Ljava/util/List;

    .line 224
    invoke-static/range {p12 .. p12}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/model/VastAd;->m:Ljava/util/List;

    .line 225
    invoke-static/range {p13 .. p13}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/model/VastAd;->n:Ljava/util/List;

    .line 226
    invoke-static/range {p14 .. p14}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/model/VastAd;->o:Ljava/util/List;

    .line 227
    invoke-static/range {p15 .. p15}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/model/VastAd;->p:Ljava/util/List;

    .line 228
    invoke-static/range {p16 .. p16}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/model/VastAd;->q:Ljava/util/List;

    .line 229
    invoke-static/range {p17 .. p17}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/model/VastAd;->r:Ljava/util/List;

    .line 230
    invoke-static/range {p18 .. p18}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/model/VastAd;->s:Ljava/util/List;

    .line 231
    invoke-static/range {p19 .. p19}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/model/VastAd;->t:Ljava/util/List;

    .line 232
    invoke-static/range {p20 .. p20}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/model/VastAd;->u:Ljava/util/List;

    .line 233
    invoke-static/range {p21 .. p21}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/model/VastAd;->v:Ljava/util/List;

    .line 234
    invoke-static/range {p22 .. p22}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/model/VastAd;->w:Ljava/util/List;

    .line 235
    invoke-static/range {p23 .. p23}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/model/VastAd;->x:Ljava/util/List;

    .line 236
    invoke-static/range {p24 .. p24}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/model/VastAd;->y:Ljava/util/List;

    .line 237
    invoke-static/range {p25 .. p25}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/model/VastAd;->z:Ljava/util/List;

    .line 238
    move/from16 v0, p26

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/VastAd;->A:Z

    .line 239
    move/from16 v0, p27

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/VastAd;->B:Z

    .line 240
    move-wide/from16 v0, p28

    iput-wide v0, p0, Lcom/google/android/youtube/core/model/VastAd;->C:J

    .line 241
    move/from16 v0, p30

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/VastAd;->D:Z

    .line 242
    return-void

    .line 212
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private static a(Landroid/os/Parcel;)Ljava/util/List;
    .locals 2

    .prologue
    .line 794
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 795
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 796
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/os/Parcel;)Ljava/util/List;
    .locals 2

    .prologue
    .line 800
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 801
    sget-object v1, Lcom/google/android/youtube/core/model/Stream;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 802
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Lcom/google/android/youtube/core/utils/a;)Z
    .locals 4

    .prologue
    .line 334
    invoke-interface {p1}, Lcom/google/android/youtube/core/utils/a;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/youtube/core/model/VastAd;->C:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 745
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 840
    if-nez p1, :cond_1

    .line 877
    :cond_0
    :goto_0
    return v0

    .line 843
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 846
    check-cast p1, Lcom/google/android/youtube/core/model/VastAd;

    .line 847
    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/VastAd;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 848
    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/VastAd;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 849
    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/VastAd;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 850
    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/VastAd;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 851
    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/VastAd;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 852
    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->i:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/VastAd;->i:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 853
    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->j:Landroid/net/Uri;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/VastAd;->j:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 854
    iget v1, p0, Lcom/google/android/youtube/core/model/VastAd;->h:I

    iget v2, p1, Lcom/google/android/youtube/core/model/VastAd;->h:I

    if-ne v1, v2, :cond_0

    .line 855
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/VastAd;->A:Z

    iget-boolean v2, p1, Lcom/google/android/youtube/core/model/VastAd;->A:Z

    if-ne v1, v2, :cond_0

    .line 856
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/VastAd;->B:Z

    iget-boolean v2, p1, Lcom/google/android/youtube/core/model/VastAd;->B:Z

    if-ne v1, v2, :cond_0

    .line 857
    iget-wide v1, p0, Lcom/google/android/youtube/core/model/VastAd;->C:J

    iget-wide v3, p1, Lcom/google/android/youtube/core/model/VastAd;->C:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 858
    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->b:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/VastAd;->b:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 859
    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->k:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/VastAd;->k:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 860
    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->l:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/VastAd;->l:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 861
    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->m:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/VastAd;->m:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 862
    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->n:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/VastAd;->n:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 863
    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->o:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/VastAd;->o:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 864
    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->p:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/VastAd;->p:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->q:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/VastAd;->q:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 866
    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->r:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/VastAd;->r:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 867
    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->s:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/VastAd;->s:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 868
    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->t:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/VastAd;->t:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 869
    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->u:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/VastAd;->u:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 870
    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->v:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/VastAd;->v:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 871
    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->w:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/VastAd;->w:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 872
    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->x:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/VastAd;->x:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 873
    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->y:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/VastAd;->y:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 874
    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->z:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/VastAd;->z:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 875
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VastAd: [adVideoId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoTitle= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 315
    const-string v1, ", adSystem = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 762
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 763
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 765
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 768
    iget v0, p0, Lcom/google/android/youtube/core/model/VastAd;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->i:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 770
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->j:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 771
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->k:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 772
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->l:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 773
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->m:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 774
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->n:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 775
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->o:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 776
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->p:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 777
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->q:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 778
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->r:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 779
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->s:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 780
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->t:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 781
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->u:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 782
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->v:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 783
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->w:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 784
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->x:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 785
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->y:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 786
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VastAd;->z:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 787
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/VastAd;->A:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/VastAd;->B:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 789
    iget-wide v3, p0, Lcom/google/android/youtube/core/model/VastAd;->C:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 790
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/VastAd;->D:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 791
    return-void

    :cond_0
    move v0, v2

    .line 787
    goto :goto_0

    :cond_1
    move v0, v2

    .line 788
    goto :goto_1

    :cond_2
    move v1, v2

    .line 790
    goto :goto_2
.end method
