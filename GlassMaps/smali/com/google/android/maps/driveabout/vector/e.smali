.class public final Lcom/google/android/maps/driveabout/vector/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lcom/google/android/maps/driveabout/model/aw;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/vector/f;

.field private final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    new-instance v0, Lcom/google/android/maps/driveabout/model/aw;

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/maps/driveabout/model/aw;-><init>(III)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/e;->b:Lcom/google/android/maps/driveabout/model/aw;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/maps/driveabout/vector/f;)V
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/e;->c:Ljava/util/Map;

    .line 191
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/e;->a:Lcom/google/android/maps/driveabout/vector/f;

    .line 192
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/vector/e;
    .locals 15

    .prologue
    .line 137
    if-nez p0, :cond_0

    .line 138
    const/4 v0, 0x0

    .line 187
    :goto_0
    return-object v0

    .line 140
    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/vector/f;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/f;-><init>()V

    .line 141
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v9

    .line 142
    const/4 v1, 0x0

    move v8, v1

    :goto_1
    if-ge v8, v9, :cond_5

    .line 143
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v8}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v10

    .line 145
    const/4 v1, 0x3

    .line 146
    invoke-virtual {v10, v1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v3

    .line 147
    const/4 v1, 0x2

    invoke-virtual {v10, v1}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v4

    .line 148
    const/4 v1, 0x5

    .line 149
    invoke-virtual {v10, v1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v6

    .line 151
    if-lez v4, :cond_1

    .line 152
    new-array v1, v4, [I

    .line 153
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_2

    .line 154
    const/4 v5, 0x2

    .line 155
    invoke-virtual {v10, v5, v2}, Lcom/google/googlenav/common/io/b/a;->c(II)I

    move-result v5

    aput v5, v1, v2

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 159
    :cond_1
    add-int/lit8 v1, v3, 0x1

    sub-int/2addr v1, v6

    new-array v1, v1, [I

    .line 160
    const/4 v2, 0x0

    :goto_3
    sub-int v4, v3, v6

    if-gt v2, v4, :cond_2

    .line 161
    add-int v4, v2, v6

    aput v4, v1, v2

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 164
    :cond_2
    const/4 v2, 0x1

    .line 165
    invoke-virtual {v10, v2}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v2

    .line 166
    new-instance v5, Lcom/google/android/maps/driveabout/vector/d;

    invoke-direct {v5, v1, v6, v2, v3}, Lcom/google/android/maps/driveabout/vector/d;-><init>([IIII)V

    .line 169
    const/4 v1, 0x4

    .line 170
    invoke-virtual {v10, v1}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v11

    .line 171
    const/4 v1, 0x0

    move v7, v1

    :goto_4
    if-ge v7, v11, :cond_4

    .line 172
    const/4 v1, 0x4

    .line 173
    invoke-virtual {v10, v1, v7}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v12

    .line 174
    const/4 v1, 0x2

    invoke-virtual {v12, v1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v1

    .line 175
    const/4 v2, 0x3

    invoke-virtual {v12, v2}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v2

    .line 176
    const/4 v3, 0x4

    invoke-virtual {v12, v3}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v3

    .line 177
    const/4 v4, 0x1

    invoke-virtual {v12, v4}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v13

    .line 178
    new-instance v14, Lcom/google/android/maps/driveabout/model/aw;

    invoke-direct {v14, v1, v2, v3}, Lcom/google/android/maps/driveabout/model/aw;-><init>(III)V

    .line 179
    const/4 v1, 0x0

    move v6, v1

    :goto_5
    if-ge v6, v13, :cond_3

    .line 180
    const/4 v1, 0x1

    .line 181
    invoke-virtual {v12, v1, v6}, Lcom/google/googlenav/common/io/b/a;->c(II)I

    move-result v1

    .line 180
    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->getByTileFlags(I)Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    move-result-object v4

    .line 182
    invoke-virtual {v14}, Lcom/google/android/maps/driveabout/model/aw;->b()I

    move-result v1

    invoke-virtual {v14}, Lcom/google/android/maps/driveabout/model/aw;->c()I

    move-result v2

    .line 183
    invoke-virtual {v14}, Lcom/google/android/maps/driveabout/model/aw;->a()I

    move-result v3

    .line 182
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/f;->a(IIILcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;Lcom/google/android/maps/driveabout/vector/d;)V

    .line 179
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_5

    .line 171
    :cond_3
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_4

    .line 142
    :cond_4
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto/16 :goto_1

    .line 187
    :cond_5
    new-instance v1, Lcom/google/android/maps/driveabout/vector/e;

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/vector/e;-><init>(Lcom/google/android/maps/driveabout/vector/f;)V

    move-object v0, v1

    goto/16 :goto_0
.end method
