.class public final Lcom/google/android/maps/driveabout/store/bn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/android/maps/driveabout/store/bv;

.field private c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/maps/driveabout/store/bn;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/store/bv;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/bn;->b:Lcom/google/android/maps/driveabout/store/bv;

    .line 57
    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/model/be;Lcom/google/android/maps/driveabout/model/f;ZLcom/google/android/maps/driveabout/store/bm;)V
    .locals 14

    .prologue
    .line 132
    new-instance v13, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v13, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 134
    const/4 v1, 0x0

    move v11, v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/be;->d()I

    move-result v1

    if-ge v11, v1, :cond_4

    .line 135
    invoke-virtual {p0, v11}, Lcom/google/android/maps/driveabout/model/be;->a(I)Lcom/google/android/maps/driveabout/model/j;

    move-result-object v1

    .line 136
    instance-of v2, v1, Lcom/google/android/maps/driveabout/model/ao;

    if-eqz v2, :cond_2

    .line 137
    check-cast v1, Lcom/google/android/maps/driveabout/model/ao;

    .line 138
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ao;->a()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v2

    .line 139
    invoke-virtual {p1, v2, v13}, Lcom/google/android/maps/driveabout/model/f;->a(Lcom/google/android/maps/driveabout/model/ag;Ljava/util/List;)V

    .line 141
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_0

    .line 142
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/driveabout/model/ag;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/store/bm;->a(Lcom/google/android/maps/driveabout/model/ao;Lcom/google/android/maps/driveabout/model/ag;)V

    .line 141
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 144
    :cond_0
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 134
    :cond_1
    :goto_2
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_0

    .line 145
    :cond_2
    if-eqz p2, :cond_1

    instance-of v2, v1, Lcom/google/android/maps/driveabout/model/x;

    if-eqz v2, :cond_1

    move-object v10, v1

    .line 149
    check-cast v10, Lcom/google/android/maps/driveabout/model/x;

    .line 150
    invoke-virtual {v10}, Lcom/google/android/maps/driveabout/model/x;->a()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v1

    .line 151
    invoke-virtual {p1, v1, v13}, Lcom/google/android/maps/driveabout/model/f;->a(Lcom/google/android/maps/driveabout/model/ag;Ljava/util/ArrayList;)V

    .line 152
    const/4 v1, 0x0

    new-array v9, v1, [I

    .line 154
    const/4 v1, 0x0

    move v12, v1

    :goto_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_3

    .line 155
    new-instance v1, Lcom/google/android/maps/driveabout/model/ao;

    .line 156
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/driveabout/model/ag;

    sget-object v3, Lcom/google/android/maps/driveabout/store/bn;->a:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    .line 157
    invoke-virtual {v10}, Lcom/google/android/maps/driveabout/model/x;->d()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/maps/driveabout/model/ao;-><init>(Lcom/google/android/maps/driveabout/model/ag;[Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/maps/driveabout/model/aq;III[I)V

    .line 158
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/driveabout/model/ag;

    .line 155
    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/store/bm;->a(Lcom/google/android/maps/driveabout/model/ao;Lcom/google/android/maps/driveabout/model/ag;)V

    .line 154
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto :goto_3

    .line 160
    :cond_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .line 163
    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/model/am;ZJ)Lcom/google/android/maps/driveabout/store/bm;
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 74
    .line 75
    invoke-static {p1}, Lcom/google/android/maps/driveabout/model/bh;->a(Lcom/google/android/maps/driveabout/model/am;)Lcom/google/android/maps/driveabout/model/bh;

    move-result-object v0

    const/16 v1, 0xe

    .line 74
    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/model/aw;->a(Lcom/google/android/maps/driveabout/model/bh;I)Ljava/util/ArrayList;

    move-result-object v5

    .line 76
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v2

    move v3, v0

    .line 80
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 81
    iget-object v7, p0, Lcom/google/android/maps/driveabout/store/bn;->b:Lcom/google/android/maps/driveabout/store/bv;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/aw;

    invoke-interface {v7, v0, v2}, Lcom/google/android/maps/driveabout/store/bv;->a(Lcom/google/android/maps/driveabout/model/aw;Z)Lcom/google/android/maps/driveabout/model/av;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {v5, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 85
    add-int/lit8 v3, v3, -0x1

    .line 80
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 91
    :cond_1
    if-lez v3, :cond_5

    .line 92
    new-instance v7, Lcom/google/android/maps/driveabout/store/c;

    invoke-direct {v7, v3}, Lcom/google/android/maps/driveabout/store/c;-><init>(I)V

    move v1, v2

    .line 94
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 95
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 97
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/bn;->b:Lcom/google/android/maps/driveabout/store/bv;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/aw;

    invoke-interface {v3, v0, v7}, Lcom/google/android/maps/driveabout/store/bv;->a(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/store/bt;)V

    .line 94
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 100
    :cond_3
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_7

    .line 101
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/store/c;->b()V

    .line 107
    :cond_4
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/store/c;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 111
    :cond_5
    iput-object v6, p0, Lcom/google/android/maps/driveabout/store/bn;->c:Ljava/util/List;

    .line 114
    new-instance v1, Lcom/google/android/maps/driveabout/store/bm;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/store/bm;-><init>()V

    .line 115
    new-instance v3, Lcom/google/android/maps/driveabout/model/f;

    invoke-direct {v3, p1}, Lcom/google/android/maps/driveabout/model/f;-><init>(Lcom/google/android/maps/driveabout/model/an;)V

    .line 116
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 117
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/av;

    .line 118
    instance-of v4, v0, Lcom/google/android/maps/driveabout/model/be;

    if-eqz v4, :cond_6

    .line 119
    check-cast v0, Lcom/google/android/maps/driveabout/model/be;

    invoke-static {v0, v3, p2, v1}, Lcom/google/android/maps/driveabout/store/bn;->a(Lcom/google/android/maps/driveabout/model/be;Lcom/google/android/maps/driveabout/model/f;ZLcom/google/android/maps/driveabout/store/bm;)V

    .line 116
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 103
    :cond_7
    invoke-virtual {v7, p3, p4}, Lcom/google/android/maps/driveabout/store/c;->a(J)Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v4

    .line 122
    :goto_3
    return-object v0

    :cond_8
    move-object v0, v1

    goto :goto_3
.end method
