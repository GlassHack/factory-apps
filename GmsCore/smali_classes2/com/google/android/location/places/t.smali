.class public final Lcom/google/android/location/places/t;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/location/m/a/bl;)Lcom/google/android/gms/location/places/AutocompletePrediction;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 41
    if-nez p0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-object v0

    .line 45
    :cond_1
    iget-object v2, p0, Lcom/google/android/location/m/a/bl;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 49
    iget-object v3, p0, Lcom/google/android/location/m/a/bl;->a:Ljava/lang/String;

    .line 50
    iget-object v4, p0, Lcom/google/android/location/m/a/bl;->b:Ljava/lang/String;

    .line 52
    iget-object v2, p0, Lcom/google/android/location/m/a/bl;->c:[Ljava/lang/String;

    array-length v5, v2

    .line 53
    iget-object v2, p0, Lcom/google/android/location/m/a/bl;->d:[Lcom/google/android/location/m/a/bn;

    array-length v6, v2

    .line 55
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 56
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 59
    :goto_1
    if-ge v2, v5, :cond_3

    .line 60
    iget-object v9, p0, Lcom/google/android/location/m/a/bl;->c:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 72
    :cond_2
    iget-object v5, v2, Lcom/google/android/location/m/a/bn;->a:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 73
    iget-object v2, v2, Lcom/google/android/location/m/a/bn;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 74
    invoke-static {v5, v2}, Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;->a(II)Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v1, v1, 0x1

    :cond_3
    if-ge v1, v6, :cond_4

    .line 64
    iget-object v2, p0, Lcom/google/android/location/m/a/bl;->d:[Lcom/google/android/location/m/a/bn;

    aget-object v2, v2, v1

    .line 67
    iget-object v5, v2, Lcom/google/android/location/m/a/bn;->a:Ljava/lang/Integer;

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcom/google/android/location/m/a/bn;->b:Ljava/lang/Integer;

    if-nez v5, :cond_2

    goto :goto_0

    .line 77
    :cond_4
    invoke-static {v3, v4, v7, v8}, Lcom/google/android/gms/location/places/AutocompletePrediction;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/google/android/gms/location/places/AutocompletePrediction;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/google/android/location/m/a/ap;)Lcom/google/android/gms/location/places/internal/PlaceImpl;
    .locals 33

    .prologue
    .line 122
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/m/a/ap;->a:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 123
    const-string v6, "Places"

    const/4 v7, 0x6

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 124
    const-string v6, "Places"

    const-string v7, "received place lacks id"

    invoke-static {v6, v7}, Lcom/google/android/location/o/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    const/4 v6, 0x0

    .line 244
    :goto_0
    return-object v6

    .line 129
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/m/a/ap;->l:Ljava/lang/Long;

    if-nez v6, :cond_3

    .line 130
    const-string v6, "Places"

    const/4 v7, 0x6

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 131
    const-string v6, "Places"

    const-string v7, "received place lacks timestamp"

    invoke-static {v6, v7}, Lcom/google/android/location/o/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 136
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/m/a/ap;->b:[Ljava/lang/String;

    array-length v7, v6

    .line 137
    if-nez v7, :cond_5

    .line 138
    const-string v6, "Places"

    const/4 v7, 0x6

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 139
    const-string v6, "Places"

    const-string v7, "received place with no types"

    invoke-static {v6, v7}, Lcom/google/android/location/o/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_4
    const/4 v6, 0x0

    goto :goto_0

    .line 143
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/m/a/ap;->e:Lcom/google/android/location/m/a/au;

    if-nez v6, :cond_7

    .line 144
    const-string v6, "Places"

    const/4 v7, 0x6

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 145
    const-string v6, "Places"

    const-string v7, "received place lacks geometry"

    invoke-static {v6, v7}, Lcom/google/android/location/o/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_6
    const/4 v6, 0x0

    goto :goto_0

    .line 150
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/m/a/ap;->e:Lcom/google/android/location/m/a/au;

    iget-object v6, v6, Lcom/google/android/location/m/a/au;->a:Lcom/google/android/location/m/a/ae;

    if-nez v6, :cond_9

    .line 151
    const-string v6, "Places"

    const/4 v7, 0x6

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 152
    const-string v6, "Places"

    const-string v7, "received place lacks latlng"

    invoke-static {v6, v7}, Lcom/google/android/location/o/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_8
    const/4 v6, 0x0

    goto :goto_0

    .line 157
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/m/a/ap;->a:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 158
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/m/a/ap;->l:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 160
    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 161
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_a

    .line 163
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/location/m/a/ap;->b:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-static {v8}, Lcom/google/android/gms/location/places/PlaceType;->a(Ljava/lang/String;)Lcom/google/android/gms/location/places/PlaceType;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 166
    :cond_a
    invoke-static/range {p0 .. p0}, Lcom/google/android/location/places/t;->b(Lcom/google/android/location/m/a/ap;)Landroid/os/Bundle;

    move-result-object v23

    .line 167
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/location/m/a/ap;->e:Lcom/google/android/location/m/a/au;

    .line 168
    iget-object v6, v9, Lcom/google/android/location/m/a/au;->a:Lcom/google/android/location/m/a/ae;

    invoke-static {v6}, Lcom/google/android/location/places/t;->a(Lcom/google/android/location/m/a/ae;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v24

    .line 170
    const/4 v6, 0x0

    .line 171
    iget-object v7, v9, Lcom/google/android/location/m/a/au;->b:Ljava/lang/Integer;

    if-eqz v7, :cond_b

    .line 172
    iget-object v6, v9, Lcom/google/android/location/m/a/au;->b:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    .line 175
    :cond_b
    const/4 v7, 0x0

    .line 176
    iget-object v8, v9, Lcom/google/android/location/m/a/au;->c:Lcom/google/android/location/m/a/bq;

    if-eqz v8, :cond_c

    .line 177
    iget-object v7, v9, Lcom/google/android/location/m/a/au;->c:Lcom/google/android/location/m/a/bq;

    iget-object v8, v7, Lcom/google/android/location/m/a/bq;->a:Lcom/google/android/location/m/a/ae;

    invoke-static {v8}, Lcom/google/android/location/places/t;->a(Lcom/google/android/location/m/a/ae;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v8

    iget-object v7, v7, Lcom/google/android/location/m/a/bq;->b:Lcom/google/android/location/m/a/ae;

    invoke-static {v7}, Lcom/google/android/location/places/t;->a(Lcom/google/android/location/m/a/ae;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v10

    new-instance v7, Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-direct {v7, v8, v10}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 180
    :cond_c
    const-string v8, ""

    .line 181
    iget-object v10, v9, Lcom/google/android/location/m/a/au;->d:Ljava/lang/String;

    if-eqz v10, :cond_d

    .line 182
    iget-object v8, v9, Lcom/google/android/location/m/a/au;->d:Ljava/lang/String;

    .line 185
    :cond_d
    const/4 v9, 0x0

    .line 186
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/location/m/a/ap;->f:Ljava/lang/String;

    if-eqz v10, :cond_e

    .line 187
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/location/m/a/ap;->f:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 190
    :cond_e
    const/4 v10, 0x0

    .line 191
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/location/m/a/ap;->h:Ljava/lang/Boolean;

    if-eqz v11, :cond_f

    .line 192
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/location/m/a/ap;->h:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 195
    :cond_f
    const/high16 v11, -0x40800000    # -1.0f

    .line 196
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/location/m/a/ap;->j:Ljava/lang/Integer;

    if-eqz v12, :cond_10

    .line 197
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/location/m/a/ap;->j:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x41200000    # 10.0f

    div-float/2addr v11, v12

    .line 200
    :cond_10
    const/4 v12, -0x1

    .line 201
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/location/m/a/ap;->k:Ljava/lang/Integer;

    if-eqz v13, :cond_11

    .line 202
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/location/m/a/ap;->k:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 205
    :cond_11
    const/16 v18, 0x0

    .line 206
    const/16 v17, 0x0

    .line 207
    const/16 v16, 0x0

    .line 208
    const/4 v15, 0x0

    .line 209
    const/4 v14, 0x0

    .line 210
    const/4 v13, 0x0

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/m/a/ap;->c:[Lcom/google/android/location/m/a/ax;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    if-lez v25, :cond_12

    .line 212
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/location/m/a/ap;->c:[Lcom/google/android/location/m/a/ax;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    .line 213
    iget-object v0, v13, Lcom/google/android/location/m/a/ax;->a:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 215
    iget-object v0, v13, Lcom/google/android/location/m/a/ax;->b:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 216
    iget-object v0, v13, Lcom/google/android/location/m/a/ax;->c:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 217
    iget-object v15, v13, Lcom/google/android/location/m/a/ax;->d:Ljava/lang/String;

    .line 218
    iget-object v14, v13, Lcom/google/android/location/m/a/ax;->e:Ljava/lang/String;

    .line 219
    iget-object v13, v13, Lcom/google/android/location/m/a/ax;->g:[Ljava/lang/String;

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    move-object/from16 v28, v18

    .line 222
    :goto_2
    new-instance v27, Lcom/google/android/gms/location/places/internal/f;

    invoke-direct/range {v27 .. v27}, Lcom/google/android/gms/location/places/internal/f;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/google/android/gms/location/places/internal/f;->b:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/google/android/gms/location/places/internal/f;->n:Ljava/util/List;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/google/android/gms/location/places/internal/f;->c:Landroid/os/Bundle;

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/google/android/gms/location/places/internal/f;->d:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/google/android/gms/location/places/internal/f;->o:Ljava/lang/String;

    move-object/from16 v0, v27

    iput-object v15, v0, Lcom/google/android/gms/location/places/internal/f;->p:Ljava/lang/String;

    move-object/from16 v0, v27

    iput-object v14, v0, Lcom/google/android/gms/location/places/internal/f;->q:Ljava/lang/String;

    move-object/from16 v0, v27

    iput-object v13, v0, Lcom/google/android/gms/location/places/internal/f;->r:Ljava/util/List;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/google/android/gms/location/places/internal/f;->e:Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, v27

    iput v6, v0, Lcom/google/android/gms/location/places/internal/f;->f:F

    move-object/from16 v0, v27

    iput-object v7, v0, Lcom/google/android/gms/location/places/internal/f;->g:Lcom/google/android/gms/maps/model/LatLngBounds;

    move-object/from16 v0, v27

    iput-object v8, v0, Lcom/google/android/gms/location/places/internal/f;->h:Ljava/lang/String;

    move-object/from16 v0, v27

    iput-object v9, v0, Lcom/google/android/gms/location/places/internal/f;->i:Landroid/net/Uri;

    move-object/from16 v0, v27

    iput-boolean v10, v0, Lcom/google/android/gms/location/places/internal/f;->j:Z

    move-object/from16 v0, v27

    iput v11, v0, Lcom/google/android/gms/location/places/internal/f;->k:F

    move-object/from16 v0, v27

    iput v12, v0, Lcom/google/android/gms/location/places/internal/f;->l:I

    move-wide/from16 v0, v20

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/google/android/gms/location/places/internal/f;->m:J

    sget-object v6, Lcom/google/android/location/x;->e:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v6}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object/from16 v0, v27

    iput-boolean v6, v0, Lcom/google/android/gms/location/places/internal/f;->s:Z

    new-instance v6, Lcom/google/android/gms/location/places/internal/PlaceImpl;

    move-object/from16 v0, v27

    iget v7, v0, Lcom/google/android/gms/location/places/internal/f;->a:I

    move-object/from16 v0, v27

    iget-object v8, v0, Lcom/google/android/gms/location/places/internal/f;->b:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v9, v0, Lcom/google/android/gms/location/places/internal/f;->n:Ljava/util/List;

    move-object/from16 v0, v27

    iget-object v10, v0, Lcom/google/android/gms/location/places/internal/f;->c:Landroid/os/Bundle;

    move-object/from16 v0, v27

    iget-object v11, v0, Lcom/google/android/gms/location/places/internal/f;->d:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v12, v0, Lcom/google/android/gms/location/places/internal/f;->o:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v13, v0, Lcom/google/android/gms/location/places/internal/f;->p:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v14, v0, Lcom/google/android/gms/location/places/internal/f;->q:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v15, v0, Lcom/google/android/gms/location/places/internal/f;->r:Ljava/util/List;

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/google/android/gms/location/places/internal/f;->e:Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v16, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/google/android/gms/location/places/internal/f;->f:F

    move/from16 v17, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/google/android/gms/location/places/internal/f;->g:Lcom/google/android/gms/maps/model/LatLngBounds;

    move-object/from16 v18, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/google/android/gms/location/places/internal/f;->h:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/google/android/gms/location/places/internal/f;->i:Landroid/net/Uri;

    move-object/from16 v20, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/google/android/gms/location/places/internal/f;->j:Z

    move/from16 v21, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/google/android/gms/location/places/internal/f;->k:F

    move/from16 v22, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/google/android/gms/location/places/internal/f;->l:I

    move/from16 v23, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/google/android/gms/location/places/internal/f;->m:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/google/android/gms/location/places/internal/f;->s:Z

    move/from16 v26, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/google/android/gms/location/places/internal/f;->d:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/google/android/gms/location/places/internal/f;->o:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/google/android/gms/location/places/internal/f;->p:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/google/android/gms/location/places/internal/f;->q:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/google/android/gms/location/places/internal/f;->r:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    move-object/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/location/places/internal/PlaceLocalization;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/location/places/internal/PlaceLocalization;

    move-result-object v27

    invoke-direct/range {v6 .. v27}, Lcom/google/android/gms/location/places/internal/PlaceImpl;-><init>(ILjava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Landroid/net/Uri;ZFIJZLcom/google/android/gms/location/places/internal/PlaceLocalization;)V

    .line 242
    new-instance v7, Ljava/util/Locale;

    move-object/from16 v0, v28

    invoke-direct {v7, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->a(Ljava/util/Locale;)V

    goto/16 :goto_0

    :cond_12
    move-object/from16 v28, v18

    goto/16 :goto_2
.end method

.method private static a(Lcom/google/android/location/m/a/ae;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 8

    .prologue
    const-wide v6, 0x416312d000000000L    # 1.0E7

    .line 389
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcom/google/android/location/m/a/ae;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v2, v1

    div-double/2addr v2, v6

    iget-object v1, p0, Lcom/google/android/location/m/a/ae;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v4, v1

    div-double/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method static a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/location/m/a/ae;
    .locals 6

    .prologue
    const-wide v4, 0x416312d000000000L    # 1.0E7

    .line 365
    new-instance v0, Lcom/google/android/location/m/a/ae;

    invoke-direct {v0}, Lcom/google/android/location/m/a/ae;-><init>()V

    .line 366
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/m/a/ae;->a:Ljava/lang/Integer;

    .line 367
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/m/a/ae;->b:Ljava/lang/Integer;

    .line 368
    return-object v0
.end method

.method private static b(Lcom/google/android/location/m/a/ap;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 372
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 374
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/location/m/a/ap;->d:[Lcom/google/android/location/m/a/ar;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 375
    iget-object v2, p0, Lcom/google/android/location/m/a/ap;->d:[Lcom/google/android/location/m/a/ar;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/google/android/location/m/a/ar;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/location/m/a/ap;->d:[Lcom/google/android/location/m/a/ar;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/google/android/location/m/a/ar;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    :cond_0
    return-object v1
.end method
